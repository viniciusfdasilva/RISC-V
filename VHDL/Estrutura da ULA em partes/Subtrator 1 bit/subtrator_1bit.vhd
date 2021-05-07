library ieee;
use ieee.std_logic_1164.all;

entity subtrator_1bit is
	port(
		a, b, carryIn       : in std_logic;
		subtracao, carryOut : out std_logic
);
end subtrator_1bit;

architecture subtrator of subtrator_1bit is
begin
	subtracao <=  	'0' when a = '0' and b = '0' and carryIn = '0' else
						'1' when a = '0' and b = '0' and carryIn = '1' else
						'1' when a = '0' and b = '1' and carryIn = '0' else
						'0' when a = '0' and b = '1' and carryIn = '1' else
						'1' when a = '1' and b = '0' and carryIn = '0' else
						'0' when a = '1' and b = '0' and carryIn = '1' else
						'0' when a = '1' and b = '1' and carryIn = '0' else
						'1' when a = '1' and b = '1' and carryIn = '1';
				
	carryOut <= '0' when a = '0' and b = '0' and carryIn = '0' else
					'1' when a = '0' and b = '0' and carryIn = '1' else
					'0' when a = '0' and b = '1' and carryIn = '0' else
					'0' when a = '0' and b = '1' and carryIn = '1' else
					'1' when a = '1' and b = '0' and carryIn = '0' else
					'1' when a = '1' and b = '0' and carryIn = '1' else
					'0' when a = '1' and b = '1' and carryIn = '0' else
					'1' when a = '1' and b = '1' and carryIn = '1';
end subtrator;