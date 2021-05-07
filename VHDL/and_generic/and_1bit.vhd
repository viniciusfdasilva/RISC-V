library ieee;
use ieee.std_logic_1164.all;

entity and_1bit is
	port(
		-- inputs
		a : in std_logic;
		b : in std_logic;
		
		-- outputs
		output : out std_logic
	);
end and_1bit;

architecture and_1bit of and_1bit is
begin
	output <= a and b;
end and_1bit;