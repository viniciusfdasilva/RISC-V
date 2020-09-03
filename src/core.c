#include <stdio.h>

/* DEFINES THE INSTRUCTIONS PIECES */
/* TO DO */

/* DEFINES THE INSTRUCTIONS SHIFTS (MASKS) */
/* TO DO */

/**
 * @brief Advances PC Value
 */
void advances_pc(uint32_t offset) {
	/* TO DO */
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

/* ISNTRUCTIONS TYPES EXECUTIO */
/* TO DO */

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
