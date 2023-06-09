#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
# Copyright 2020 Google Inc.
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

CFLAGS="${CFLAGS} -fno-sanitize=integer-divide-by-zero,float-divide-by-zero"
CXXFLAGS="${CXXFLAGS} -fno-sanitize=integer-divide-by-zero,float-divide-by-zero"

# build project
cmake . -DBUILD_SHARED_LIBS=OFF  -DENABLE_OPENMP=OFF
make -j$(nproc)

# install
make install
ldconfig

# build fuzzers
MU_CXXFLAGS=$(pkg-config muparser --cflags)
MU_LIBS=$(pkg-config muparser --libs)

$CXX -std=c++11 $CXXFLAGS -I. \
     $MU_CXXFLAGS $MU_LIBS \
     $SRC/set_eval_fuzzer.cc -o $OUT/set_eval_fuzzer \
     $LIB_FUZZING_ENGINE libmuparser.a
