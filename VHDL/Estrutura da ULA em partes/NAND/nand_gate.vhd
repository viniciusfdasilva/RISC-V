library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
	port(
		a, b : in std_logic;
			q : out std_logic
	);
end nand_gate;

architecture nand_gate of nand_gate is
begin
	q <=  '1' when a = '0' and b = '0' else
			'1' when a = '0' and b = '1' else
			'1' when a = '1' and b = '0' else
			'0' when a = '1' and b = '1';
-- q <= not (a and b);
end nand_gate;