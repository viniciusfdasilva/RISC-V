library ieee;
use ieee.std_logic_vector.all;

entity nor_generic is
	generic (n : integer := 8);
	port(
		-- inputs
		a : in std_logic_vector((n -1) downto 0);
		b : in std_logic_vector((n -1) downto 0);
		-- outputs
		output : in std_logic_vector((n -1) downto 0)
	);
end nor_generic;

architecture nor_generic of nor_generic is
	component nor_1bit
		port(
			a : in std_logic;
			b : in std_logic;
			output : out std_logic
		);
	end component;
begin
	gen : for i in 0 to (n - 1) generate
	s : nor_1bit
	port map(
		a      => a(i),
		b      => b(i),
		output => output(i)
	);
	end generate;
end nor_generic;