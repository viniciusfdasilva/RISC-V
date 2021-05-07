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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/28/2021 20:21:53"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador_1bit IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	carryIn : IN std_logic;
	soma : BUFFER std_logic;
	carryOut : BUFFER std_logic
	);
END somador_1bit;

-- Design Ports Information
-- soma	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryIn	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_carryIn : std_logic;
SIGNAL ww_soma : std_logic;
SIGNAL ww_carryOut : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \carryIn~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \soma~0_combout\ : std_logic;
SIGNAL \carryOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_carryIn~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_carryIn <= carryIn;
soma <= ww_soma;
carryOut <= ww_carryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_carryIn~input_o\ <= NOT \carryIn~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X44_Y45_N19
\soma~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \soma~0_combout\,
	devoe => ww_devoe,
	o => ww_soma);

-- Location: IOOBUF_X43_Y45_N53
\carryOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \carryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut);

-- Location: IOIBUF_X44_Y45_N35
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X44_Y45_N1
\carryIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carryIn,
	o => \carryIn~input_o\);

-- Location: IOIBUF_X44_Y45_N52
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X44_Y44_N30
\soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma~0_combout\ = ( \carryIn~input_o\ & ( \b~input_o\ & ( \a~input_o\ ) ) ) # ( !\carryIn~input_o\ & ( \b~input_o\ & ( !\a~input_o\ ) ) ) # ( \carryIn~input_o\ & ( !\b~input_o\ & ( !\a~input_o\ ) ) ) # ( !\carryIn~input_o\ & ( !\b~input_o\ & ( 
-- \a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~input_o\,
	datae => \ALT_INV_carryIn~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \soma~0_combout\);

-- Location: LABCELL_X44_Y44_N9
\carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carryOut~0_combout\ = ( \carryIn~input_o\ & ( \b~input_o\ ) ) # ( !\carryIn~input_o\ & ( \b~input_o\ & ( \a~input_o\ ) ) ) # ( \carryIn~input_o\ & ( !\b~input_o\ & ( \a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a~input_o\,
	datae => \ALT_INV_carryIn~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \carryOut~0_combout\);

-- Location: LABCELL_X43_Y28_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


