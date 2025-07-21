from z3 import *

def rotl64(x, n):
    return RotateLeft(x, n)

def fnv1a(chars):
    v0 = BitVecVal(0x811C9DC5, 64)
    i = BitVecVal(0x1000193, 64)  # 0x1000193 decimal 16777619

    for offset, c in enumerate(chars):
        c64 = ZeroExt(56, c)  # 8 bits to 64 bits
        v0 = c64 ^ rotl64(v0, 7)
        i = i * 33 + c64 * (offset + 1)

    return v0 ^ rotl64(i, 32)

# Length of full input string (DUCTF{ + 29 + }. )
FULL_LEN = 6 + 29 + 3

# Create Z3 BitVec variables for each character
chars = [BitVec(f'c{i}', 8) for i in range(FULL_LEN)]

s = Solver()

# Constraint: all chars are printable ASCII
for c in chars:
    s.add(c >= 32, c <= 126)

# Constraint 1: Prefix "DUCTF{"
prefix = "DUCTF{"
for i, ch in enumerate(prefix):
    s.add(chars[i] == ord(ch))

# Constraint 2: Suffix "}. "
suffix = "}. "
for i, ch in enumerate(suffix):
    s.add(chars[FULL_LEN - 3 + i] == ord(ch))

# Extract processedString (29 characters)
processed = chars[6:-3]
# Constraint 3: processedString length
s.add(len(processed) == 29)

# Constraint 4: processed[28] == '.'
s.add(processed[28] == ord('.'))



# Constraint 5: processed[0] == 'g' AND 'c' (Contradiction, so skip one)
# This is a logic bug in the Swift, either it's 'g' or 'c'. Let's assume it's 'g' (matches hash logic)
s.add(processed[0] == ord('g'))

# processed[1] == 'i'
s.add(processed[1] == ord('i'))

# processed[2] + 111 == 159 → processed[2] == 48
# s.add(processed[2] == 48)

# processed[3] % 2 == 0
s.add(processed[3] % 2 == 0)

# (processed[3] + processed[0]) / 2 == 'g' (103)
s.add(UDiv(processed[3] + processed[0], 2) == ord('g'))

# final_chars = list(reversed(processed))
some_str = Array('some_str', IntSort(), BitVecSort(8))
s.add(some_str[0] == ord('g'))
s.add(some_str[1] == ord('5'))

# processed[27] == '.'
s.add(processed[27] == ord('.'))

# for i, val in enumerate([
#     0x0000000000000000,
#     0x0000000000000000,
#     0x0000000000000005,
#     0x000000000000000A
# ]):
#     s.add(ZeroExt(56, processed[i + 1]) == BitVecVal(val, 64))

flat_map_result = Array('flat_map_result', IntSort(), BitVecSort(8))
expected_flatmap = list(reversed([ord(c) for c in "_1p54_sh"]))
for i, v in enumerate(expected_flatmap):
    s.add(flat_map_result[i] == v)


# processed[26] == 'd'
s.add(processed[26] == ord('d'))

loop_result = Array('loop_result', IntSort(), BitVecSort(8))
for i, v in enumerate("e^1q"):
    s.add(loop_result[i] == ord(v))

# Linear Equation Set 1 (indices 14, 15, 24)
c14, c15, c24 = processed[14], processed[15], processed[24]
s.add(c14 + 2 * c15 + 3 * c24 == 383)
s.add(4 * c14 + 5 * c15 + 6 * c24 == 959)
s.add(9 * (c14 + c24) + 8 * c15 == 1641)

# Linear Equation Set 2 (indices 2, 6, 8)
c2, c6, c8 = processed[2], processed[6], processed[8]
s.add(c2 + 2 * c6 + 3 * c8 == 552)
s.add(4 * c2 + 5 * c6 + 6 * c8 == 1404)
s.add(6 * c2 + 8 * c6 + 9 * c8 == 2145)

for i in [17, 19]: # 16 + (0+1), 16 + (2+1)
    # Must not be '\n\r' (0x0A0D)
    s.add(processed[i] != 0x0A0D) # This is 2573 decimal
    # Must be standard ASCII (already covered by global <= 126, but adding explicit <= 127 is harmless)
    s.add(processed[i] <= 127)
    # Must not be 0
    s.add(processed[i] != 0)

# Character at (current_loop_index)
# processed[16], processed[18]
for i in [16, 18]: # 16 + 0, 16 + 2
    # Must not be '\n\r' (0x0A0D)
    s.add(processed[i] != 0x0A0D)
    # Must be standard ASCII (already covered by global <= 126, but adding explicit <= 127 is harmless)
    s.add(processed[i] <= 127)
    # Must not be 0
    s.add(processed[i] != 0)
    
full_hash = fnv1a(processed)
s.add(Extract(31, 0, full_hash) == 0xD890BAB5)

reversed_processed = list(reversed(processed))
reversed_hash = fnv1a(reversed_processed)
s.add(Extract(63, 32, reversed_hash) == 0x80DD5386)


# Solve
if s.check() == sat:
    m = s.model()
    result = ''.join([chr(m[c].as_long()) for c in chars])
    print("✅ Found valid input string:")
    print(result)
else:
    print("❌ No solution found.")
    print("Reason:", s.unsat_core())
