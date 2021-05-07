library ieee;
use ieee.std_logic_1164.all;

entity nand_generic is
	generic (n : integer := 8);
	
	port(
		-- inputs
		a : in std_logic_vector((n - 1) downto 0);
		b : in std_logic_vector((n - 1) downto 0);
		
		-- outputs
		output : out std_logic_vector((n - 1) downto 0)
	);
end nand_generic;

architecture nand_generic of nand_generic is
	component nand_1bit
		port(
			a      : in std_logic;
			b      : in std_logic;
			output : out std_logic
		);
	end component;
		
begin
	gen: for i in 0 to (n - 1) generate
	s: nand_1bit
		port map (
			a => a(i),
			b => b(i),
			output => output(i)
		);
	end generate;
end nand_generic;