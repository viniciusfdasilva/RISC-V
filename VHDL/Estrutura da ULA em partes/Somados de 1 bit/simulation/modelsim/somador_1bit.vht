-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/26/2021 18:45:41"
                                                            
-- Vhdl Test Bench template for design  :  somador_1bit
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador_1bit_vhd_tst IS
END somador_1bit_vhd_tst;
ARCHITECTURE somador_1bit_arch OF somador_1bit_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL carryIn : STD_LOGIC;
SIGNAL carryOut : STD_LOGIC;
SIGNAL soma : STD_LOGIC;
COMPONENT somador_1bit
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	carryIn : IN STD_LOGIC;
	carryOut : BUFFER STD_LOGIC;
	soma : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : somador_1bit
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	carryIn => carryIn,
	carryOut => carryOut,
	soma => soma
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
	for I in 0 to 3 loop
		a <= '0'; b <= '0'; carryIn <= '0';
		wait for 100 ns;
		b <= '1';
		wait for 100 ns;
		a <= '1'; b <= '0';
		wait for 100 ns;
		b <= '1';
		wait for 100 ns;
		a <= '0'; b <= '0'; carryIn <= '1';
		wait for 100 ns;
		b <= '1';
		wait for 100 ns;
		a <= '1'; b <= '0';
		wait for 100 ns;
		b <= '1'; carryIn <= '1';
		wait for 100 ns;
	end loop;
		
WAIT;                                                        
END PROCESS always;                                          
END somador_1bit_arch;
