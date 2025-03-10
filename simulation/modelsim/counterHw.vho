-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/08/2025 22:09:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counterHw IS
    PORT (
	enable : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counterHw;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF counterHw IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enablesync|ff1~feeder_combout\ : std_logic;
SIGNAL \enablesync|ff1~q\ : std_logic;
SIGNAL \enablesync|sync_q~feeder_combout\ : std_logic;
SIGNAL \enablesync|sync_q~q\ : std_logic;
SIGNAL \reg_inst|Add0~145_sumout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst_sync|ff1~feeder_combout\ : std_logic;
SIGNAL \rst_sync|ff1~q\ : std_logic;
SIGNAL \rst_sync|sync_q~feeder_combout\ : std_logic;
SIGNAL \rst_sync|sync_q~q\ : std_logic;
SIGNAL \reg_inst|Add0~146\ : std_logic;
SIGNAL \reg_inst|Add0~141_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~142\ : std_logic;
SIGNAL \reg_inst|Add0~137_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~138\ : std_logic;
SIGNAL \reg_inst|Add0~133_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~134\ : std_logic;
SIGNAL \reg_inst|Add0~129_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~130\ : std_logic;
SIGNAL \reg_inst|Add0~125_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~126\ : std_logic;
SIGNAL \reg_inst|Add0~121_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~122\ : std_logic;
SIGNAL \reg_inst|Add0~117_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~118\ : std_logic;
SIGNAL \reg_inst|Add0~113_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~114\ : std_logic;
SIGNAL \reg_inst|Add0~109_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~110\ : std_logic;
SIGNAL \reg_inst|Add0~105_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~106\ : std_logic;
SIGNAL \reg_inst|Add0~101_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~102\ : std_logic;
SIGNAL \reg_inst|Add0~97_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~98\ : std_logic;
SIGNAL \reg_inst|Add0~93_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~94\ : std_logic;
SIGNAL \reg_inst|Add0~89_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~90\ : std_logic;
SIGNAL \reg_inst|Add0~85_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~86\ : std_logic;
SIGNAL \reg_inst|Add0~81_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~82\ : std_logic;
SIGNAL \reg_inst|Add0~77_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~78\ : std_logic;
SIGNAL \reg_inst|Add0~73_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~74\ : std_logic;
SIGNAL \reg_inst|Add0~69_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~70\ : std_logic;
SIGNAL \reg_inst|Add0~65_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~66\ : std_logic;
SIGNAL \reg_inst|Add0~61_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~62\ : std_logic;
SIGNAL \reg_inst|Add0~57_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~58\ : std_logic;
SIGNAL \reg_inst|Add0~53_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~54\ : std_logic;
SIGNAL \reg_inst|Add0~49_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~50\ : std_logic;
SIGNAL \reg_inst|Add0~1_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~2\ : std_logic;
SIGNAL \reg_inst|Add0~5_sumout\ : std_logic;
SIGNAL \reg_inst|reg_val[26]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_inst|Add0~6\ : std_logic;
SIGNAL \reg_inst|Add0~9_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~10\ : std_logic;
SIGNAL \reg_inst|Add0~13_sumout\ : std_logic;
SIGNAL \hex0_inst|Mux6~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_inst|Mux0~0_combout\ : std_logic;
SIGNAL \reg_inst|Add0~14\ : std_logic;
SIGNAL \reg_inst|Add0~17_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~18\ : std_logic;
SIGNAL \reg_inst|Add0~21_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~22\ : std_logic;
SIGNAL \reg_inst|Add0~25_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~26\ : std_logic;
SIGNAL \reg_inst|Add0~29_sumout\ : std_logic;
SIGNAL \hex1_inst|Mux6~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux5~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux4~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux3~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux2~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux1~0_combout\ : std_logic;
SIGNAL \hex1_inst|Mux0~0_combout\ : std_logic;
SIGNAL \reg_inst|Add0~30\ : std_logic;
SIGNAL \reg_inst|Add0~33_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~34\ : std_logic;
SIGNAL \reg_inst|Add0~37_sumout\ : std_logic;
SIGNAL \reg_inst|Add0~38\ : std_logic;
SIGNAL \reg_inst|Add0~41_sumout\ : std_logic;
SIGNAL \reg_inst|reg_val[35]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_inst|Add0~42\ : std_logic;
SIGNAL \reg_inst|Add0~45_sumout\ : std_logic;
SIGNAL \reg_inst|reg_val[33]~DUPLICATE_q\ : std_logic;
SIGNAL \hex2_inst|Mux6~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux5~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux4~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux3~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux2~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux1~0_combout\ : std_logic;
SIGNAL \hex2_inst|Mux0~0_combout\ : std_logic;
SIGNAL \reg_inst|reg_val\ : std_logic_vector(36 DOWNTO 0);
SIGNAL \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\ : std_logic;
SIGNAL \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \enablesync|ALT_INV_ff1~q\ : std_logic;
SIGNAL \enablesync|ALT_INV_sync_q~q\ : std_logic;
SIGNAL \rst_sync|ALT_INV_ff1~q\ : std_logic;
SIGNAL \rst_sync|ALT_INV_sync_q~q\ : std_logic;
SIGNAL \hex2_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex1_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex0_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \reg_inst|ALT_INV_reg_val\ : std_logic_vector(36 DOWNTO 0);

BEGIN

ww_enable <= enable;
ww_rst <= rst;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\ <= NOT \reg_inst|reg_val[35]~DUPLICATE_q\;
\reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\ <= NOT \reg_inst|reg_val[33]~DUPLICATE_q\;
\reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\ <= NOT \reg_inst|reg_val[26]~DUPLICATE_q\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\enablesync|ALT_INV_ff1~q\ <= NOT \enablesync|ff1~q\;
\enablesync|ALT_INV_sync_q~q\ <= NOT \enablesync|sync_q~q\;
\rst_sync|ALT_INV_ff1~q\ <= NOT \rst_sync|ff1~q\;
\rst_sync|ALT_INV_sync_q~q\ <= NOT \rst_sync|sync_q~q\;
\hex2_inst|ALT_INV_Mux0~0_combout\ <= NOT \hex2_inst|Mux0~0_combout\;
\hex1_inst|ALT_INV_Mux0~0_combout\ <= NOT \hex1_inst|Mux0~0_combout\;
\hex0_inst|ALT_INV_Mux0~0_combout\ <= NOT \hex0_inst|Mux0~0_combout\;
\reg_inst|ALT_INV_reg_val\(0) <= NOT \reg_inst|reg_val\(0);
\reg_inst|ALT_INV_reg_val\(1) <= NOT \reg_inst|reg_val\(1);
\reg_inst|ALT_INV_reg_val\(2) <= NOT \reg_inst|reg_val\(2);
\reg_inst|ALT_INV_reg_val\(3) <= NOT \reg_inst|reg_val\(3);
\reg_inst|ALT_INV_reg_val\(4) <= NOT \reg_inst|reg_val\(4);
\reg_inst|ALT_INV_reg_val\(5) <= NOT \reg_inst|reg_val\(5);
\reg_inst|ALT_INV_reg_val\(6) <= NOT \reg_inst|reg_val\(6);
\reg_inst|ALT_INV_reg_val\(7) <= NOT \reg_inst|reg_val\(7);
\reg_inst|ALT_INV_reg_val\(8) <= NOT \reg_inst|reg_val\(8);
\reg_inst|ALT_INV_reg_val\(9) <= NOT \reg_inst|reg_val\(9);
\reg_inst|ALT_INV_reg_val\(10) <= NOT \reg_inst|reg_val\(10);
\reg_inst|ALT_INV_reg_val\(11) <= NOT \reg_inst|reg_val\(11);
\reg_inst|ALT_INV_reg_val\(12) <= NOT \reg_inst|reg_val\(12);
\reg_inst|ALT_INV_reg_val\(13) <= NOT \reg_inst|reg_val\(13);
\reg_inst|ALT_INV_reg_val\(14) <= NOT \reg_inst|reg_val\(14);
\reg_inst|ALT_INV_reg_val\(15) <= NOT \reg_inst|reg_val\(15);
\reg_inst|ALT_INV_reg_val\(16) <= NOT \reg_inst|reg_val\(16);
\reg_inst|ALT_INV_reg_val\(17) <= NOT \reg_inst|reg_val\(17);
\reg_inst|ALT_INV_reg_val\(18) <= NOT \reg_inst|reg_val\(18);
\reg_inst|ALT_INV_reg_val\(19) <= NOT \reg_inst|reg_val\(19);
\reg_inst|ALT_INV_reg_val\(20) <= NOT \reg_inst|reg_val\(20);
\reg_inst|ALT_INV_reg_val\(21) <= NOT \reg_inst|reg_val\(21);
\reg_inst|ALT_INV_reg_val\(22) <= NOT \reg_inst|reg_val\(22);
\reg_inst|ALT_INV_reg_val\(23) <= NOT \reg_inst|reg_val\(23);
\reg_inst|ALT_INV_reg_val\(24) <= NOT \reg_inst|reg_val\(24);
\reg_inst|ALT_INV_reg_val\(36) <= NOT \reg_inst|reg_val\(36);
\reg_inst|ALT_INV_reg_val\(35) <= NOT \reg_inst|reg_val\(35);
\reg_inst|ALT_INV_reg_val\(34) <= NOT \reg_inst|reg_val\(34);
\reg_inst|ALT_INV_reg_val\(33) <= NOT \reg_inst|reg_val\(33);
\reg_inst|ALT_INV_reg_val\(32) <= NOT \reg_inst|reg_val\(32);
\reg_inst|ALT_INV_reg_val\(31) <= NOT \reg_inst|reg_val\(31);
\reg_inst|ALT_INV_reg_val\(30) <= NOT \reg_inst|reg_val\(30);
\reg_inst|ALT_INV_reg_val\(29) <= NOT \reg_inst|reg_val\(29);
\reg_inst|ALT_INV_reg_val\(28) <= NOT \reg_inst|reg_val\(28);
\reg_inst|ALT_INV_reg_val\(27) <= NOT \reg_inst|reg_val\(27);
\reg_inst|ALT_INV_reg_val\(26) <= NOT \reg_inst|reg_val\(26);
\reg_inst|ALT_INV_reg_val\(25) <= NOT \reg_inst|reg_val\(25);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X37_Y4_N18
\enablesync|ff1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enablesync|ff1~feeder_combout\ = ( \enable~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_enable~input_o\,
	combout => \enablesync|ff1~feeder_combout\);

-- Location: FF_X37_Y4_N19
\enablesync|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \enablesync|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enablesync|ff1~q\);

