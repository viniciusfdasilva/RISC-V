# ----------------------------------------------------------------------------------------
# Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
# To assemble and run:
#
#     gcc -c hello.s && ld hello.o && ./a.out
#
# or
#
#     gcc -nostdlib hello.s && ./a.out
# ----------------------------------------------------------------------------------------

        .global _start

        .text
_start:
	# R-Type instructions -------------------------------
        #add t0, t1, t2	#00000000011100110000001010110011
	#sub s2, s4, s6	#01000001011010100000100100110011
	#sll s1, s3, s1	#00000000100110011001010010110011
	#slt s3, s2, s5	#00000001010110010010100110110011
	#sltu s6, s5, s8	#00000001100010101011101100110011
	#xor s2, s2, s1	#00000000100110010100100100110011
	#srl s1, s5, s3	#00000001001110101101010010110011
	#sra s2, s9, s7	#01000001011111001101100100110011
	#or s6, s1, s1	#00000000100101001110101100110011
	#and s3, s4, s6	#00000001011010100111100110110011

	# I-Type instructions -------------------------------
	#jarl s1, s2, 6 <- unrecognized opcode
	#lb t0, 8(sp)	#00000000100000010000001010000011
	#lh t1, 4(sp)
	#lw t0, 8(sp)
	#lbu t2, 16(sp)
	#lhu t1, 8(sp)
	#addi a0, t0, -10
	#slti s1, t0, 4
	#sltiu s3, t1, 8
	#xori a2, s4, 16
	#ori t2, s2, 3
	#andi a2, s9, 5
	#slli a1, s2, 2
	#srli s3, s3, 1
	#srai s5, s9, 9

	# J-Type instructions -------------------------------
	#jal x0, 16 <- wrong result

	# S-Type instructions -------------------------------
	#sb t0, 8(sp)
	#sh s1, 16(sp)
	#sw s6, 4(sp)

	# B-Type instructions -------------------------------
	#beq s1, t0, 4 -> wrong value
	#bne s6, s1, 8 -> wrong funct3
	#blt t1, s5, 16
	#bge s3, s1, 2
	#bltu s4, s1, 8
	#bgeu s9, s1, 4

	# U-Type instructions -------------------------------
	lui t0, 32
	auipc t1, 16
