#!/bin/bash
cd /app
exec /lib64/ld-linux-x86-64.so.2 ./chall "$@"
