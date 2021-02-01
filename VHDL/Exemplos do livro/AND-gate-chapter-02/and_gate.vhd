-- AND gate example pages 16 and 17
library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
	port (a, b : in bit;
			c    : out bit);
end and_gate;

architecture and2_behav of and_gate is
begin
	c <= a and b after 5 ns;
end and2_behav;