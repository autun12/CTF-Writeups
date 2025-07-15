#ifndef COSMOPOLITAN_TOOL_DECODE_LIB_DISASSEMBLEHEX_H_
#define COSMOPOLITAN_TOOL_DECODE_LIB_DISASSEMBLEHEX_H_

#include "libc/stdio/stdio.h"

#define kDisassembleHexColumns 8

COSMOPOLITAN_C_START_

void disassemblehex(uint8_t *data, size_t size, FILE *f);

COSMOPOLITAN_C_END_
#endif /* COSMOPOLITAN_TOOL_DECODE_LIB_DISASSEMBLEHEX_H_ */
