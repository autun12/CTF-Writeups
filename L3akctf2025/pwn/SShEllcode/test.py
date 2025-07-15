from capstone import *
from capstone.x86 import *
import json

# Initialize disassembler for x86_64 with detail mode on
md = Cs(CS_ARCH_X86, CS_MODE_64)
md.detail = True

# MOVNTDQ xmmword ptr [rax], xmm1
# Opcode: 66 0F E7 08 (MOVNTDQ [RAX], XMM1)
# code = bytes.fromhex("66 0F E7 08")

real_code = bytes.fromhex("0f280425000000000f280c25000000000f10142500000000f30f101c2500000000f30f101c25000000000f28342500000000")
# print(real_code)

# Define the allowed instruction groups and specific forbidden instruction
ALLOWED_GROUPS = [X86_GRP_SSE1, X86_GRP_SSE2]
FORBIDDEN_INST_ID = X86_INS_MASKMOVDQU

print("--- Disassembly and Rule Check ---")
print("Address    Opcode       Mnemonic  Operands          SSE Group OK?  No Mem Operand?  No MASKMOVDQU?")
print("-----------------------------------------------------------------------------------------------------")

for insn in md.disasm(real_code, 0x13370000):
    # Check for forbidden instruction groups
    is_allowed_group = False
    for group_id in insn.groups:
        if group_id in ALLOWED_GROUPS:
            is_allowed_group = True
            break
    group_ok_indicator = "YES" if is_allowed_group or insn.id == X86_INS_INVALID else "NO"

    # Check for memory operands
    has_mem_operand = any(op.type == CS_OP_MEM for op in insn.operands)
    no_mem_operand_indicator = "YES" if not has_mem_operand else "NO"

    # Check for specific forbidden instruction (MASKMOVDQU)
    no_maskmovdqu_indicator = "YES" if insn.id != FORBIDDEN_INST_ID else "NO"

    # Print formatted row
    print(f"0x{insn.address:08x}: {insn.bytes.hex():<12} {insn.mnemonic:<9} {insn.op_str:<18} {group_ok_indicator:<14} {no_mem_operand_indicator:<17} {no_maskmovdqu_indicator}")

print("-----------------------------------------------------------------------------------------------------")
print("\nKey: 'NO' indicates a violation of the CTF rules.")

# Disassemble and analyze
# disasm_result = []
# for insn in md.disasm(real_code, 0x1000000):
#     # print(insn)
#     insn_info = {
#         'mnemonic': insn.mnemonic,
#         'op_str': insn.op_str,
#         'id': insn.id,
#         'insn_name': insn.insn_name(),
#         'groups': insn.groups,
#         'has_mem_operand': any(op.type == CS_OP_MEM for op in insn.operands)
#     }
#     disasm_result.append(insn_info)

# print(json.dumps(disasm_result, indent=2))