library ieee;
use ieee.std_logic_1164.all;

entity nand_1bit is
	port (
		-- inputs
		a : in std_logic;
		b : in std_logic;
		
		-- outputs
		output : out std_logic;
	);
end nand_1bit;

architecture nand_1bit of nand_1bit is
begin
	output <= a nand b;
end nand_1bit;