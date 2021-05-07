library ieee;
use ieee.std_logic_1164.all;
library work;
--use work.adder_1bit.all;

entity adder_8bits is
	port (
		input1 : in  std_logic_vector(7 downto 0);
		input2 : in  std_logic_vector(7 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end adder_8bits;

architecture adder_8bits of adder_8bits is
	signal carry : std_logic_vector(7 downto 0);
	component adder_1bit
		port (
			input1   : in  std_logic;
			input2   : in  std_logic;
			carryIn  : in  std_logic;
			sum	   : out std_logic;
			carryOut : out std_logic
		);
	end component;
begin
	Out0 : adder_1bit
	port map (
		input1   => input1(0),
		input2   => input2(0),
		carryIn  => '0',
		sum	   => output(0),
		carryOut => carry(0)
	);
	
	Out1 : adder_1bit
	port map (
		input1   => input1(1),
		input2   => input2(1),
		carryIn  => carry(0),
		sum	   => output(1),
		carryOut => carry(1)
	);
	
	Out2 : adder_1bit
	port map (
		input1   => input1(2),
		input2   => input2(2),
		carryIn  => carry(1),
		sum	   => output(2),
		carryOut => carry(2)
	);
	
	Out3 : adder_1bit
	port map (
		input1   => input1(3),
		input2   => input2(3),
		carryIn  => carry(2),
		sum	   => output(3),
		carryOut => carry(3)
	);
	
	Out4 : adder_1bit
	port map (
		input1   => input1(4),
		input2   => input2(4),
		carryIn  => carry(3),
		sum	   => output(4),
		carryOut => carry(4)
	);
	
	Out5 : adder_1bit
	port map (
		input1   => input1(5),
		input2   => input2(5),
		carryIn  => carry(4),
		sum	   => output(5),
		carryOut => carry(5)
	);
	
	Out6 : adder_1bit
	port map (
		input1   => input1(6),
		input2   => input2(6),
		carryIn  => carry(5),
		sum	   => output(6),
		carryOut => carry(6)
	);
	
	Out7 : adder_1bit
	port map (
		input1   => input1(7),
		input2   => input2(7),
		carryIn  => carry(6),
		sum	   => output(7),
		carryOut => carry(7)
	);
end adder_8bits;