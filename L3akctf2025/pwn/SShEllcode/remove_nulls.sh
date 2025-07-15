#!/bin/bash
nasm -felf64 -o sse2_paddq_decoder.o encode.nasm
for i in $(objdump -d sse2_paddq_decoder.o |grep "^ " |cut -f2); do echo -n ''$i; done; echo