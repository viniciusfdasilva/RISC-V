library ieee;
use ieee.std_logic_1164.all;

entity nor_1bit is
	port(
		-- inputs
		a : in std_logic;
		b : in std_logic;
		-- outputs
		output : out std_logic
	);
end nor_1bit;

architecture nor_1bit of nor_1bit is
begin
	output <= a nor b;
end nor_1bit;