#!/bin/bash -eu
CFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -fuse-ld=lld"
CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=cfi -flto -fvisibility=hidden -stdlib=libc++ -fuse-ld=lld"
    
cd $SRC/libsrtp
autoreconf -ivf
./configure
LIBFUZZER="$LIB_FUZZING_ENGINE" make srtp-fuzzer
zip -r srtp-fuzzer_seed_corpus.zip fuzzer/corpus
cp $SRC/libsrtp/fuzzer/srtp-fuzzer $OUT
cp srtp-fuzzer_seed_corpus.zip $OUT
