#!/bin/bash

set -e

LINUX_TARGET=x86_64-unknown-linux-gnu
OUT_NAME=tencent-mars-xlog-util

# rustup target add x86_64-unknown-linux-gnu

VERSION="v0.1.4"
CUR_DIR=$PWD

function usage() {
    echo "Usage:"
    echo ""
    echo "  ./build_linux.sh --out dir"
    exit 0
}

if [ ! -n "$1" ]; then
    usage
elif [ ! -n "$2" ]; then
    usage
elif [ "$1" == "--out" ]; then

    rustup target add $LINUX_TARGET

    cargo build --release --target=$LINUX_TARGET

    mkdir -p $2
    echo $CUR_DIR
    cp ./target/$LINUX_TARGET/release/$OUT_NAME $2/$OUT_NAME
    cd $2
    tar -czf "${OUT_NAME}-linux-x86_64-${VERSION}-binaries.tar.gz" $OUT_NAME
    cd $CUR_DIR

fi
