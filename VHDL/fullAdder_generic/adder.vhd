library ieee;
use ieee.std_logic_1164.all;

entity adder is
	generic (n : integer := 8); -- um valor n qualquer
	port (
		-- entradas
		a    : in std_logic_vector((n - 1) downto 0);
		b    : in std_logic_vector((n - 1) downto 0);
		cin  : in std_logic;
		
		-- saídas
		sum  : out std_logic_vector((n - 1) downto 0);
		cout : out std_logic
	);
end adder;

architecture adder of adder is
	-- chamar o adder de 1 bit
	component adder_1bit
		port(
			a    : in std_logic;
			b    : in std_logic;
			cin  : in std_logic;
			sum  : out std_logic;
			cout : out std_logic
		);
	end component;
	
	-- sinal local de carry
	signal carry : std_logic_vector(0 to (n - 1));
begin
	--carry(0) <= cin;
	--cout <= carry(n - 1);
	
	-- instancia de um single-bit adder n vezes
	gen: for i in 0 to (n - 1) generate
	s  : adder_1bit 
	--generic map (
	--	n => 8
	--)	
	port map (
		a => a(i),
		b => b(i),
		cin => carry(i),
		sum => sum(i),
		cout => carry(i)
	);
	end generate;
end adder;
	