library ieee;
use ieee.std_logic_1164.all;

entity subtractor_1bit is
	port(
		-- inputs
		input1  : in std_logic;
		input2  : in std_logic;
		carryIn : in std_logic;
		
		-- outputs
		carryOut : out std_logic;
		subtract : out std_logic
	);
end subtractor_1bit;

architecture subtractor_1bit of subtractor_1bit is
begin
	subtract <= ((not input1) and (not input2) and carryIn) or
					((not input1) and input2 and (not carryIn)) or
					(input1 and (not input2) and (not input2)) or
					(input1 and input2 and carryIn);
	
	carryOut <= ((not input1) and carryIn) or
					((not input1) and input2) or
					(input2 and carryIn);
end subtractor_1bit; 