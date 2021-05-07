library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador_4bits is
	port (
		clock : in std_logic;
		clear : in std_logic;
		load  : in std_logic;
		
		Q     : out std_logic_vector(3 downto 0)
	);
end contador_4bits;

architecture exemplo of contador_4bits is
signal IQ : unsigned (3 downto 0);

begin
	process (clock, clear, load, IQ)
	begin
	
	if clock'event and clock = '1' then
		if clear = '1' then
			IQ <= (others => '0');
		elsif load = '1' then
			IQ <= IQ + 1;
		end if;
	end if;
		
	Q <= std_logic_vector(IQ);
	end process;
end exemplo;