library ieee;
use ieee.std_logic_1164.all;

-- A entidade descreve o número de portas, a direção das portas e o tipo delas.
entity mux is
	port (
		a, b, c, d : in bit;
		s0, s1 : in bit;
		x : out bit
	);
end mux;

-- ARQUITETURA DE DESCRIÇÃO COMPORTAMENTAL
-- A arquitetura descreve a funcionalidade subjacente e contém a declaração que modela o comportamento da entidade.
architecture dataflow of mux is	-- a palavra chave architecture siginifica que essa declaração descreve a arquitetura de uma entidade
	signal selection : integer;		-- nessa parte é onde os sinais locais são declarados para uso posterior
begin
	selection <= 	0 when s0 = '0' and s1 = '0' else
					1 when s0 = '1' and s1 = '0' else
					2 when s0 = '0' and s1 = '1' else
					3;
	
	-- As atribuições ao sinal x não ocorrem instantaneamente por que cada um dos valores atribuidos a x possuem uma clausula after
	x <=	a after 0.5 NS when selection = 0 else
			b after 0.5 NS when selection = 1 else
			c after 0.5 NS when selection = 2 else
			d after 0.5 NS;
end dataflow;

-- ARQUITETURA DE DESCRIÇÃO ESTRUTURAL
architecture netlist of mux is
	component andgate
		port (a, b, c : in bit; c : out bit);
	end component;
	
	component inverter
		port (in1: in bit; x : out bit);
	end component;
	
	component orgate
		port (a, b, c, d : in bit; x : out bit);
	end component;
	
signal s0_inv, s1_inv, x1, x2, x3, x4 : bit;
	
begin
	U1 : inverter(s0, s0_inv);
	U2 : inverter(s1, s1_inv);
	U3 : andgate(a, s0_inv, s1_inv, x1);
	U4 : andgate(b, s0, s1_inv, x2);
	U5 : andgate(c, s0_inv, s1, x3);
	U6 : andgate(d, s0, s1, x4);
	U7 : orgate(x2 => b, x1 => a, x4 => d, x3 => c, x => x); -- para não ter que passar os parâmetros na ordem exata que está declarada no componente orgate **fazer isso não é recomendado
end netlist;

-- ARQUITETURA DE DESCRIÇÃO PROCESSUAL
ARCHITECTURE sequential OF mux IS
	 -- process declarative part. The variable sel is used locally to contain the value computed based on ports s0 and s1.
-- The statement part of the process starts at the keyword BEGIN and ends at the END PROCESS line.
BEGIN
process (a, b, c, d, s0, s1 ) -- sensitivity list part-> enumera exatamente quais sinais causam a declaração de processo a ser executada
	VARIABLE sel : INTEGER;
begin
-- All the statements enclosed by the process are sequential statements.
	IF s0 = ‘0’ and s1 = ‘0’ THEN
		sel := 0;
	ELSIF s0 = ‘1’ and s1 = ‘0’ THEN
		sel := 1;
	ELSIF s0 = ‘0’ and s1 = ‘0’ THEN
		sel := 2;
	ELSE
		sel := 3;
	END IF;
	CASE sel IS
		WHEN 0 =>
			x <= a;
		WHEN 1 =>
			x <= b;
		WHEN 2 =>
			x <= c;
		WHEN OTHERS =>
			x <= d;
	END CASE;
END PROCESS;
END sequential;