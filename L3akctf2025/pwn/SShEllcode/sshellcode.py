from capstone import *
from capstone.x86 import *
import ctypes

def do_thing(code):
    md = Cs(CS_ARCH_X86, CS_MODE_64)
    md.detail = True

    total_len = len(code)
    consumed = 0

    if len(code) > 0x200:
        exit("Too much stuff")

    for insn in md.disasm(code, 0):
        if X86_GRP_SSE1 not in insn.groups and X86_GRP_SSE2 not in insn.groups:
            exit("Whats that fancy instructions")
        for op in insn.operands:
            if op.type == CS_OP_MEM:
                print(insn)
                exit("No memory")
        if insn.id == X86_INS_MASKMOVDQU:
            exit("That is a very weird instruction")
        
        consumed += insn.size

    if consumed != total_len:
        exit("I dont know those bytes")
    
    libc = ctypes.CDLL("libc.so.6")
    libc.mmap.restype = ctypes.c_void_p
    libc.mmap.argtypes = [ctypes.c_void_p, ctypes.c_size_t, ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_size_t]
    addr = libc.mmap(ctypes.c_void_p(0x13370000), 0x1000, 0x7, 0x32, -1, 0)
    print(hex(addr))
    if addr != 0x13370000:
        exit("Oops")
    
    ptr = ctypes.POINTER(ctypes.c_char)
    map = ctypes.cast(addr, ptr)
    for ind, i in enumerate(code):
        map[ind] = i
        print(map[ind])
    
    func = ctypes.CFUNCTYPE(ctypes.c_void_p)(addr)
    func()

    exit(1)

do_thing(bytes.fromhex(input()))
