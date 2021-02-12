library ieee;
use ieee.std_logic_1164.all;

entity adder is
	generic (n : integer); -- um valor n qualquer
	port (
		-- entradas
		a    : in std_logic_vector(n downto 0);
		b    : in std_logic_vector(n downto 0);
		cin  : in std_logic;
		
		-- saídas
		sum  : out std_logic_vector(n downto 0);
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
	signal carry : std_logic_vector(0 to n);
begin
	carry(0) <= cin;
	cout <= carry(n);
	
	-- instancia de um single-bit adder n vezes
	gen: for i in 1 to n generate
	s  : adder_1bit port map (
		a => a(i),
		b => b(i),
		cin => carry(i - 1),
		sum => sum(n),
		cout => carry(i)
	);
	end generate;
end adder;
	