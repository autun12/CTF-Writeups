import subprocess
import sys

BINARY = "./chall"
MAX_LEN = 0xff

# Get input from user
payload = input(f"Enter your input (max {MAX_LEN} bytes): ")
if len(payload) > MAX_LEN:
    print("[-] Input too long!")
    sys.exit(1)

# Start the binary with pipes
proc = subprocess.Popen(
    [BINARY],
    stdin=subprocess.PIPE,
    stdout=sys.stdout,
    stderr=subprocess.PIPE
)

try:
    # Send initial payload
    proc.stdin.write(payload.encode() + b'\n')
    proc.stdin.flush()

    # Interactive loop
    while True:
        line = sys.stdin.readline()
        if not line:
            break
        if proc.poll() is not None:
            print("[+] Process has exited.")
            break
        proc.stdin.write(line.encode('latin1'))
        proc.stdin.flush()
except (KeyboardInterrupt, BrokenPipeError):
    print("[+] Exiting.")
finally:
    try:
        proc.terminate()
    except Exception:
        pass