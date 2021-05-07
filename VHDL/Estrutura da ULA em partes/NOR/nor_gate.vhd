library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
	port(
		a, b : in std_logic;
			q : out std_logic
	);
end nor_gate;

architecture nor_gate of nor_gate is
begin
	q <=  '1' when a = '0' and b = '0' else
			'0' when a = '0' and b = '1' else
			'0' when a = '1' and b = '0' else
			'0' when a = '1' and b = '1';
-- q <= not (a or b);
end nor_gate;