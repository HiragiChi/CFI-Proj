#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
# Copyright 2018 Google Inc.
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
mkdir -p build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX="$WORK" \
      -DBUILD_SHARED_LIBS=OFF \
      -DBUILD_CLAR=OFF \
      -DUSE_HTTPS=OFF \
      -DUSE_SSH=OFF \
      -DUSE_BUNDLED_ZLIB=ON \

make -j$(nproc)
make install
for fuzzer in ../fuzzers/*_fuzzer.c
do
    fuzzer_name=$(basename "${fuzzer%.c}")

    $CC $CFLAGS -c \
        -I./src -I./src/util -I./include/ -I./include/git2 \
        -I../src/libgit2 -I../src/util -I../include \
        "$fuzzer" -o "$WORK/$fuzzer_name.o"

    $CXX $CXXFLAGS -std=c++11 -o "$OUT/$fuzzer_name" \
        $LIB_FUZZING_ENGINE "$WORK/$fuzzer_name.o" "$WORK/lib/libgit2.a"

    zip -j "$OUT/${fuzzer_name}_seed_corpus.zip" \
        ../fuzzers/corpora/${fuzzer_name%_fuzzer}/*
done
