<?php

class Conversor {
    public static function generateRegister($register) {
        switch($register) {
            case 'x0':
                return "00000";
            break;
            case 'ra':
                return "00001";
            break;
            case 'sp':
                return "00010";
            case "gp":
                return "00011";
            break;
            case "tp":
                return "00100";
            break;
            case "t0":
                return "00101";
            break;
            case "t1":
                return "00110";
            break;
            case "t2":
                return "00111";
            break;
            case "s0":
                return "01000";
            break;
            case "s1":
                return "01001";
            break;
            case "a0":
                return "01010";
            break;
            case "a1":
                return "01011";
            break;
            case "a2":
                return "01100";
            break;
            case "a3":
                return "01101";
            break;
            case "a4":
                return "01110";
            break;
            case "a5":
                return "01111";
            break;
            case "a6":
                return "10000";
            break;
            case "a7":
                return "10001";
            break;
            case "s2":
                return "10010";
            break;
            case "s3":
                return "10011";
            break;
            case "s4":
                return "10100";
            break;
            case "s5":
                return "10101";
            break;
            case "s6":
                return "10110";
            break;
            case "s7":
                return "10111";
            break;
            case "s8":
                return "11000";
            break;
            case "s9":
                return "11001";
            break;
            case "s10":
                return "11010";
            break;
            case "s11":
                return "11011";
            break;
            case "t3":
                return "11100";
            break;
            case "t4":
                return "11101";
            break;
            case "t5":
                return "11110";
            break;
            case "t6":
                return "11111";
            break;
            default:
                return null;
        }
    }

    public static function generateFunct07($opcode) {
        switch ($opcode) {
            case "slli":
            case "srli":
            case "add":
            case "sll":
            case "slt":
            case "sltu":
            case "xor":
            case "srl":
            case "or":
            case "and":
            case "beq":
            case "bne":
            case "blt":
            case "bge":
            case "bltu":
            case "bgeu":
                return "0000000";
            break;
            case "srai":
            case "sub":
            case "sra":
                return "0100000";
            break;
            default:
                return null;
        }
    }

    public static function generateFunct03($opcode) {
        switch ($opcode) {
            case "jalr":
            case "beq":
            case "lb":
            case "sb":
            case "addi":
            case "add":
            case "sub":
                return "000";
            break;

            case "bne":
            case "lh":
            case "sh":
            case "slli":
            case "sll":
                return "001";
            break;

            case "lw":
            case "sw":
            case "slti":
            case "slt":
                return "010";
            break;

            case "sltiu":
            case "sltu":
                return "011";
            break;

            case "blt":
            case "lbu":
            case "xori":
            case "xor":
                return "100";
            break;

            case "bge":
            case "lhu":
            case "srli":
            case "srai":
            case "srl":
            case "sra":
                return "101";
            break;

            case "bltu":
            case "ori":
            case "or":
                return "110";
            break;

            case "bgeu":
            case "andi":
            case "and":
                return "111";
            break;
        }
    }

    public static function generateOpcode($opcode) {
        switch ($opcode) {
            case "add":
            case "sub":
            case "sll":
            case "slt":
            case "sltu":
            case "xor":
            case "srl":
            case "sra":
            case "or":
            case "and":
                return "0110011";
            break;

            case "lui":
                return "0110111";
            break;

            case "auipc":
                return "0010111";
            break;

            case "jalr":
                return "1100111";
            break;

            case "jal":
                return "1101111";
            break;

            case "beq":
            case "bne":
            case "blt":
            case "bge":
            case "bltu":
            case "bgeu":
                return "1100011";
            break;

            case "lb":
            case "lh":
            case "lw":
            case "lbu":
            case "lhu":
                return "0000011";
            break;

            case "sb":
            case "sh":
            case "sw":
                return "0100011";
            break;

            case "addi":
            case "slti":
            case "sltiu":
            case "xori":
            case "ori":
            case "andi":
            case "slli":
            case "srli":
            case "srai":
                return "0010011";
            break;
        }
    }

    public static function generateImmediate($immediate, $opcode) {
        if (!is_null($immediate)) {
            $binary = decbin($immediate);

            switch ($opcode) {
                case "lui":
                case "auipc":
                    if (strlen($binary) < 20) {
                        $aux = null;
                        $value = 20 - strlen($binary);

                        for ($i = 0; $i < $value; $i++) {
                            $aux = $aux . "0";
                        }

                        return $aux . $binary;
                    } else {
                        return $binary;
                    }
                break;

                default:
                    if (strlen($binary) < 12) {
                        $aux = null;
                        $value = 12 - strlen($binary);

                        for ($i = 0; $i < $value; $i++) {
                            $aux = $aux . "0";
                        }

                        return $aux . $binary;
                    } else {
                        return $binary;
                    }
            }
        } else {
            return null;
        }
    }
}

$opcode = "jal";
$rd     = "x0";
$rs1    = null;
$rs2    = null;
$immediate = 16;

$result = null;

$result = Conversor::generateFunct07($opcode);
$result = Conversor::generateImmediate($immediate, $opcode);
$result = $result . Conversor::generateRegister($rs2);
$result = $result . Conversor::generateRegister($rs1);
$result = $result . Conversor::generateFunct03($opcode);
$result = $result . Conversor::generateRegister($rd);
$result = $result . Conversor::generateOpcode($opcode);

echo "Binary: " . $result . "<br> Hexa: ";
echo dechex(bindec($result));