MIT License

Copyright (c) 2020 Dayane Cordeiro

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

/* Instructions Opcodes Division */

#define U_TYPE_IMMEDIATE_iNSTRUCTION			0X37
#define U_TYPE_PC_INSTRUCTION				0X17
#define J_TYPE_INSTRUCTION				0X6f
#define I_TYPE_JUMPER_INSTRUCTION			0x67
#define I_TYPE_LOAD_INSTRUCTIONS			0x03
#define I_TYPE_REGISTERS_INSTRUCTIONS			0x13
#define I_TYPE_FENCE_INSTRUCTIONS			0x0f
#define I_TYPE_CALL_BREAKPOINT_CRS_INSTRUCTIONS		0x73
#define B_TYPE_INSTRUCTIONS				0x63
#define S_TYPE_INSTRUCTIONS				0x23
#define R_TYPE_INSTRUCTIONS				0x33

/* Defining the opcode of each instruction separately */

/* U-Type */

#define INSTRUCTION_OPCODE_LUI		0x37
#define INSTRUCTION_OPCODE_AUIPC	0x17

/* J-Type */
#define INSTRUCTION_OPCODE_JAL		0x6f

/* I-Type */
#define INSTRUCTION_OPCODE_JALR		0x67
#define INSTRUCTION_OPCODE_LB		0x03
#define INSTRUCTION_OPCODE_LH		0x03
#define INSTRUCTION_OPCODE_LW		0x03
#define INSTRUCTION_OPCODE_LBU		0x03
#define INSTRUCTION_OPCODE_LHU		0x03
#define INSTRUCTION_OPCODE_ADDI		0x13
#define INSTRUCTION_OPCODE_SLTI		0x13
#define INSTRUCTION_OPCODE_SLTIU	0x13
#define INSTRUCTION_OPCODE_XORI		0x13
#define INSTRUCTION_OPCODE_ORI		0x13
#define INSTRUCTION_OPCODE_ANDI		0x13
#define INSTRUCTION_OPCODE_SLLI		0x13
#define INSTRUCTION_OPCODE_SRLI		0x13
#define INSTRUCTION_OPCODE_SRAI		0x13
#define INSTRUCTION_OPCODE_FENCE	0x0f
#define INSTRUCTION_OPCODE_FENCE_I	0x0f
#define INSTRUCTION_OPCODE_ECALL	0x73
#define INSTRUCTION_OPCODE_EBREAK	0x73
#define INSTRUCTION_OPCODE_CSRRW	0x73
#define INSTRUCTION_OPCODE_CSRRS	0x73
#define INSTRUCTION_OPCODE_CSRRC	0x73
#define INSTRUCTION_OPCODE_CSRRWI	0x73
#define INSTRUCTION_OPCODE_CSRRSI	0x73
#define INSTRUCTION_OPCODE_CSRRCI	0x73

/* B-Type */
/* TO DO */

/* S-Type */
/* TO DO */

/* R-Type */
/* TO DO */
