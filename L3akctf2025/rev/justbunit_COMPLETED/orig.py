import sys
import struct

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

def check_number(num1):
    if 0.0 <= num1 < 0.25:
        v2 = num1 + 0.55
    elif 0.25 <= num1 < 0.55:
        v2 = num1 - 0.25
    elif 0.55 <= num1 < 0.75:
        v2 = num1 + 0.2
    elif 0.75 <= num1 < 1.0:
        v2 = num1 - 0.5
    else:
        v2 = num1
    
    return custom_float_rounder(v2 * 1000.0) / 1000.0

def sub_40473D(num1, num2):
    for i in range(num1):
        num2 = check_number(num2)
    return num2

alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ{_}"

def main(arg1, arg2):
    num1 = int(arg1)
    num2 = float(arg2)

    if num2 >= 0.0 and num2 < 1.0:
        transformed_num = sub_40473D(num1, num2)
        rounded_num = int((100.0 * transformed_num))
        index = rounded_num % len(alphabet)
        print(alphabet[index])

main(sys.argv[1], sys.argv[2])