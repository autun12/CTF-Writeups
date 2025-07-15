import math
import struct
from collections import deque
import re

def custom_float_rounder(input_double):
    input_bits = struct.unpack('<Q', struct.pack('<d', input_double))[0]

    biased_exponent_bits = (input_bits >> 52) & 0x7FF
    actual_exponent = biased_exponent_bits - 1023
    
    if actual_exponent > 51:
        if biased_exponent_bits == 0x7FF:
            return input_double 
        return input_double
    else:
        if actual_exponent < 0:
            result_double_bits = input_bits & 0x8000000000000000
            if biased_exponent_bits == 0x3FE:
                result_double_bits |= 0x3FF0000000000000
            return struct.unpack('<d', struct.pack('<Q', result_double_bits))[0]
        else:
            fractional_mask = 0xFFFFFFFFFFFFF >> (biased_exponent_bits + 1)
            
            if (fractional_mask & input_bits) == 0:
                return input_double

            round_add_val = 0x8000000000000 >> (biased_exponent_bits + 1)
            sum_bits = input_bits + round_add_val
            integer_mask = ~fractional_mask
            
            result_double_bits = integer_mask & sum_bits
            return struct.unpack('<d', struct.pack('<Q', result_double_bits))[0]

def sub_404605(a1):
    if 0.0 <= a1 < 0.25:
        v2 = a1 + 0.55
    elif 0.25 <= a1 < 0.55:
        v2 = a1 - 0.25
    elif 0.55 <= a1 < 0.75:
        v2 = a1 + 0.2
    elif 0.75 <= a1 < 1.0:
        v2 = a1 - 0.5
    else:
        v2 = a1
    
    return custom_float_rounder(v2 * 1000.0) / 1000.0

def cycle_detect(n, initial):
    current = initial
    seen_values = {}
    
    sequence = deque()

    MAX_ITERATIONS_TO_FIND_CYCLE = 2000

    cycle_min = min(n, MAX_ITERATIONS_TO_FIND_CYCLE)

    for i in range(cycle_min):
        key = int(current * 1000.0 + 0.5) 
        
        if key in seen_values:
            cycle_start_iteration = seen_values[key]
            cycle_length = i - cycle_start_iteration
            
            remaining = n - cycle_start_iteration
            offset = remaining % cycle_length

            cycle_start_val = sequence[cycle_start_iteration]

            temp = cycle_start_val
            for _ in range(offset):
                temp = sub_404605(temp)
            return temp
        
        seen_values[key] = i
        sequence.append(current)
        current = sub_404605(current)
    
    return current

alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ{_}"
ALPHABET_SIZE = len(alphabet)

def main():
    flag = ""
    
    try:
        with open("input.txt", 'r') as f:
            file_content = f.read()
    except FileNotFoundError:
        print("Error: input.txt not found.", file=sys.stderr)
        return 1

    file_content = re.sub(r'\s+', '', file_content)

    match = re.search(r'\[(.*)\]', file_content)
    if not match:
        print("Error: Invalid JSON array format in input.txt. Missing outer brackets.", file=sys.stderr)
        return 1
    
    inner_content = match.group(1)

    pairs_raw = re.findall(r'\[(\d+,\d+\.\d+)\]', inner_content)

    for pair_data in pairs_raw:
        try:
            n_str, x_str = pair_data.split(',')
            
            n_val = int(n_str)
            x_val = float(x_str)
            
        except ValueError as e:
            print(f"Warning: Error converting numbers from pair '{pair_data}': {e}. Skipping.", file=sys.stderr)
            continue
        
        if not (0.0 <= x_val < 1.0):
            print(f"Skipping pair (n={n_str}, x={x_val}): x must be in [0, 1).", file=sys.stderr)
            continue

        final_x_transformed = cycle_detect(n_val, x_val)

        v5 = int(100.0 * final_x_transformed) 

        v10 = v5 % ALPHABET_SIZE

        if 0 <= v10 < ALPHABET_SIZE:
            character = alphabet[v10]
            flag += character
        else:
            print(f"Error: Calculated index {v10} is out of bounds for alphabet size {ALPHABET_SIZE}"
                  f" for pair (n={n_str}, x={x_val}).", file=sys.stderr)

    print("\n--- Collected Flag ---")
    print(flag)
    print("----------------------")
    return 0

if __name__ == "__main__":
    import sys
    sys.exit(main())

# l3ak{bun_thought_binary_lifting_was_needed_turns_out_f_was_cyclic_after_all}