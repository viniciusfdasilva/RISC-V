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
#include <opcodes.c>

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
	uint32_t instruction;

	instruction = icache_read(pc);
	advances_pc(4);

	return instruction;
}

/**
 *  @brief Executes a R-Type Instruction
 */
void do_execute_R(uint32_t instruction) {
	uint32_t funct_7 = instruction & VMACHINE_INSTRUCTION_FUNCT_7;
	uint32_t rs2	 = instruction & VMACHINE_INSTRUCTION_RS_2;
	uint32_t rs1	 = instruction & VMACHINE_INSTRUCTION_RS_1;
	uint32_t funct_3 = instruction & VMACHINE_INSTRUCTION_FUNCT_3;
	uint32_t rd	 = instruction & VMACHINE_INSTRUCTION_RD;
	uint32_t opcode  = instruction & VMACHINE_INSTRUCTION_OPCODE;

	funct_7 = funct_7 >> VMACHINE_INSTRUCTION_SHIFT_FUNCT_7;
	rs2	= rs2 >> VMACHINE_INSTRUCTION_SHIFT_RS_2;
	rs1	= rs1 >> VMACHINE_INSTRUCTION_SHIFT_RS_1;
	funct_3	= funct_3 >> VMACHINE_INSTRUCTION_SHIFT_FUNCT_3;
	rd	= rd >> VMACHINE_INSTRUCTION_SHIFT_FUNCT_3;

	switch(func_3) {
		case INST_ADD_FUNCT_3:
			if (funct_7 == INST_ADD_FUNCT_7)
			      registers[rd] = registers[rs2] + registers[rs1];
		break;
		case INST_SUB_FUNCT_3:
			if (funct_7 == INST_SUB_FUNCT_7)
				registers[rd] = registers[rs1] - registers[rs1];
		break;
		case INST_SLL_FUNCT_3:
			/* TO DO */
		break;
		case INST_SLT_FUNCT_3:
                        registers[rd] = (registers[rs2] < registers[rs1]) ? 1 : 0;
                break;
                case INST_SLTU_FUNCT_3:
                        registers[rd] = (registers[rs2] < registers[rs1]) ? 1 : 0;
                break;
                case INST_XOR_FUNCT_3:
                        registers[rd] = registers[rs1] ^ registers[rs2];
                break;
                case INST_SRL_FUNCT_3:
                        /* TO DO */
                break;
                case INST_SRA_FUNCT_3:
                        /* TO DO */
                break;
                case INST_OR_FUNCT_3:
                        registers[rd] = registers[rs1] | registers[rs2];
                break;
                case INST_AND_FUNCT_3:
                        registers[rd] = registers[rs1] & registers[rs2];
                break;	
	}

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
        uint32_t immediate 	= instruction & VMACHINE_INSTRUCTION_IMMEDIATE;
	uint32_t rd		= instruction & VMACHINE_INSTRUCTION_RD;
	uint32_t opcode		= instruction & VMACHINE_INSTRUCTION_OPCODE;

	switch(opcode) {
		case INSTRUCTION_OPCODE_LUI:
			/* TO DO */
		break;
		case INSTRUCTION_OPCODE_AUIPC:
			/* TO DO */
		break;
		default:
			error("Unknown instruction");
		break;
}

/**
 *  @brief Executes a J-Type Instruction
 */
void do_execute_J(uint32_t instruction) {
       	uint32_t immediate      = instruction & VMACHINE_INSTRUCTION_IMMEDIATE;
       	uint32_t rd             = instruction & VMACHINE_INSTRUCTION_RD;
	uint32_t opcode         = instruction & VMACHINE_INSTRUCTION_OPCODE;

	switch(opcode) {
		case INSTRUCTION_OPCODE_JAL:
			/* TO DO */
		break;
		default:
			error("Unknown instruction");
		break;
}

/**
 * @brief Decodes the instruction and sends in to the corresponding execution
 */
void do_decode(uint32_t instruction) {
	uint32_t opcode = instruction & VMACHINE_INSTRUCTION_OPCODE;
	
	switch(opcode) {
		case U_TYPE_IMMEDIATE_iNSTRUCTION:
		case U_TYPE_PC_INSTRUCTION:
			do_execute_U(instruction);
		break;		
		case J_TYPE_INSTRUCTION:
			do_execute_J(instruction);
		break;		
		case B_TYPE_INSTRUCTIONS:
			do_execute_B(instruction);
		break;		
		case S_TYPE_INSTRUCTIONS:
			do_execute_S(instruction);
		break;		
		case R_TYPE_INSTRUCTIONS:
			do_execute_R(instruction);
		break;		
		default:
			do_execute_I(instruction);
		break;
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
