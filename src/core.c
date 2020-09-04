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

#include <stdio.h>

/* Instructions Hexa Codes */

#define VMACHINE_INSTRUCTION_FUNCT_7		0xfe000000
#define VMACHINE_INSTRUCTION_RS_1		0x000f8000
#define VMACHINE_INSTRUCTION_RS_2		0x01f00000
#define VMACHINE_INSTRUCTION_FUNCT_3		0x00007000
#define VMACHINE_INSTRUCTION_RD			0x00000f80
#define VMACHINE_INSTRUCTION_OPCODE		0x0000007f
#define VMACHINE_INSTRUCTION_IMMEDIATE_I_TYPE	0xfff00000
#define VMACHINE_INSTRUCTION_IMMEDIATE		0xfffff000

/* Instructions Hexa Shift Codes */

#define VMACHINE_INSTRUCTION_SHIFT_FUNCT_7 		0X18
#define VMACHINE_INSTRUCTION_SHIFT_RS_1			0x0c
#define VMACHINE_INSTRUCTION_SHIFT_RS_2			0x14
#define VMACHINE_INSTRUCTION_SHIFT_FUNCT_3		0x0c
#define VMACHINE_INSTRUCTION_SHIFT_RD			0x04
#define VMACHINE_INSTRUCTION_SHIFT_IMMEDIATE_I_TYPE	0x14
#define VMACHINE_INSTRUCTION_SHIFT_IMMEDIATE		0x0c

#define NUMBER_OF_REGISTERS 0X20

/* Global variables */
uint32_t pc = 0x00;
uint32_t registers[NUMBER_OF_REGISTERS];

/**
 * @brief Advances PC Value
 */
void advances_pc(uint32_t offset) {
	pc += offset;
}

/**
 * @brief Fetches an instruction on memory.
 */
uint32_t do_fetch(void) {
	/* TO DO */
}

/**
 * @brief Defines the instruction's type
 */
char instruction_type(uint32_t opcode) {
  	/* TO DO */
}

/**
 *  @brief Executes a R-Type Instruction
 */
void do_execute_R(uint32_t instruction) {
	/* TO DO */
}

/**
 *  @brief Executes a I-Type Instruction
 */
void do_execute_I(uint32_t instruction) {
        /* TO DO */
}

/**
 *  @brief Executes a S-Type Instruction
 */
void do_execute_S(uint32_t instruction) {
        /* TO DO */
}

/**
 *  @brief Executes a B-Type Instruction
 */
void do_execute_B(uint32_t instruction) {
        /* TO DO */
}

/**
 *  @brief Executes a U-Type Instruction
 */
void do_execute_U(uint32_t instruction) {
        /* TO DO */
}

/**
 *  @brief Executes a J-Type Instruction
 */
void do_execute_J(uint32_t instruction) {
        /* TO DO */
}

/**
 * @brief Decodes the instruction and sends in to the corresponding execution
 */
void do_decode(uint32_t instruction) {
	/* TO DO */
}

/**
 * @brief Handles Interrupts
 */
void do_interrupts(void) {
	exit(-1);
}

/**
 * @brief Initializes a core
 */
void core_init(void) {
	/* cache_init() */
}

/**
 * Runs a core
 */
void core_run(void) {
	while (1) {
		uint32_t instruction;
		intstruction = do_fetch();
		do_decode(instruction);
		do_interrupts();
	}
}

/**
 * @brief Register Bank Getter
 */
uint32_t get_registers(int reg_num) {
	return registers[reg_num];
}

/**
 * @brief PC Value Getter
 */
uint32_t get_pc(void)
	return pc;
}
