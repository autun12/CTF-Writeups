#!/bin/bash

./wasm -d exp.wat -o exp.wasm
./d8 --sandbox-testing exp.js