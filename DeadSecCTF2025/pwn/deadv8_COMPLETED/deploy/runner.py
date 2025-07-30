import sys
import subprocess
import os
import base64
import binascii
from datetime import datetime


filename = f"js_{datetime.now().strftime('%Y%m%d_%H%M%S')}.js"

while True:
    try:
        limit = int(input("Enter maximum size of decoded JS file (bytes): "))
        if limit > 0:
            break
        print("[!] Size must be greater than zero.", flush=True)
    except ValueError:
        print("[!] Please enter a valid number.", flush=True)

print(f"\nPaste base64-encoded JavaScript (end input with '<EOF>')\n[Max decoded size: {limit} bytes]\n", flush=True)

written = 0
with open(filename, "wb") as out:
    for line in sys.stdin:
        if "<EOF>" in line:
            print("\n[+] End of input detected.\n", flush=True)
            break

        line = line.strip()
        if not line:
            continue

        try:
            data = base64.b64decode(line, validate=True)
        except binascii.Error:
            print("[!] Invalid base64 data encountered. Aborting.", flush=True)
            sys.exit(1)

        if written + len(data) > limit:
            print(f"[!] Decoded data exceeds limit ({written + len(data)} > {limit}).", flush=True)
            sys.exit(1)

        out.write(data)
        written += len(data)


result = subprocess.run(["./d8", "--sandbox-testing", filename])

os.remove(filename)