-- Location: LABCELL_X37_Y4_N42
\enablesync|sync_q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enablesync|sync_q~feeder_combout\ = ( \enablesync|ff1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \enablesync|ALT_INV_ff1~q\,
	combout => \enablesync|sync_q~feeder_combout\);

-- Location: FF_X37_Y4_N44
\enablesync|sync_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \enablesync|sync_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enablesync|sync_q~q\);

-- Location: LABCELL_X36_Y4_N0
\reg_inst|Add0~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~145_sumout\ = SUM(( !\enablesync|sync_q~q\ ) + ( \reg_inst|reg_val\(0) ) + ( !VCC ))
-- \reg_inst|Add0~146\ = CARRY(( !\enablesync|sync_q~q\ ) + ( \reg_inst|reg_val\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(0),
	datad => \enablesync|ALT_INV_sync_q~q\,
	cin => GND,
	sumout => \reg_inst|Add0~145_sumout\,
	cout => \reg_inst|Add0~146\);

-- Location: IOIBUF_X36_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X37_Y4_N39
\rst_sync|ff1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst_sync|ff1~feeder_combout\ = ( \rst~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_rst~input_o\,
	combout => \rst_sync|ff1~feeder_combout\);

-- Location: FF_X37_Y4_N41
\rst_sync|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rst_sync|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_sync|ff1~q\);

