from pwn import *
import os
import base64

HOST = "nc.deadsec.quest"

PORT = 30835

file_path = 'exp.js'

def start_binary():
    return remote(HOST, PORT)

file_size = os.path.getsize(file_path)

with open(file_path, "r") as f:
    data = f.read()

p = start_binary()
p.recvuntil(b"(bytes): ")
p.sendline(str(file_size).encode())
print(p.recvuntil(b"bytes]\n\n"))
encoded_exp = base64.b64encode(data.encode())
p.sendline(encoded_exp)
p.sendline(b"<EOF>")
print(p.recvall().decode())