library ieee;
use ieee.std_logic_1164.all;
library work;
--use work.adder_1bit.all;

entity adder_8bits is
	port(
		input1 : in std_logic;
		input2 : in std_logic;
		output : out std_logic
	);
end adder_8bits;

architecture adder_8bits of adder_8bits is
	component adder_1bit
		port (
			input1   : in std_logic;
			input2   : in std_logic;
			carryIn  : in std_logic;
			sum	   : out std_logic;
			carryOut : out std_logic
		);
	end component;
begin
	-- to do
end adder_8bits;