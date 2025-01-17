library ieee;
use ieee.std_logic_1164.all;

entity somador_1bit is
	port(
		a, b, carryIn  : in std_logic;
		soma, carryOut : out std_logic
);
end somador_1bit;

architecture somador of somador_1bit is
begin
	soma <=  '0' when a = '0' and b = '0' and carryIn = '0' else
				'1' when a = '0' and b = '0' and carryIn = '1' else
				'1' when a = '0' and b = '1' and carryIn = '0' else
				'0' when a = '0' and b = '1' and carryIn = '1' else
				'1' when a = '1' and b = '0' and carryIn = '0' else
				'1' when a = '1' and b = '0' and carryIn = '1' else
				'1' when a = '1' and b = '1' and carryIn = '0' else
				'1' when a = '1' and b = '1' and carryIn = '1';
				
	carryOut <= '0' when a = '0' and b = '0' and carryIn = '0' else
					'0' when a = '0' and b = '0' and carryIn = '1' else
					'0' when a = '0' and b = '1' and carryIn = '0' else
					'1' when a = '0' and b = '1' and carryIn = '1' else
					'0' when a = '1' and b = '0' and carryIn = '0' else
					'1' when a = '1' and b = '0' and carryIn = '1' else
					'1' when a = '1' and b = '1' and carryIn = '0' else
					'1' when a = '1' and b = '1' and carryIn = '1';
end somador;