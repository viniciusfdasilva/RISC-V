library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
		a, b : in std_logic;
			q : out std_logic
	);
end or_gate;

architecture or_gate of or_gate is
begin
	q <=  '0' when a = '0' and b = '0' else
			'1' when a = '0' and b = '1' else
			'1' when a = '1' and b = '0' else
			'1' when a = '1' and b = '1';
-- q <= a or b;
end or_gate;