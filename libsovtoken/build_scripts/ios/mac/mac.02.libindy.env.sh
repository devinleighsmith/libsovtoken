#!/bin/sh

#3) Setup environment variables:

export PKG_CONFIG_ALLOW_CROSS=1
export CARGO_INCREMENTAL=1
export RUST_LOG=indy=trace
export RUST_TEST_THREADS=1

#4) Setup OPENSSL_DIR variable: path to installed openssl library

if [ -z "${OPENSSL_DIR}" ]; then
    export OPENSSL_DIR=$(brew --prefix openssl)
    echo "OPENSSL_DIR not specified, using $OPENSSL_DIR"
fi
