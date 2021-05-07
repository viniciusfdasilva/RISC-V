library ieee;
use ieee.std_logic_1164.all;

entity and_generic is
	generic (n : integer := 8);
	port(
		-- inputs
		a : in std_logic_vector((n - 1) downto 0);
		b : in std_logic_vector((n - 1) downto 0);
		
		-- outputs
		output : out std_logic_vector((n - 1) downto 0)
	);
end and_generic;

architecture and_generic of and_generic is
	component and_1bit
		port(
			a : in std_logic;
			b : in std_logic;
			output : out std_logic
		);
	end component;
	
begin
	gen: for i in 0 to (n - 1) generate
	s: and_1bit
		port map(
			a => a(i),
			b => b(i),
			output => output(i)
		);
	end generate;
end and_generic;