-- Location: LABCELL_X37_Y4_N30
\rst_sync|sync_q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst_sync|sync_q~feeder_combout\ = ( \rst_sync|ff1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rst_sync|ALT_INV_ff1~q\,
	combout => \rst_sync|sync_q~feeder_combout\);

-- Location: FF_X37_Y4_N32
\rst_sync|sync_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rst_sync|sync_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_sync|sync_q~q\);

-- Location: FF_X36_Y4_N2
\reg_inst|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~145_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(0));

-- Location: LABCELL_X36_Y4_N3
\reg_inst|Add0~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~141_sumout\ = SUM(( \reg_inst|reg_val\(1) ) + ( GND ) + ( \reg_inst|Add0~146\ ))
-- \reg_inst|Add0~142\ = CARRY(( \reg_inst|reg_val\(1) ) + ( GND ) + ( \reg_inst|Add0~146\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(1),
	cin => \reg_inst|Add0~146\,
	sumout => \reg_inst|Add0~141_sumout\,
	cout => \reg_inst|Add0~142\);

-- Location: FF_X36_Y4_N5
\reg_inst|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~141_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(1));

-- Location: LABCELL_X36_Y4_N6
\reg_inst|Add0~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~137_sumout\ = SUM(( \reg_inst|reg_val\(2) ) + ( GND ) + ( \reg_inst|Add0~142\ ))
-- \reg_inst|Add0~138\ = CARRY(( \reg_inst|reg_val\(2) ) + ( GND ) + ( \reg_inst|Add0~142\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(2),
	cin => \reg_inst|Add0~142\,
	sumout => \reg_inst|Add0~137_sumout\,
	cout => \reg_inst|Add0~138\);

-- Location: FF_X36_Y4_N7
\reg_inst|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~137_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(2));

-- Location: LABCELL_X36_Y4_N9
\reg_inst|Add0~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~133_sumout\ = SUM(( \reg_inst|reg_val\(3) ) + ( GND ) + ( \reg_inst|Add0~138\ ))
-- \reg_inst|Add0~134\ = CARRY(( \reg_inst|reg_val\(3) ) + ( GND ) + ( \reg_inst|Add0~138\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(3),
	cin => \reg_inst|Add0~138\,
	sumout => \reg_inst|Add0~133_sumout\,
	cout => \reg_inst|Add0~134\);

-- Location: FF_X36_Y4_N11
\reg_inst|reg_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~133_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(3));

-- Location: LABCELL_X36_Y4_N12
\reg_inst|Add0~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~129_sumout\ = SUM(( \reg_inst|reg_val\(4) ) + ( GND ) + ( \reg_inst|Add0~134\ ))
-- \reg_inst|Add0~130\ = CARRY(( \reg_inst|reg_val\(4) ) + ( GND ) + ( \reg_inst|Add0~134\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(4),
	cin => \reg_inst|Add0~134\,
	sumout => \reg_inst|Add0~129_sumout\,
	cout => \reg_inst|Add0~130\);

-- Location: FF_X36_Y4_N14
\reg_inst|reg_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~129_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(4));

-- Location: LABCELL_X36_Y4_N15
\reg_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~125_sumout\ = SUM(( \reg_inst|reg_val\(5) ) + ( GND ) + ( \reg_inst|Add0~130\ ))
-- \reg_inst|Add0~126\ = CARRY(( \reg_inst|reg_val\(5) ) + ( GND ) + ( \reg_inst|Add0~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(5),
	cin => \reg_inst|Add0~130\,
	sumout => \reg_inst|Add0~125_sumout\,
	cout => \reg_inst|Add0~126\);

-- Location: FF_X36_Y4_N17
\reg_inst|reg_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~125_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(5));

-- Location: LABCELL_X36_Y4_N18
\reg_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~121_sumout\ = SUM(( \reg_inst|reg_val\(6) ) + ( GND ) + ( \reg_inst|Add0~126\ ))
-- \reg_inst|Add0~122\ = CARRY(( \reg_inst|reg_val\(6) ) + ( GND ) + ( \reg_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(6),
	cin => \reg_inst|Add0~126\,
	sumout => \reg_inst|Add0~121_sumout\,
	cout => \reg_inst|Add0~122\);

-- Location: FF_X36_Y4_N20
\reg_inst|reg_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~121_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(6));

-- Location: LABCELL_X36_Y4_N21
\reg_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~117_sumout\ = SUM(( \reg_inst|reg_val\(7) ) + ( GND ) + ( \reg_inst|Add0~122\ ))
-- \reg_inst|Add0~118\ = CARRY(( \reg_inst|reg_val\(7) ) + ( GND ) + ( \reg_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(7),
	cin => \reg_inst|Add0~122\,
	sumout => \reg_inst|Add0~117_sumout\,
	cout => \reg_inst|Add0~118\);

-- Location: FF_X36_Y4_N23
\reg_inst|reg_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~117_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(7));

