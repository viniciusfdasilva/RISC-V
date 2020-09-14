// MIT License

// Copyright (c) 2020 Dayane Cordeiro

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/* Definition of instructions func_3 */
/* DOING */

/* R-Type */
#define INST_ADD_FUNCT_3  0x00
#define INST_SUB_FUNCT_3  0x00
#define INST_SLL_FUNCT_3  0x01
#define INST_SLT_FUNCT_3  0x02
#define INST_SLTU_FUNCT_3 0x03
#define INST_XOR_FUNCT_3  0x04
#define INST_SRL_FUNCT_3  0x05
#define INST_SRA_FUNCT_3  0x05
#define INST_OR_FUNCT_3   0x06
#define INST_AND_FUNCT_3  0x07

/* I_Type */
#define INST_JALR_FUNCT_3       0x00
#define INST_LB_FUNCT_3         0x00
#define INST_LH_FUNCT_3         0x01
#define INST_LW_FUNCT_3         0x02
#define INST_LBU_FUNCT_3        0x04
#define INST_LHU_FUNCT_3        0x05
#define INST_ADDI_FUNCT_3       0x00
#define INST_SLTI_FUNCT_3       0x02
#define INST_SLTIU_FUNCT_3      0x03
#define INST_XORI_FUNCT_3       0x04
#define INST_ORI_FUNCT_3        0x06
#define INST_ANDI_FUNCT_3       0x07
#define INST_SLLI_FUNCT_3       0x01
#define INST_SRLI_FUNCT_3       0x05
#define INST_SRAI_FUNCT_3       0x05
#define INST_FENCE_FUNCT_3      0x00
#define INST_FENCE_I_FUNCT_3    0x01
#define INST_ECALL_FUNCT_3      0x00
#define INST_EBREAK_FUNCT_3     0x00
#define INST_CSRRW_FUNCT_3      0x01
#define INST_CSRRS_FUNCT_3      0x02
#define INST_CSRRC_FUNCT_3      0x03
#define INST_CSRRWI_FUNCT_3     0x05
#define INST_CSRRSI_FUNCT_3     0x06
#define INST_CSRRCI_FUNCT_3     0x07

/* B-Type*/
#define INST_BEQ_FUNCT_3    0x00
#define INST_BNE_FUNCT_3    0x01
#define INST_BLT_FUNCT_3    0x04
#define INST_BGE_FUNCT_3    0x05
#define INST_BLTU_FUNCT_3   0x06
#define INST_BGEU_FUNCT_3   0x07

/* S-Type */
/* TO DO */