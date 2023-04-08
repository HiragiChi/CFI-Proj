#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
CXX=clang++
    
#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi-icall -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi-icall -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################################

SRC_SUBDIR=""
#MVN_FLAGS="-Djavac.src.version=17 -Djavac.target.version=17 -DskipTests -Drt.equinox.binaries.loc=${SRC}/equinox.binaries"
MVN_FLAGS="-DskipTests -Drt.equinox.binaries.loc=${SRC}/equinox.binaries -Pbuild-individual-bundles -Pbree-libs -Papi-check -Dcompare-version-with-baselines.skip=false -Dproject.build.sourceEncoding=UTF-8 -Dmaven.test.failure.ignore=true"
ALL_JARS=""

# Install the build servers' jazzer-api into the maven repository.
pushd "/tmp"
	${MVN} install:install-file -Dfile=${JAZZER_API_PATH} \
		-DgroupId="com.code-intelligence" \
		-DartifactId="jazzer-api" \
		-Dversion="0.14.0" \
		-Dpackaging=jar
popd

# Build needs to be run in the CVSROOT
pushd "${SRC}/${LIBRARY_NAME}/${SRC_SUBDIR}"
	${MVN} install ${MVN_FLAGS}
popd

# ... while the subprojects have varying versions
pushd "${SRC}/${LIBRARY_NAME}/bundles/org.eclipse.osgi"
	CURRENT_VERSION=$(${MVN} org.apache.maven.plugins:maven-help-plugin:3.2.0:evaluate -Dexpression=project.version -q -DforceStdout)
popd

pushd "${SRC}/${LIBRARY_NAME}-fuzzer"
	${MVN} package -DfuzzedLibaryVersion="${CURRENT_VERSION}" ${MVN_FLAGS}
	install -v target/${LIBRARY_NAME}-fuzzer-${CURRENT_VERSION}.jar ${OUT}/${LIBRARY_NAME}-fuzzer-${CURRENT_VERSION}.jar
	ALL_JARS="${ALL_JARS} ${LIBRARY_NAME}-fuzzer-${CURRENT_VERSION}.jar"
popd



# The classpath at build-time includes the project jars in $OUT as well as the
# Jazzer API.
BUILD_CLASSPATH=$(echo $ALL_JARS | xargs printf -- "$OUT/%s:"):$JAZZER_API_PATH

# All .jar and .class files lie in the same directory as the fuzzer at runtime.
RUNTIME_CLASSPATH=$(echo $ALL_JARS | xargs printf -- "\$this_dir/%s:"):\$this_dir

MVN_FUZZERS_PREFIX="src/main/java"

for fuzzer in $(find ${SRC} -name '*Fuzzer.java'); do
	# Find our fuzzer inside the maven structure
	stripped_path=$(echo ${fuzzer} | sed \
		-e 's|^.*src/main/java/\(.*\).java$|\1|' \
		-e 's|^.*src/test/java/\(.*\).java$|\1|' \
	);
	# The .java suffix was stripped by sed.
	if (echo ${stripped_path} | grep ".java$"); then
		continue;
	fi
	
	fuzzer_basename=$(basename -s .java $fuzzer)
	fuzzer_classname=$(echo ${stripped_path} | sed 's|/|.|g');
	
	# Create an execution wrapper that executes Jazzer with the correct arguments.
	
	echo "#!/bin/sh
# LLVMFuzzerTestOneInput Magic String required for infra/base-images/base-runner/test_all.py. DO NOT REMOVE


this_dir=\$(dirname \"\$0\")
LD_LIBRARY_PATH=\"\$JVM_LD_LIBRARY_PATH\":\$this_dir \
\$this_dir/jazzer_driver --agent_path=\$this_dir/jazzer_agent_deploy.jar \
--cp=${RUNTIME_CLASSPATH} \
--target_class=${fuzzer_classname} \
--jvm_args=\"-Xmx2048m\" \
\$@" > $OUT/${fuzzer_basename}
	chmod u+x $OUT/${fuzzer_basename}
done