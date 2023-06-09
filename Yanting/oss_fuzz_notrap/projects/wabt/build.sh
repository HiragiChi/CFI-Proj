#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
# Copyright 2019 Google Inc.
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

# build project
mkdir build
cd build
cmake ..
cmake --build . --parallel
cd ..

for fuzzers in $(find $SRC -name '*_fuzzer.cc' | grep -v wasm_objdump_fuzzer); do
  fuzz_basename=$(basename -s .cc $fuzzers)
  $CXX $CXXFLAGS -std=c++11 -I. -Ibuild -Iinclude -Ibuild/include \
  $fuzzers $LIB_FUZZING_ENGINE ./build/libwabt.a \
  -o $OUT/$fuzz_basename
done

# wasm_objdump_fuzzer needs to be linked together with binary-reader-objdump.cc
$CXX $CXXFLAGS -std=c++11 -I. -Ibuild -Ibuild/include -Iinclude /src/wasm_objdump_fuzzer.cc \
        ./src/binary-reader-objdump.cc $LIB_FUZZING_ENGINE ./build/libwabt.a \
        -o $OUT/wasm_objdump_fuzzer


