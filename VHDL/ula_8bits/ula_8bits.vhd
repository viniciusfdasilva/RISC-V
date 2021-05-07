-- ULA de 8 bits com as instruções sub, add, and, or, not, xor, nand --
-- add  - 000
-- sub  - 001
-- and  - 010
-- or   - 011
-- not  - 100
-- xor  - 101
-- nand - 110
-- nor  - 111

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ula_8bits is
	port (
		-- entradas --
		inputA   : in std_logic_vector(0 to 7);
		inputB   : in std_logic_vector(0 to 7);
		carryIn  : in std_logic;
		opcode   : in std_logic_vector(0 to 2);
		
		-- saídas --
		output   : out std_logic_vector(0 to 7);
		carryOut : out std_logic_vector(0 to 7)
	);
end ula_8bits;

architecture ula of ula_8bits is
begin
	if opcode(0) = 0 and opcode(1) = 0 and opcode(2) = 0 then
		-- ADD --
		output(0)   <= '1' when (carryIn = 0 and inputA(0) = 0 and inputB(0) = 1) else
							'1' when (carryIn = 0 and inputA(0) = 1 and inputB(0) = 0) else
							'1' when (carryIn = 1 and inputA(0) = 0 and inputB(0) = 0) else
							'1' when (carryIn = 1 and inputA(0) = 1 and inputB(0) = 1) else '0';
							
		carryOut(0) <= '1' when (inputA(0) = 1 and inputB(0) = 1) else 
							'1' when (carryIn = 1 and inputB(0) = 1) else
							'1' when (carryIn = 1 and inputA(0) = 1) else '0';
		
		output(1)   <= '1' when (carryOut(0) = 0 and inputA(1) = 0 and inputB(1) = 1) else
							'1' when (carryOut(0) = 0 and inputA(1) = 1 and inputB(1) = 0) else
							'1' when (carryOut(0) = 1 and inputA(1) = 0 and inputB(1) = 0) else
							'1' when (carryOut(1) = 1 and inputA(1) = 1 and inputB(1) = 1) else '0';
							
		carryOut(1) <= '1' when (inputA(1) = 1 and inputB(1) = 1) else
							'1' when (carryOut(0) = 1 and inputB(1) = 1) else
							'1' when (carryOut(0) = 1 and inputA(1) = 1) else '0';
		
		output(2)   <= '1' when (carryOut(1) = 0 and inputA(2) = 0 and inputB(2) = 1) else
							'1' when (carryOut(1) = 0 and inputA(2) = 1 and inputB(2) = 0) else
							'1' when (carryOut(1) = 1 and inputA(2) = 0 and inputB(2) = 0) else
							'1' when (carryOut(2) = 1 and inputA(2) = 1 and inputB(2) = 1) else '0';
							
		carryOut(2) <= '1' when (inputA(2) = 1 and inputB(2) = 1) else
							'1' when (carryOut(1) = 1 and inputB(2) = 1) else
							'1' when (carryOut(1) = 1 and inputA(2) = 1) else '0';
		
		output(3)   <= '1' when (carryOut(2) = 0 and inputA(3) = 0 and inputB(3) = 1) else
							'1' when (carryOut(2) = 0 and inputA(3) = 1 and inputB(3) = 0) else
							'1' when (carryOut(2) = 1 and inputA(3) = 0 and inputB(3) = 0) else
							'1' when (carryOut(3) = 1 and inputA(3) = 1 and inputB(3) = 1) else '0';
							
		carryOut(3) <= '1' when (inputA(3) = 1 and inputB(3) = 1) else
							'1' when (carryOut(2) = 1 and inputB(3) = 1) else
							'1' when (carryOut(2) = 1 and inputA(3) = 1) else '0';
		
		output(4)   <= '1' when (carryOut(3) = 0 and inputA(4) = 0 and inputB(4) = 1) else
							'1' when (carryOut(3) = 0 and inputA(4) = 1 and inputB(4) = 0) else
							'1' when (carryOut(3) = 1 and inputA(4) = 0 and inputB(4) = 0) else
							'1' when (carryOut(4) = 1 and inputA(4) = 1 and inputB(4) = 1) else '0';
							
		carryOut(4) <= '1' when (inputA(4) = 1 and inputB(4) = 1) else
							'1' when (carryOut(3) = 1 and inputB(4) = 1) else
							'1' when (carryOut(3) = 1 and inputA(4) = 1) else '0';
		
		output(5)   <= '1' when (carryOut(4) = 0 and inputA(5) = 0 and inputB(5) = 1) else
							'1' when (carryOut(4) = 0 and inputA(5) = 1 and inputB(5) = 0) else
							'1' when (carryOut(4) = 1 and inputA(5) = 0 and inputB(5) = 0) else
							'1' when (carryOut(5) = 1 and inputA(5) = 1 and inputB(5) = 1) else '0';
							
		carryOut(5) <= '1' when (inputA(5) = 1 and inputB(5) = 1) else
							'1' when (carryOut(4) = 1 and inputB(5) = 1) else
							'1' when (carryOut(4) = 1 and inputA(5) = 1) else '0';
		
		output(6)   <= '1' when (carryOut(5) = 0 and inputA(6) = 0 and inputB(6) = 1) else
							'1' when (carryOut(5) = 0 and inputA(6) = 1 and inputB(6) = 0) else
							'1' when (carryOut(5) = 1 and inputA(6) = 0 and inputB(6) = 0) else
							'1' when (carryOut(6) = 1 and inputA(6) = 1 and inputB(6) = 1) else '0';
							
		carryOut(6) <= '1' when (inputA(6) = 1 and inputB(6) = 1) else
							'1' when (carryOut(5) = 1 and inputB(6) = 1) else
							'1' when (carryOut(5) = 1 and inputA(6) = 1) else '0';
		
		output(7)   <= '1' when (carryOut(6) = 0 and inputA(7) = 0 and inputB(7) = 1) else
							'1' when (carryOut(6) = 0 and inputA(7) = 1 and inputB(7) = 0) else
							'1' when (carryOut(6) = 1 and inputA(7) = 0 and inputB(7) = 0) else
							'1' when (carryOut(7) = 1 and inputA(7) = 1 and inputB(7) = 1) else '0';
							
		carryOut(7) <= '1' when (inputA(7) = 1 and inputB(7) = 1) else
							'1' when (carryOut(6) = 1 and inputB(7) = 1) else
							'1' when (carryOut(6) = 1 and inputA(7) = 1) else '0';
		
	end if;
	elsif opcode(0) = 0 and opcode(1) = 0 and opcode(2) = 1 then
		-- SUB --
		output(0)   <= '1' when (carryIn = 0 and inputA(0) = 0 and inputB(0) = 1) else
							'1' when (carryIn = 0 and inputA(0) = 1 and inputB(0) = 0) else
							'1' when (carryIn = 1 and inputA(0) = 0 and inputB(0) = 0) else
							'1' when (carryIn = 1 and inputA(0) = 1 and inputB(0) = 1) else '0';
							
		carryOut(0) <= '1' when (inputA(0) = 0 and inputB(0) = 1) else 
							'1' when (carryIn = 1 and inputA(0) = 0) else
							'1' when (carryIn = 1 and inputB(0) = 1) else '0';
		
		output(1)   <= '1' when (carryOut(0) = 0 and inputA(1) = 0 and inputB(1) = 1) else
							'1' when (carryOut(0) = 0 and inputA(1) = 1 and inputB(1) = 0) else
							'1' when (carryOut(0) = 1 and inputA(1) = 0 and inputB(1) = 0) else
							'1' when (carryOut(1) = 1 and inputA(1) = 1 and inputB(1) = 1) else '0';
							
		carryOut(1) <= '1' when (inputA(1) = 0 and inputB(1) = 1) else
							'1' when (carryOut(0) = 1 and inputA(1) = 0) else
							'1' when (carryOut(0) = 1 and inputB(1) = 1) else '0';
		
		output(2)   <= '1' when (carryOut(1) = 0 and inputA(2) = 0 and inputB(2) = 1) else
							'1' when (carryOut(1) = 0 and inputA(2) = 1 and inputB(2) = 0) else
							'1' when (carryOut(1) = 1 and inputA(2) = 0 and inputB(2) = 0) else
							'1' when (carryOut(2) = 1 and inputA(2) = 1 and inputB(2) = 1) else '0';
							
		carryOut(2) <= '1' when (inputA(2) = 0 and inputB(2) = 1) else
							'1' when (carryOut(1) = 1 and inputA(2) = 0) else
							'1' when (carryOut(1) = 1 and inputB(2) = 1) else '0';
		
		output(3)   <= '1' when (carryOut(2) = 0 and inputA(3) = 0 and inputB(3) = 1) else
							'1' when (carryOut(2) = 0 and inputA(3) = 1 and inputB(3) = 0) else
							'1' when (carryOut(2) = 1 and inputA(3) = 0 and inputB(3) = 0) else
							'1' when (carryOut(3) = 1 and inputA(3) = 1 and inputB(3) = 1) else '0';
							
		carryOut(3) <= '1' when (inputA(3) = 0 and inputB(3) = 1) else
							'1' when (carryOut(2) = 1 and inputA(3) = 0) else
							'1' when (carryOut(2) = 1 and inputB(3) = 1) else '0';
		
		output(4)   <= '1' when (carryOut(3) = 0 and inputA(4) = 0 and inputB(4) = 1) else
							'1' when (carryOut(3) = 0 and inputA(4) = 1 and inputB(4) = 0) else
							'1' when (carryOut(3) = 1 and inputA(4) = 0 and inputB(4) = 0) else
							'1' when (carryOut(4) = 1 and inputA(4) = 1 and inputB(4) = 1) else '0';
							
		carryOut(4) <= '1' when (inputA(4) = 0 and inputB(4) = 1) else
							'1' when (carryOut(3) = 1 and inputA(4) = 0) else
							'1' when (carryOut(3) = 1 and inputB(4) = 1) else '0';
		
		output(5)   <= '1' when (carryOut(4) = 0 and inputA(5) = 0 and inputB(5) = 1) else
							'1' when (carryOut(4) = 0 and inputA(5) = 1 and inputB(5) = 0) else
							'1' when (carryOut(4) = 1 and inputA(5) = 0 and inputB(5) = 0) else
							'1' when (carryOut(5) = 1 and inputA(5) = 1 and inputB(5) = 1) else '0';
							
		carryOut(5) <= '1' when (inputA(5) = 0 and inputB(5) = 1) else
							'1' when (carryOut(4) = 1 and inputA(5) = 0) else
							'1' when (carryOut(4) = 1 and inputB(5) = 1) else '0';
		
		output(6)   <= '1' when (carryOut(5) = 0 and inputA(6) = 0 and inputB(6) = 1) else
							'1' when (carryOut(5) = 0 and inputA(6) = 1 and inputB(6) = 0) else
							'1' when (carryOut(5) = 1 and inputA(6) = 0 and inputB(6) = 0) else
							'1' when (carryOut(6) = 1 and inputA(6) = 1 and inputB(6) = 1) else '0';
							
		carryOut(6) <= '1' when (inputA(6) = 0 and inputB(6) = 1) else
							'1' when (carryOut(5) = 1 and inputA(6) = 0) else
							'1' when (carryOut(5) = 1 and inputB(6) = 1) else '0';
		
		output(7)   <= '1' when (carryOut(6) = 0 and inputA(7) = 0 and inputB(7) = 1) else
							'1' when (carryOut(6) = 0 and inputA(7) = 1 and inputB(7) = 0) else
							'1' when (carryOut(6) = 1 and inputA(7) = 0 and inputB(7) = 0) else
							'1' when (carryOut(7) = 1 and inputA(7) = 1 and inputB(7) = 1) else '0';
							
		carryOut(7) <= '1' when (inputA(7) = 0 and inputB(7) = 1) else
							'1' when (carryOut(6) = 1 and inputA(7) = 0) else
							'1' when (carryOut(6) = 1 and inputB(7) = 1) else '0';
	end if;
	elsif opcode(0) = 0 and opcode(1) = 1 and opcode(2) = 0 then
		-- AND --
		output(0) <= '1' when (inputA(0) = '1' and inputB(0) = '1') else '0';
		output(1) <= '1' when (inputA(1) = '1' and inputB(1) = '1') else '0';
		output(2) <= '1' when (inputA(2) = '1' and inputB(2) = '1') else '0';
		output(3) <= '1' when (inputA(3) = '1' and inputB(3) = '1') else '0';
		output(4) <= '1' when (inputA(4) = '1' and inputB(4) = '1') else '0';
		output(5) <= '1' when (inputA(5) = '1' and inputB(5) = '1') else '0';
		output(6) <= '1' when (inputA(6) = '1' and inputB(6) = '1') else '0';
		output(7) <= '1' when (inputA(7) = '1' and inputB(7) = '1') else '0';
	end if;
	elsif opcode(0) = 0 and opcode(1) = 1 and opcode(2) = 1 then
		-- OR --
		output(0) <= '1' when (inputA(0) = '1' or inputB(0) = '1') else '0';
		output(1) <= '1' when (inputA(1) = '1' or inputB(1) = '1') else '0';
		output(2) <= '1' when (inputA(2) = '1' or inputB(2) = '1') else '0';
		output(3) <= '1' when (inputA(3) = '1' or inputB(3) = '1') else '0';
		output(4) <= '1' when (inputA(4) = '1' or inputB(4) = '1') else '0';
		output(5) <= '1' when (inputA(5) = '1' or inputB(5) = '1') else '0';
		output(6) <= '1' when (inputA(6) = '1' or inputB(6) = '1') else '0';
		output(7) <= '1' when (inputA(7) = '1' or inputB(7) = '1') else '0';
	end if;
	elsif opcode(0) = 1 and opcode(1) = 0 and opcode(2) = 0 then
		-- NOT --
		output(0) <= '1' when (inputA(0) = '0') else '0';
		output(1) <= '1' when (inputA(1) = '0') else '0';
		output(2) <= '1' when (inputA(2) = '0') else '0';
		output(3) <= '1' when (inputA(3) = '0') else '0';
		output(4) <= '1' when (inputA(4) = '0') else '0';
		output(5) <= '1' when (inputA(5) = '0') else '0';
		output(6) <= '1' when (inputA(6) = '0') else '0';
		output(7) <= '1' when (inputA(7) = '0') else '0';
	end if;
	elsif opcode(0) = 1 and opcode(1) = 0 and opcode(2) = 1 then
		-- XOR --
		output(0) <= '1' when ((inputA(0) = '1' and inputB(0) = '0') or (inputA(0) = '0' and inputB(0) = '1')) else '0';
		output(1) <= '1' when ((inputA(1) = '1' and inputB(1) = '0') or (inputA(1) = '0' and inputB(1) = '1')) else '0';
		output(2) <= '1' when ((inputA(2) = '1' and inputB(2) = '0') or (inputA(2) = '0' and inputB(2) = '1')) else '0';
		output(3) <= '1' when ((inputA(3) = '1' and inputB(3) = '0') or (inputA(3) = '0' and inputB(3) = '1')) else '0';
		output(4) <= '1' when ((inputA(4) = '1' and inputB(4) = '0') or (inputA(4) = '0' and inputB(4) = '1')) else '0';
		output(5) <= '1' when ((inputA(5) = '1' and inputB(5) = '0') or (inputA(5) = '0' and inputB(5) = '1')) else '0';
		output(6) <= '1' when ((inputA(6) = '1' and inputB(6) = '0') or (inputA(6) = '0' and inputB(6) = '1')) else '0';
		output(7) <= '1' when ((inputA(7) = '1' and inputB(7) = '0') or (inputA(7) = '0' and inputB(7) = '1')) else '0';
	end if;
	elsif opcode(0) = 1 and opcode(1) = 1 and opcode(2) = 0 then
		-- NAND --
		output(0) <= '0' when (inputA(0) = '1' and inputB(0) = '1') else '1';
		output(1) <= '0' when (inputA(1) = '1' and inputB(1) = '1') else '1';
		output(2) <= '0' when (inputA(2) = '1' and inputB(2) = '1') else '1';
		output(3) <= '0' when (inputA(3) = '1' and inputB(3) = '1') else '1';
		output(4) <= '0' when (inputA(4) = '1' and inputB(4) = '1') else '1';
		output(5) <= '0' when (inputA(5) = '1' and inputB(5) = '1') else '1';
		output(6) <= '0' when (inputA(6) = '1' and inputB(6) = '1') else '1';
		output(7) <= '0' when (inputA(7) = '1' and inputB(7) = '1') else '1';
	end if;
	elsif opcode(0) = 1 and opcode(1) = 1 and opcode(2) = 1 then
		-- NOR --
		output(0) <= '1' when (inputA(0) = '0' and inputB(0) = '0') else '0';
		output(1) <= '1' when (inputA(1) = '0' and inputB(1) = '0') else '0';
		output(2) <= '1' when (inputA(2) = '0' and inputB(2) = '0') else '0';
		output(3) <= '1' when (inputA(3) = '0' and inputB(3) = '0') else '0';
		output(4) <= '1' when (inputA(4) = '0' and inputB(4) = '0') else '0';
		output(5) <= '1' when (inputA(5) = '0' and inputB(5) = '0') else '0';
		output(6) <= '1' when (inputA(6) = '0' and inputB(6) = '0') else '0';
		output(7) <= '1' when (inputA(7) = '0' and inputB(7) = '0') else '0';
	end if;
end ula;