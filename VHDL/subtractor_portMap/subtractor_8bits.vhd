library ieee;
use ieee.std_logic_1164.all;

entity subtractor_8bits is
	port(
		-- inputs
		input1 : in std_logic_vector(7 downto 0);
		input2 : in std_logic_vector(7 downto 0);
		carryIn : std_logic_vector(7 downto 0);
		
		-- outputs
		output   : out std_logic_vector(7 downto 0);
		carryOut : out std_logic
	);
end subtractor_8bits;

architecture subtractor_8bits of subtractor_8bits is
	signal carry : std_logic_vector(6 downto 0);
	component subtractor_1bit
		port (
			input1   : in std_logic;
			input2   : in std_logic;
			carryIn  : in std_logic;
			carryOut : out std_logic;
			subtract : out std_logic
		);		
	end component;
begin
	Out0 : subtractor_1bit
	port map (
		input1   => input1(0),
		input2   => input2(0),
		carryIn  => '0',
		subtract => output(0),
		carryOut => carry(0)
	);
	
	Out1 : subtractor_1bit
	port map (
		input1   => input1(1),
		input2   => input2(1),
		carryIn  => carry(0),
		subtract => output(1),
		carryOut => carry(1)
	);
	
	Out2 : subtractor_1bit
	port map (
		input1   => input1(2),
		input2   => input2(2),
		carryIn  => carry(1),
		subtract => output(2),
		carryOut => carry(2)
	);
	
	Out3 : subtractor_1bit
	port map (
		input1   => input1(3),
		input2   => input2(3),
		carryIn  => carry(2),
		subtract => output(3),
		carryOut => carry(3)
	);
	
	Out4 : subtractor_1bit
	port map (
		input1   => input1(4),
		input2   => input2(4),
		carryIn  => carry(3),
		subtract => output(4),
		carryOut => carry(4)
	);
	
	Out5 : subtractor_1bit
	port map (
		input1   => input1(5),
		input2   => input2(5),
		carryIn  => carry(4),
		subtract => output(5),
		carryOut => carry(5)
	);
	
	Out6 : subtractor_1bit
	port map (
		input1   => input1(6),
		input2   => input2(6),
		carryIn  => carry(5),
		subtract => output(6),
		carryOut => carry(6)
	);
	
	Out7 : subtractor_1bit
	port map (
		input1   => input1(7),
		input2   => input2(7),
		carryIn  => carry(6),
		subtract => output(7),
		carryOut => carryOut
	);
end subtractor_8bits;