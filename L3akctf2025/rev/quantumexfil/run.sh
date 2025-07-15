#!/bin/bash

# In-case you need help running the challenge, here is a wrapper.

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <original.jpg> <flag.bin> <output.jpg>"
    exit 1
fi

ORIG_PATH=$(realpath "$1")
FLAG_PATH=$(realpath "$2")
OUT_PATH=$(realpath "$3")

docker build -t quant-chal .

docker run --rm -v "$(dirname "$ORIG_PATH"):/work" \
    quant-chal "/work/$(basename "$ORIG_PATH")" \
    "/work/$(basename "$FLAG_PATH")" \
    "/work/$(basename "$OUT_PATH")"