-- Location: LABCELL_X36_Y4_N24
\reg_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~113_sumout\ = SUM(( \reg_inst|reg_val\(8) ) + ( GND ) + ( \reg_inst|Add0~118\ ))
-- \reg_inst|Add0~114\ = CARRY(( \reg_inst|reg_val\(8) ) + ( GND ) + ( \reg_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(8),
	cin => \reg_inst|Add0~118\,
	sumout => \reg_inst|Add0~113_sumout\,
	cout => \reg_inst|Add0~114\);

-- Location: FF_X36_Y4_N26
\reg_inst|reg_val[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~113_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(8));

-- Location: LABCELL_X36_Y4_N27
\reg_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~109_sumout\ = SUM(( \reg_inst|reg_val\(9) ) + ( GND ) + ( \reg_inst|Add0~114\ ))
-- \reg_inst|Add0~110\ = CARRY(( \reg_inst|reg_val\(9) ) + ( GND ) + ( \reg_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(9),
	cin => \reg_inst|Add0~114\,
	sumout => \reg_inst|Add0~109_sumout\,
	cout => \reg_inst|Add0~110\);

-- Location: FF_X36_Y4_N29
\reg_inst|reg_val[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~109_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(9));

-- Location: LABCELL_X36_Y4_N30
\reg_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~105_sumout\ = SUM(( \reg_inst|reg_val\(10) ) + ( GND ) + ( \reg_inst|Add0~110\ ))
-- \reg_inst|Add0~106\ = CARRY(( \reg_inst|reg_val\(10) ) + ( GND ) + ( \reg_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(10),
	cin => \reg_inst|Add0~110\,
	sumout => \reg_inst|Add0~105_sumout\,
	cout => \reg_inst|Add0~106\);

-- Location: FF_X36_Y4_N32
\reg_inst|reg_val[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~105_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(10));

-- Location: LABCELL_X36_Y4_N33
\reg_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~101_sumout\ = SUM(( \reg_inst|reg_val\(11) ) + ( GND ) + ( \reg_inst|Add0~106\ ))
-- \reg_inst|Add0~102\ = CARRY(( \reg_inst|reg_val\(11) ) + ( GND ) + ( \reg_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(11),
	cin => \reg_inst|Add0~106\,
	sumout => \reg_inst|Add0~101_sumout\,
	cout => \reg_inst|Add0~102\);

-- Location: FF_X36_Y4_N35
\reg_inst|reg_val[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~101_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(11));

-- Location: LABCELL_X36_Y4_N36
\reg_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~97_sumout\ = SUM(( \reg_inst|reg_val\(12) ) + ( GND ) + ( \reg_inst|Add0~102\ ))
-- \reg_inst|Add0~98\ = CARRY(( \reg_inst|reg_val\(12) ) + ( GND ) + ( \reg_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(12),
	cin => \reg_inst|Add0~102\,
	sumout => \reg_inst|Add0~97_sumout\,
	cout => \reg_inst|Add0~98\);

-- Location: FF_X36_Y4_N38
\reg_inst|reg_val[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~97_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(12));

-- Location: LABCELL_X36_Y4_N39
\reg_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~93_sumout\ = SUM(( \reg_inst|reg_val\(13) ) + ( GND ) + ( \reg_inst|Add0~98\ ))
-- \reg_inst|Add0~94\ = CARRY(( \reg_inst|reg_val\(13) ) + ( GND ) + ( \reg_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(13),
	cin => \reg_inst|Add0~98\,
	sumout => \reg_inst|Add0~93_sumout\,
	cout => \reg_inst|Add0~94\);

-- Location: FF_X36_Y4_N41
\reg_inst|reg_val[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~93_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(13));

-- Location: LABCELL_X36_Y4_N42
\reg_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~89_sumout\ = SUM(( \reg_inst|reg_val\(14) ) + ( GND ) + ( \reg_inst|Add0~94\ ))
-- \reg_inst|Add0~90\ = CARRY(( \reg_inst|reg_val\(14) ) + ( GND ) + ( \reg_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(14),
	cin => \reg_inst|Add0~94\,
	sumout => \reg_inst|Add0~89_sumout\,
	cout => \reg_inst|Add0~90\);

-- Location: FF_X36_Y4_N44
\reg_inst|reg_val[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~89_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(14));

-- Location: LABCELL_X36_Y4_N45
\reg_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~85_sumout\ = SUM(( \reg_inst|reg_val\(15) ) + ( GND ) + ( \reg_inst|Add0~90\ ))
-- \reg_inst|Add0~86\ = CARRY(( \reg_inst|reg_val\(15) ) + ( GND ) + ( \reg_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(15),
	cin => \reg_inst|Add0~90\,
	sumout => \reg_inst|Add0~85_sumout\,
	cout => \reg_inst|Add0~86\);

-- Location: FF_X36_Y4_N47
\reg_inst|reg_val[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~85_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(15));

-- Location: LABCELL_X36_Y4_N48
\reg_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~81_sumout\ = SUM(( \reg_inst|reg_val\(16) ) + ( GND ) + ( \reg_inst|Add0~86\ ))
-- \reg_inst|Add0~82\ = CARRY(( \reg_inst|reg_val\(16) ) + ( GND ) + ( \reg_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(16),
	cin => \reg_inst|Add0~86\,
	sumout => \reg_inst|Add0~81_sumout\,
	cout => \reg_inst|Add0~82\);

-- Location: FF_X36_Y4_N50
\reg_inst|reg_val[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~81_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(16));

-- Location: LABCELL_X36_Y4_N51
\reg_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~77_sumout\ = SUM(( \reg_inst|reg_val\(17) ) + ( GND ) + ( \reg_inst|Add0~82\ ))
-- \reg_inst|Add0~78\ = CARRY(( \reg_inst|reg_val\(17) ) + ( GND ) + ( \reg_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(17),
	cin => \reg_inst|Add0~82\,
	sumout => \reg_inst|Add0~77_sumout\,
	cout => \reg_inst|Add0~78\);

-- Location: FF_X36_Y4_N53
\reg_inst|reg_val[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~77_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(17));

-- Location: LABCELL_X36_Y4_N54
\reg_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~73_sumout\ = SUM(( \reg_inst|reg_val\(18) ) + ( GND ) + ( \reg_inst|Add0~78\ ))
-- \reg_inst|Add0~74\ = CARRY(( \reg_inst|reg_val\(18) ) + ( GND ) + ( \reg_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(18),
	cin => \reg_inst|Add0~78\,
	sumout => \reg_inst|Add0~73_sumout\,
	cout => \reg_inst|Add0~74\);

-- Location: FF_X36_Y4_N56
\reg_inst|reg_val[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~73_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(18));

-- Location: LABCELL_X36_Y4_N57
\reg_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~69_sumout\ = SUM(( \reg_inst|reg_val\(19) ) + ( GND ) + ( \reg_inst|Add0~74\ ))
-- \reg_inst|Add0~70\ = CARRY(( \reg_inst|reg_val\(19) ) + ( GND ) + ( \reg_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(19),
	cin => \reg_inst|Add0~74\,
	sumout => \reg_inst|Add0~69_sumout\,
	cout => \reg_inst|Add0~70\);

-- Location: FF_X36_Y4_N59
\reg_inst|reg_val[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~69_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(19));

-- Location: LABCELL_X36_Y3_N0
\reg_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~65_sumout\ = SUM(( \reg_inst|reg_val\(20) ) + ( GND ) + ( \reg_inst|Add0~70\ ))
-- \reg_inst|Add0~66\ = CARRY(( \reg_inst|reg_val\(20) ) + ( GND ) + ( \reg_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(20),
	cin => \reg_inst|Add0~70\,
	sumout => \reg_inst|Add0~65_sumout\,
	cout => \reg_inst|Add0~66\);

-- Location: FF_X36_Y3_N2
\reg_inst|reg_val[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~65_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(20));

-- Location: LABCELL_X36_Y3_N3
\reg_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~61_sumout\ = SUM(( \reg_inst|reg_val\(21) ) + ( GND ) + ( \reg_inst|Add0~66\ ))
-- \reg_inst|Add0~62\ = CARRY(( \reg_inst|reg_val\(21) ) + ( GND ) + ( \reg_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(21),
	cin => \reg_inst|Add0~66\,
	sumout => \reg_inst|Add0~61_sumout\,
	cout => \reg_inst|Add0~62\);

-- Location: FF_X36_Y3_N5
\reg_inst|reg_val[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~61_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(21));

-- Location: LABCELL_X36_Y3_N6
\reg_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~57_sumout\ = SUM(( \reg_inst|reg_val\(22) ) + ( GND ) + ( \reg_inst|Add0~62\ ))
-- \reg_inst|Add0~58\ = CARRY(( \reg_inst|reg_val\(22) ) + ( GND ) + ( \reg_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(22),
	cin => \reg_inst|Add0~62\,
	sumout => \reg_inst|Add0~57_sumout\,
	cout => \reg_inst|Add0~58\);

-- Location: FF_X36_Y3_N8
\reg_inst|reg_val[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~57_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(22));

-- Location: LABCELL_X36_Y3_N9
\reg_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~53_sumout\ = SUM(( \reg_inst|reg_val\(23) ) + ( GND ) + ( \reg_inst|Add0~58\ ))
-- \reg_inst|Add0~54\ = CARRY(( \reg_inst|reg_val\(23) ) + ( GND ) + ( \reg_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(23),
	cin => \reg_inst|Add0~58\,
	sumout => \reg_inst|Add0~53_sumout\,
	cout => \reg_inst|Add0~54\);

-- Location: FF_X36_Y3_N11
\reg_inst|reg_val[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~53_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(23));

-- Location: LABCELL_X36_Y3_N12
\reg_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~49_sumout\ = SUM(( \reg_inst|reg_val\(24) ) + ( GND ) + ( \reg_inst|Add0~54\ ))
-- \reg_inst|Add0~50\ = CARRY(( \reg_inst|reg_val\(24) ) + ( GND ) + ( \reg_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(24),
	cin => \reg_inst|Add0~54\,
	sumout => \reg_inst|Add0~49_sumout\,
	cout => \reg_inst|Add0~50\);

-- Location: FF_X36_Y3_N14
\reg_inst|reg_val[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~49_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(24));

-- Location: LABCELL_X36_Y3_N15
\reg_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~1_sumout\ = SUM(( \reg_inst|reg_val\(25) ) + ( GND ) + ( \reg_inst|Add0~50\ ))
-- \reg_inst|Add0~2\ = CARRY(( \reg_inst|reg_val\(25) ) + ( GND ) + ( \reg_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(25),
	cin => \reg_inst|Add0~50\,
	sumout => \reg_inst|Add0~1_sumout\,
	cout => \reg_inst|Add0~2\);

-- Location: FF_X36_Y3_N16
\reg_inst|reg_val[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~1_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(25));

-- Location: FF_X36_Y3_N20
\reg_inst|reg_val[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~5_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(26));

-- Location: LABCELL_X36_Y3_N18
\reg_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~5_sumout\ = SUM(( \reg_inst|reg_val\(26) ) + ( GND ) + ( \reg_inst|Add0~2\ ))
-- \reg_inst|Add0~6\ = CARRY(( \reg_inst|reg_val\(26) ) + ( GND ) + ( \reg_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(26),
	cin => \reg_inst|Add0~2\,
	sumout => \reg_inst|Add0~5_sumout\,
	cout => \reg_inst|Add0~6\);

-- Location: FF_X36_Y3_N19
\reg_inst|reg_val[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~5_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val[26]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N21
\reg_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~9_sumout\ = SUM(( \reg_inst|reg_val\(27) ) + ( GND ) + ( \reg_inst|Add0~6\ ))
-- \reg_inst|Add0~10\ = CARRY(( \reg_inst|reg_val\(27) ) + ( GND ) + ( \reg_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(27),
	cin => \reg_inst|Add0~6\,
	sumout => \reg_inst|Add0~9_sumout\,
	cout => \reg_inst|Add0~10\);

-- Location: FF_X36_Y3_N22
\reg_inst|reg_val[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~9_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(27));

-- Location: LABCELL_X36_Y3_N24
\reg_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~13_sumout\ = SUM(( \reg_inst|reg_val\(28) ) + ( GND ) + ( \reg_inst|Add0~10\ ))
-- \reg_inst|Add0~14\ = CARRY(( \reg_inst|reg_val\(28) ) + ( GND ) + ( \reg_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(28),
	cin => \reg_inst|Add0~10\,
	sumout => \reg_inst|Add0~13_sumout\,
	cout => \reg_inst|Add0~14\);

-- Location: FF_X36_Y3_N25
\reg_inst|reg_val[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~13_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(28));

-- Location: LABCELL_X83_Y7_N30
\hex0_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux6~0_combout\ = ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(25) & (!\reg_inst|reg_val[26]~DUPLICATE_q\ $ (!\reg_inst|reg_val\(27)))) ) ) # ( !\reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val[26]~DUPLICATE_q\ & (!\reg_inst|reg_val\(25) $ 
-- (!\reg_inst|reg_val\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(25),
	datab => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datac => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux6~0_combout\);

-- Location: LABCELL_X80_Y7_N33
\hex0_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux5~0_combout\ = ( \reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val\(25) & ((\reg_inst|reg_val\(27)))) # (\reg_inst|reg_val\(25) & (\reg_inst|reg_val[26]~DUPLICATE_q\)) ) ) # ( !\reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(27) & 
-- (!\reg_inst|reg_val[26]~DUPLICATE_q\ $ (!\reg_inst|reg_val\(25)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(25),
	datac => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux5~0_combout\);

-- Location: LABCELL_X85_Y7_N30
\hex0_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux4~0_combout\ = ( \reg_inst|reg_val\(25) & ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(27) & \reg_inst|reg_val[26]~DUPLICATE_q\) ) ) ) # ( !\reg_inst|reg_val\(25) & ( \reg_inst|reg_val\(28) & ( \reg_inst|reg_val\(27) ) ) ) # ( 
-- !\reg_inst|reg_val\(25) & ( !\reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val\(27) & \reg_inst|reg_val[26]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(27),
	datac => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datae => \reg_inst|ALT_INV_reg_val\(25),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux4~0_combout\);

-- Location: LABCELL_X83_Y7_N33
\hex0_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux3~0_combout\ = ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val[26]~DUPLICATE_q\ & (!\reg_inst|reg_val\(25) $ (\reg_inst|reg_val\(27)))) ) ) # ( !\reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val\(25) & (!\reg_inst|reg_val[26]~DUPLICATE_q\ & 
-- \reg_inst|reg_val\(27))) # (\reg_inst|reg_val\(25) & (!\reg_inst|reg_val[26]~DUPLICATE_q\ $ (\reg_inst|reg_val\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(25),
	datab => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datad => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux3~0_combout\);

-- Location: LABCELL_X83_Y7_N36
\hex0_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux2~0_combout\ = ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(25) & (!\reg_inst|reg_val[26]~DUPLICATE_q\ & !\reg_inst|reg_val\(27))) ) ) # ( !\reg_inst|reg_val\(28) & ( ((!\reg_inst|reg_val[26]~DUPLICATE_q\ & \reg_inst|reg_val\(27))) # 
-- (\reg_inst|reg_val\(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(25),
	datab => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datac => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux2~0_combout\);

-- Location: LABCELL_X83_Y7_N39
\hex0_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux1~0_combout\ = ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(25) & (!\reg_inst|reg_val[26]~DUPLICATE_q\ & \reg_inst|reg_val\(27))) ) ) # ( !\reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val\(25) & (\reg_inst|reg_val[26]~DUPLICATE_q\ & 
-- !\reg_inst|reg_val\(27))) # (\reg_inst|reg_val\(25) & ((!\reg_inst|reg_val\(27)) # (\reg_inst|reg_val[26]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(25),
	datab => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datad => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux1~0_combout\);

-- Location: LABCELL_X83_Y7_N12
\hex0_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_inst|Mux0~0_combout\ = ( \reg_inst|reg_val\(27) & ( \reg_inst|reg_val\(28) & ( (\reg_inst|reg_val\(25)) # (\reg_inst|reg_val[26]~DUPLICATE_q\) ) ) ) # ( !\reg_inst|reg_val\(27) & ( \reg_inst|reg_val\(28) ) ) # ( \reg_inst|reg_val\(27) & ( 
-- !\reg_inst|reg_val\(28) & ( (!\reg_inst|reg_val[26]~DUPLICATE_q\) # (!\reg_inst|reg_val\(25)) ) ) ) # ( !\reg_inst|reg_val\(27) & ( !\reg_inst|reg_val\(28) & ( \reg_inst|reg_val[26]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110011111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val[26]~DUPLICATE_q\,
	datac => \reg_inst|ALT_INV_reg_val\(25),
	datae => \reg_inst|ALT_INV_reg_val\(27),
	dataf => \reg_inst|ALT_INV_reg_val\(28),
	combout => \hex0_inst|Mux0~0_combout\);

-- Location: LABCELL_X36_Y3_N27
\reg_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~17_sumout\ = SUM(( \reg_inst|reg_val\(29) ) + ( GND ) + ( \reg_inst|Add0~14\ ))
-- \reg_inst|Add0~18\ = CARRY(( \reg_inst|reg_val\(29) ) + ( GND ) + ( \reg_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(29),
	cin => \reg_inst|Add0~14\,
	sumout => \reg_inst|Add0~17_sumout\,
	cout => \reg_inst|Add0~18\);

-- Location: FF_X36_Y3_N28
\reg_inst|reg_val[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~17_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(29));

-- Location: LABCELL_X36_Y3_N30
\reg_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~21_sumout\ = SUM(( \reg_inst|reg_val\(30) ) + ( GND ) + ( \reg_inst|Add0~18\ ))
-- \reg_inst|Add0~22\ = CARRY(( \reg_inst|reg_val\(30) ) + ( GND ) + ( \reg_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(30),
	cin => \reg_inst|Add0~18\,
	sumout => \reg_inst|Add0~21_sumout\,
	cout => \reg_inst|Add0~22\);

-- Location: FF_X36_Y3_N31
\reg_inst|reg_val[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~21_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(30));

-- Location: LABCELL_X36_Y3_N33
\reg_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~25_sumout\ = SUM(( \reg_inst|reg_val\(31) ) + ( GND ) + ( \reg_inst|Add0~22\ ))
-- \reg_inst|Add0~26\ = CARRY(( \reg_inst|reg_val\(31) ) + ( GND ) + ( \reg_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(31),
	cin => \reg_inst|Add0~22\,
	sumout => \reg_inst|Add0~25_sumout\,
	cout => \reg_inst|Add0~26\);

-- Location: FF_X36_Y3_N35
\reg_inst|reg_val[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~25_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(31));

-- Location: LABCELL_X36_Y3_N36
\reg_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~29_sumout\ = SUM(( \reg_inst|reg_val\(32) ) + ( GND ) + ( \reg_inst|Add0~26\ ))
-- \reg_inst|Add0~30\ = CARRY(( \reg_inst|reg_val\(32) ) + ( GND ) + ( \reg_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(32),
	cin => \reg_inst|Add0~26\,
	sumout => \reg_inst|Add0~29_sumout\,
	cout => \reg_inst|Add0~30\);

-- Location: FF_X36_Y3_N37
\reg_inst|reg_val[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~29_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(32));

-- Location: LABCELL_X83_Y7_N21
\hex1_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux6~0_combout\ = ( \reg_inst|reg_val\(30) & ( (\reg_inst|reg_val\(29) & (!\reg_inst|reg_val\(31) & \reg_inst|reg_val\(32))) ) ) # ( !\reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(29) & (\reg_inst|reg_val\(31) & !\reg_inst|reg_val\(32))) # 
-- (\reg_inst|reg_val\(29) & (!\reg_inst|reg_val\(31) $ (\reg_inst|reg_val\(32)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datac => \reg_inst|ALT_INV_reg_val\(31),
	datad => \reg_inst|ALT_INV_reg_val\(32),
	dataf => \reg_inst|ALT_INV_reg_val\(30),
	combout => \hex1_inst|Mux6~0_combout\);

-- Location: LABCELL_X83_Y7_N24
\hex1_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux5~0_combout\ = ( \reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(29) & (\reg_inst|reg_val\(31))) # (\reg_inst|reg_val\(29) & ((\reg_inst|reg_val\(32)))) ) ) # ( !\reg_inst|reg_val\(30) & ( (\reg_inst|reg_val\(31) & (!\reg_inst|reg_val\(29) $ 
-- (!\reg_inst|reg_val\(32)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datab => \reg_inst|ALT_INV_reg_val\(31),
	datac => \reg_inst|ALT_INV_reg_val\(32),
	dataf => \reg_inst|ALT_INV_reg_val\(30),
	combout => \hex1_inst|Mux5~0_combout\);

-- Location: LABCELL_X83_Y7_N3
\hex1_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux4~0_combout\ = ( \reg_inst|reg_val\(32) & ( (\reg_inst|reg_val\(31) & ((!\reg_inst|reg_val\(29)) # (\reg_inst|reg_val\(30)))) ) ) # ( !\reg_inst|reg_val\(32) & ( (!\reg_inst|reg_val\(29) & (\reg_inst|reg_val\(30) & !\reg_inst|reg_val\(31))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datac => \reg_inst|ALT_INV_reg_val\(30),
	datad => \reg_inst|ALT_INV_reg_val\(31),
	dataf => \reg_inst|ALT_INV_reg_val\(32),
	combout => \hex1_inst|Mux4~0_combout\);

-- Location: LABCELL_X83_Y7_N6
\hex1_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux3~0_combout\ = ( \reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(29) & (!\reg_inst|reg_val\(31) & \reg_inst|reg_val\(32))) # (\reg_inst|reg_val\(29) & (\reg_inst|reg_val\(31))) ) ) # ( !\reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(32) & 
-- (!\reg_inst|reg_val\(29) $ (!\reg_inst|reg_val\(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datab => \reg_inst|ALT_INV_reg_val\(31),
	datac => \reg_inst|ALT_INV_reg_val\(32),
	dataf => \reg_inst|ALT_INV_reg_val\(30),
	combout => \hex1_inst|Mux3~0_combout\);

-- Location: LABCELL_X83_Y7_N9
\hex1_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux2~0_combout\ = ( \reg_inst|reg_val\(32) & ( (\reg_inst|reg_val\(29) & (!\reg_inst|reg_val\(31) & !\reg_inst|reg_val\(30))) ) ) # ( !\reg_inst|reg_val\(32) & ( ((\reg_inst|reg_val\(31) & !\reg_inst|reg_val\(30))) # (\reg_inst|reg_val\(29)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datab => \reg_inst|ALT_INV_reg_val\(31),
	datac => \reg_inst|ALT_INV_reg_val\(30),
	dataf => \reg_inst|ALT_INV_reg_val\(32),
	combout => \hex1_inst|Mux2~0_combout\);

-- Location: LABCELL_X83_Y7_N18
\hex1_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux1~0_combout\ = ( \reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(32) & ((!\reg_inst|reg_val\(31)) # (\reg_inst|reg_val\(29)))) ) ) # ( !\reg_inst|reg_val\(30) & ( (\reg_inst|reg_val\(29) & (!\reg_inst|reg_val\(31) $ 
-- (\reg_inst|reg_val\(32)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datab => \reg_inst|ALT_INV_reg_val\(31),
	datac => \reg_inst|ALT_INV_reg_val\(32),
	dataf => \reg_inst|ALT_INV_reg_val\(30),
	combout => \hex1_inst|Mux1~0_combout\);

-- Location: LABCELL_X83_Y7_N27
\hex1_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_inst|Mux0~0_combout\ = ( \reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(29)) # ((!\reg_inst|reg_val\(31)) # (\reg_inst|reg_val\(32))) ) ) # ( !\reg_inst|reg_val\(30) & ( (!\reg_inst|reg_val\(31) & ((\reg_inst|reg_val\(32)))) # 
-- (\reg_inst|reg_val\(31) & ((!\reg_inst|reg_val\(32)) # (\reg_inst|reg_val\(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110101000011111111010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val\(29),
	datac => \reg_inst|ALT_INV_reg_val\(31),
	datad => \reg_inst|ALT_INV_reg_val\(32),
	dataf => \reg_inst|ALT_INV_reg_val\(30),
	combout => \hex1_inst|Mux0~0_combout\);

-- Location: FF_X36_Y3_N47
\reg_inst|reg_val[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~41_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(35));

-- Location: LABCELL_X36_Y3_N39
\reg_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~33_sumout\ = SUM(( \reg_inst|reg_val\(33) ) + ( GND ) + ( \reg_inst|Add0~30\ ))
-- \reg_inst|Add0~34\ = CARRY(( \reg_inst|reg_val\(33) ) + ( GND ) + ( \reg_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(33),
	cin => \reg_inst|Add0~30\,
	sumout => \reg_inst|Add0~33_sumout\,
	cout => \reg_inst|Add0~34\);

-- Location: FF_X36_Y3_N41
\reg_inst|reg_val[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~33_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(33));

-- Location: LABCELL_X36_Y3_N42
\reg_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~37_sumout\ = SUM(( \reg_inst|reg_val\(34) ) + ( GND ) + ( \reg_inst|Add0~34\ ))
-- \reg_inst|Add0~38\ = CARRY(( \reg_inst|reg_val\(34) ) + ( GND ) + ( \reg_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(34),
	cin => \reg_inst|Add0~34\,
	sumout => \reg_inst|Add0~37_sumout\,
	cout => \reg_inst|Add0~38\);

-- Location: FF_X36_Y3_N44
\reg_inst|reg_val[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~37_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(34));

-- Location: LABCELL_X36_Y3_N45
\reg_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~41_sumout\ = SUM(( \reg_inst|reg_val\(35) ) + ( GND ) + ( \reg_inst|Add0~38\ ))
-- \reg_inst|Add0~42\ = CARRY(( \reg_inst|reg_val\(35) ) + ( GND ) + ( \reg_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reg_inst|ALT_INV_reg_val\(35),
	cin => \reg_inst|Add0~38\,
	sumout => \reg_inst|Add0~41_sumout\,
	cout => \reg_inst|Add0~42\);

-- Location: FF_X36_Y3_N46
\reg_inst|reg_val[35]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~41_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val[35]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N48
\reg_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \reg_inst|Add0~45_sumout\ = SUM(( \reg_inst|reg_val\(36) ) + ( GND ) + ( \reg_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(36),
	cin => \reg_inst|Add0~42\,
	sumout => \reg_inst|Add0~45_sumout\);

-- Location: FF_X36_Y3_N49
\reg_inst|reg_val[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~45_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val\(36));

-- Location: FF_X36_Y3_N40
\reg_inst|reg_val[33]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \reg_inst|Add0~33_sumout\,
	sclr => \rst_sync|ALT_INV_sync_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_inst|reg_val[33]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N45
\hex2_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux6~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ & (!\reg_inst|reg_val\(36) $ (\reg_inst|reg_val\(34)))) # (\reg_inst|reg_val[35]~DUPLICATE_q\ & (\reg_inst|reg_val\(36) & !\reg_inst|reg_val\(34))) 
-- ) ) # ( !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (\reg_inst|reg_val[35]~DUPLICATE_q\ & (!\reg_inst|reg_val\(36) & !\reg_inst|reg_val\(34))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datac => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux6~0_combout\);

-- Location: LABCELL_X83_Y7_N48
\hex2_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux5~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val\(36) & (\reg_inst|reg_val[35]~DUPLICATE_q\ & !\reg_inst|reg_val\(34))) # (\reg_inst|reg_val\(36) & ((\reg_inst|reg_val\(34)))) ) ) # ( 
-- !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (\reg_inst|reg_val[35]~DUPLICATE_q\ & ((\reg_inst|reg_val\(34)) # (\reg_inst|reg_val\(36)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datad => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux5~0_combout\);

-- Location: LABCELL_X83_Y7_N51
\hex2_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux4~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (\reg_inst|reg_val[35]~DUPLICATE_q\ & (\reg_inst|reg_val\(36) & \reg_inst|reg_val\(34))) ) ) # ( !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ & 
-- (!\reg_inst|reg_val\(36) & \reg_inst|reg_val\(34))) # (\reg_inst|reg_val[35]~DUPLICATE_q\ & (\reg_inst|reg_val\(36))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datac => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux4~0_combout\);

-- Location: LABCELL_X83_Y7_N54
\hex2_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux3~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ & (!\reg_inst|reg_val\(36) & !\reg_inst|reg_val\(34))) # (\reg_inst|reg_val[35]~DUPLICATE_q\ & ((\reg_inst|reg_val\(34)))) ) ) # ( 
-- !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ & (\reg_inst|reg_val\(36) & \reg_inst|reg_val\(34))) # (\reg_inst|reg_val[35]~DUPLICATE_q\ & (!\reg_inst|reg_val\(36) & !\reg_inst|reg_val\(34))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datad => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux3~0_combout\);

-- Location: LABCELL_X83_Y7_N42
\hex2_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux2~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val\(36)) # ((!\reg_inst|reg_val[35]~DUPLICATE_q\ & !\reg_inst|reg_val\(34))) ) ) # ( !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (\reg_inst|reg_val[35]~DUPLICATE_q\ & 
-- (!\reg_inst|reg_val\(36) & !\reg_inst|reg_val\(34))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datad => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux2~0_combout\);

-- Location: LABCELL_X83_Y7_N57
\hex2_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux1~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( !\reg_inst|reg_val\(36) $ (((\reg_inst|reg_val[35]~DUPLICATE_q\ & !\reg_inst|reg_val\(34)))) ) ) # ( !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ & 
-- (!\reg_inst|reg_val\(36) & \reg_inst|reg_val\(34))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datac => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux1~0_combout\);

-- Location: LABCELL_X83_Y7_N0
\hex2_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2_inst|Mux0~0_combout\ = ( \reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val[35]~DUPLICATE_q\ $ (!\reg_inst|reg_val\(34))) # (\reg_inst|reg_val\(36)) ) ) # ( !\reg_inst|reg_val[33]~DUPLICATE_q\ & ( (!\reg_inst|reg_val\(36) $ 
-- (!\reg_inst|reg_val[35]~DUPLICATE_q\)) # (\reg_inst|reg_val\(34)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011111111001111001111111100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reg_inst|ALT_INV_reg_val\(36),
	datac => \reg_inst|ALT_INV_reg_val[35]~DUPLICATE_q\,
	datad => \reg_inst|ALT_INV_reg_val\(34),
	dataf => \reg_inst|ALT_INV_reg_val[33]~DUPLICATE_q\,
	combout => \hex2_inst|Mux0~0_combout\);

-- Location: LABCELL_X53_Y33_N3
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


