library ieee;
use ieee.std_logic_1164.all;

entity adder_1bit is
	port (
		input1   : in std_logic;
		input2   : in std_logic;
		carryIn  : in std_logic;
		sum	   : out std_logic;
		carryOut : out std_logic
	);
end adder_1bitorcrux1801  ;

architecture adder_1bit of adder_1bit is
begin
	sum <= (input1 xor input2) xor carryIn;
	carryOut <= (input1 and input2) or (carryIn and input1) or (carryIn and input2);
end adder_1bit;