library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
	port(
		a : in std_logic;
		q : out std_logic
	);
end not_gate;

architecture not_gate of not_gate is
begin
	q <=  '1' when a = '0' else
			'0' when a = '1';
-- q <= not a;
end not_gate;