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
# Copyright 2021 Google LLC
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

cd postfix
make makefiles CCARGS="${CFLAGS}"
make
BASE=$PWD

# Compile fuzzers
cd ${BASE}/src/global
$CC $CFLAGS -DHAS_DEV_URANDOM -DSNAPSHOT -UUSE_DYNAMIC_LIBS -DDEF_SHLIB_DIR=\"no\" \
               -UUSE_DYNAMIC_MAPS -I. -I../../include -DNO_EAI -DDEF_SMTPUTF8_ENABLE=\"no\" \
                -g -O -DLINUX4 -Wformat -Wno-comment -fno-common -c $SRC/fuzz_tok822.c
$CC $CFLAGS -DHAS_DEV_URANDOM -DSNAPSHOT -UUSE_DYNAMIC_LIBS -DDEF_SHLIB_DIR=\"no\" \
               -UUSE_DYNAMIC_MAPS -I. -I../../include -DNO_EAI -DDEF_SMTPUTF8_ENABLE=\"no\" \
                -g -O -DLINUX4 -Wformat -Wno-comment -fno-common -c $SRC/fuzz_mime.c

# Link fuzzers
cd ${BASE}
$CXX $CXXFLAGS $LIB_FUZZING_ENGINE ./src/global/fuzz_tok822.o \
  -o $OUT/fuzz_tok822 ./lib/libglobal.a ./lib/libutil.a
$CXX $CXXFLAGS $LIB_FUZZING_ENGINE ./src/global/fuzz_mime.o -o $OUT/fuzz_mime \
  ./lib/libglobal.a ./lib/libutil.a -ldb -lnsl
