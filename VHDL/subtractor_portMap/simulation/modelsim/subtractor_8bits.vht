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
-- Generated on "02/12/2021 08:55:19"
                                                            
-- Vhdl Test Bench template for design  :  subtractor_8bits
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY subtractor_8bits_vhd_tst IS
END subtractor_8bits_vhd_tst;
ARCHITECTURE subtractor_8bits_arch OF subtractor_8bits_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carryIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL carryOut : STD_LOGIC;
SIGNAL input1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL input2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT subtractor_8bits
	PORT (
	carryIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	carryOut : OUT STD_LOGIC;
	input1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	input2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : subtractor_8bits
	PORT MAP (
-- list connections between master ports and signals
	carryIn => carryIn,
	carryOut => carryOut,
	input1 => input1,
	input2 => input2,
	output => output
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
WAIT;                                                        
END PROCESS always;                                          
END subtractor_8bits_arch;
