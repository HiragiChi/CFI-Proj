#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
#!/bin/bash -eu
# Copyright 2016 Google Inc.
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

if [ "$SANITIZER" != 'undefined' ]; then
	cd $SRC/qubes-os/app-linux-input-proxy

	make -C fuzz
	cp fuzz/*_fuzzer $OUT/
	cp fuzz/*_seed_corpus.zip $OUT/
	cp fuzz/*.options $OUT/
fi

cd $SRC/qubes-os/qubes-core-qubesdb

make -C fuzz
cp fuzz/*_fuzzer $OUT/
cp fuzz/*_seed_corpus.zip $OUT/
cp fuzz/*.options $OUT/

cd $SRC/qubes-os/qubes-core-qrexec

make -C fuzz
cp fuzz/*_fuzzer $OUT/
cp fuzz/*_seed_corpus.zip $OUT/
cp fuzz/*.options $OUT/
