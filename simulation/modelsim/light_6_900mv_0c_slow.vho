-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "02/05/2014 18:33:56"

-- 
-- Device: Altera EP2AGX125DF25C6ES Package FBGA572
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	light IS
    PORT (
	\clk(n)\ : IN std_logic := '0';
	clk : IN std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	y3 : OUT std_logic;
	y5 : OUT std_logic;
	sel : OUT std_logic;
	seln : OUT std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic
	);
END light;

-- Design Ports Information
-- y1	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y5	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seln	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED0	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D11,	 I/O Standard: LVDS,	 Current Strength: Default
-- x2	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk(n)	=>  Location: PIN_C11,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF light IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_clk(n)\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_y5 : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_seln : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mypll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mypll|altpll_component|auto_generated|pll1~CLK7\ : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|pll1~CLK8\ : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|pll1~CLK9\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|wire_pll1_fbout~clkctrl_outclk\ : std_logic;
SIGNAL \mypll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \foo~0_combout\ : std_logic;
SIGNAL \foo~q\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \last~q\ : std_logic;
SIGNAL \count3~3_combout\ : std_logic;
SIGNAL \count3~2_combout\ : std_logic;
SIGNAL \count3~4_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \count3~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count3~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \foo2~0_combout\ : std_logic;
SIGNAL \foo2~q\ : std_logic;
SIGNAL count : std_logic_vector(26 DOWNTO 0);
SIGNAL \mypll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(6 DOWNTO 0);
SIGNAL count3 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_count3 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_last~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_foo2~q\ : std_logic;
SIGNAL \ALT_INV_foo~q\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(26 DOWNTO 0);

BEGIN

\ww_clk(n)\ <= \clk(n)\;
ww_clk <= clk;
ww_x1 <= x1;
ww_x2 <= x2;
y1 <= ww_y1;
y2 <= ww_y2;
y3 <= ww_y3;
y5 <= ww_y5;
sel <= ww_sel;
seln <= ww_seln;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mypll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\mypll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(4);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(5) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(5);
\mypll|altpll_component|auto_generated|wire_pll1_clk\(6) <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(6);
\mypll|altpll_component|auto_generated|pll1~CLK7\ <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(7);
\mypll|altpll_component|auto_generated|pll1~CLK8\ <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(8);
\mypll|altpll_component|auto_generated|pll1~CLK9\ <= \mypll|altpll_component|auto_generated|pll1_CLK_bus\(9);
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_count3(0) <= NOT count3(0);
ALT_INV_count3(1) <= NOT count3(1);
ALT_INV_count3(2) <= NOT count3(2);
ALT_INV_count3(3) <= NOT count3(3);
ALT_INV_count3(4) <= NOT count3(4);
\ALT_INV_last~q\ <= NOT \last~q\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_foo2~q\ <= NOT \foo2~q\;
\ALT_INV_foo~q\ <= NOT \foo~q\;
ALT_INV_count(10) <= NOT count(10);
ALT_INV_count(9) <= NOT count(9);
ALT_INV_count(8) <= NOT count(8);
ALT_INV_count(7) <= NOT count(7);
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_count(15) <= NOT count(15);
ALT_INV_count(17) <= NOT count(17);
ALT_INV_count(16) <= NOT count(16);
ALT_INV_count(14) <= NOT count(14);
ALT_INV_count(13) <= NOT count(13);
ALT_INV_count(12) <= NOT count(12);
ALT_INV_count(11) <= NOT count(11);
ALT_INV_count(23) <= NOT count(23);
ALT_INV_count(22) <= NOT count(22);
ALT_INV_count(21) <= NOT count(21);
ALT_INV_count(20) <= NOT count(20);
ALT_INV_count(19) <= NOT count(19);
ALT_INV_count(18) <= NOT count(18);
ALT_INV_count(26) <= NOT count(26);
ALT_INV_count(25) <= NOT count(25);
ALT_INV_count(24) <= NOT count(24);

-- Location: IOOBUF_X42_Y0_N67
\LED2~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED2);

-- Location: IOOBUF_X42_Y0_N2
\LED3~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED3);

-- Location: IOOBUF_X43_Y0_N67
\LED4~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_LED4);

-- Location: IOOBUF_X23_Y74_N33
\y1~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mypll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_y1);

-- Location: IOOBUF_X23_Y74_N98
\y2~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_y2);

-- Location: IOOBUF_X38_Y74_N33
\y3~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \foo~q\,
	devoe => ww_devoe,
	o => ww_y3);

-- Location: IOOBUF_X17_Y74_N36
\y5~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \foo2~q\,
	devoe => ww_devoe,
	o => ww_y5);

-- Location: IOOBUF_X34_Y74_N36
\sel~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_sel);

-- Location: IOOBUF_X34_Y74_N98
\seln~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seln);

-- Location: IOOBUF_X41_Y0_N67
\LED0~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED0);

-- Location: IOOBUF_X41_Y0_N2
\LED1~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X43_Y0_N2
\LED5~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED5);

-- Location: IOOBUF_X45_Y0_N67
\LED6~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED6);

-- Location: IOOBUF_X45_Y0_N5
\LED7~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED7);

-- Location: IOIBUF_X39_Y74_N1
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	ibar => \ww_clk(n)\,
	o => \clk~input_o\);

-- Location: PLL_1
\mypll|altpll_component|auto_generated|pll1\ : arriaii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	c5_high => 0,
	c5_initial => 0,
	c5_low => 0,
	c5_mode => "bypass",
	c5_ph => 0,
	c5_use_casc_in => "off",
	c6_high => 0,
	c6_initial => 0,
	c6_low => 0,
	c6_mode => "bypass",
	c6_ph => 0,
	c6_use_casc_in => "off",
	c7_high => 0,
	c7_initial => 0,
	c7_low => 0,
	c7_mode => "bypass",
	c7_ph => 0,
	c7_use_casc_in => "off",
	c8_high => 0,
	c8_initial => 0,
	c8_low => 0,
	c8_mode => "bypass",
	c8_ph => 0,
	c8_use_casc_in => "off",
	c9_high => 0,
	c9_initial => 0,
	c9_low => 0,
	c9_mode => "bypass",
	c9_ph => 0,
	c9_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 8,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	clk5_counter => "unused",
	clk5_divide_by => 0,
	clk5_duty_cycle => 50,
	clk5_multiply_by => 0,
	clk5_phase_shift => "0",
	clk6_counter => "unused",
	clk6_divide_by => 0,
	clk6_duty_cycle => 50,
	clk6_multiply_by => 0,
	clk6_phase_shift => "0",
	clk7_counter => "unused",
	clk7_divide_by => 0,
	clk7_duty_cycle => 50,
	clk7_multiply_by => 0,
	clk7_phase_shift => "0",
	clk8_counter => "unused",
	clk8_divide_by => 0,
	clk8_duty_cycle => 50,
	clk8_multiply_by => 0,
	clk8_phase_shift => "0",
	clk9_counter => "unused",
	clk9_divide_by => 0,
	clk9_duty_cycle => 50,
	clk9_multiply_by => 0,
	clk9_phase_shift => "0",
	compensate_clock => "clock0",
	dpa_divide_by => 0,
	dpa_divider => 1,
	dpa_multiply_by => 0,
	inclk0_input_frequency => 8000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 24,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6563,
	pll_type => "fast",
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3332,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \mypll|altpll_component|auto_generated|wire_pll1_fbout~clkctrl_outclk\,
	inclk => \mypll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \mypll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \mypll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_X1_Y74_N3
\mypll|altpll_component|auto_generated|wire_pll1_fbout~clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mypll|altpll_component|auto_generated|wire_pll1_fbout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mypll|altpll_component|auto_generated|wire_pll1_fbout~clkctrl_outclk\);

-- Location: CLKCTRL_G15
\mypll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mypll|altpll_component|auto_generated|wire_pll1_clk\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mypll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: MLABCELL_X67_Y71_N20
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X67_Y71_N4
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( count(5) & ( !count(10) & ( (count(9) & (!count(7) & (count(6) & !count(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(9),
	datab => ALT_INV_count(7),
	datac => ALT_INV_count(6),
	datad => ALT_INV_count(8),
	datae => ALT_INV_count(5),
	dataf => ALT_INV_count(10),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X67_Y71_N18
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !count(1) & ( !count(2) & ( (count(4) & (!count(15) & (!count(3) & count(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(4),
	datab => ALT_INV_count(15),
	datac => ALT_INV_count(3),
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(1),
	dataf => ALT_INV_count(2),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X67_Y70_N24
\Add0~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( count(22) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( count(22) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(22),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X67_Y70_N26
\Add0~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( count(23) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( count(23) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(23),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X67_Y70_N27
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: MLABCELL_X67_Y70_N28
\Add0~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( count(24) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( count(24) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(24),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X67_Y70_N29
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: MLABCELL_X67_Y70_N30
\Add0~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( count(25) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( count(25) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(25),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X67_Y70_N31
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: MLABCELL_X67_Y70_N32
\Add0~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( count(26) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(26),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\);

-- Location: FF_X67_Y70_N33
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: MLABCELL_X67_Y70_N34
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !count(24) & ( (!count(26) & !count(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(26),
	datad => ALT_INV_count(25),
	dataf => ALT_INV_count(24),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X68_Y70_N0
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !count(14) & ( !count(12) & ( (!count(13) & (!count(11) & (!count(16) & !count(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(13),
	datab => ALT_INV_count(11),
	datac => ALT_INV_count(16),
	datad => ALT_INV_count(17),
	datae => ALT_INV_count(14),
	dataf => ALT_INV_count(12),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X67_Y71_N2
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~4_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X67_Y71_N21
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: MLABCELL_X67_Y71_N22
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( count(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( count(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X67_Y71_N23
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X67_Y71_N24
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( count(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X67_Y71_N25
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: MLABCELL_X67_Y71_N26
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( count(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X67_Y71_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: MLABCELL_X67_Y71_N28
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( count(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X67_Y71_N29
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: MLABCELL_X67_Y71_N30
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( count(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X67_Y71_N31
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: MLABCELL_X67_Y71_N32
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( count(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X67_Y71_N33
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: MLABCELL_X67_Y71_N34
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( count(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X67_Y71_N35
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: MLABCELL_X67_Y71_N36
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( count(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( count(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X67_Y71_N37
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: MLABCELL_X67_Y71_N38
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( count(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( count(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X67_Y71_N39
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: MLABCELL_X67_Y70_N0
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( count(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( count(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X67_Y71_N15
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~41_sumout\,
	sclr => \Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: MLABCELL_X67_Y70_N2
\Add0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( count(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( count(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X67_Y70_N3
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: MLABCELL_X67_Y70_N4
\Add0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( count(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( count(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X67_Y70_N5
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: MLABCELL_X67_Y70_N6
\Add0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( count(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( count(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X67_Y70_N7
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: MLABCELL_X67_Y70_N8
\Add0~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( count(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( count(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X67_Y70_N9
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: MLABCELL_X67_Y70_N10
\Add0~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( GND ) + ( count(15) ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( GND ) + ( count(15) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_count(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X67_Y71_N11
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~61_sumout\,
	sclr => \Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: MLABCELL_X67_Y70_N12
\Add0~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( count(16) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( count(16) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(16),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X67_Y70_N13
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: MLABCELL_X67_Y70_N14
\Add0~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( count(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( count(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X67_Y70_N15
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: MLABCELL_X67_Y70_N16
\Add0~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( count(18) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( count(18) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(18),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X67_Y70_N17
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: MLABCELL_X67_Y70_N18
\Add0~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( count(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( count(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X67_Y70_N19
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: MLABCELL_X67_Y70_N20
\Add0~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( count(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( count(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(20),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X67_Y70_N21
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: MLABCELL_X67_Y70_N22
\Add0~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( count(21) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( count(21) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(21),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X67_Y70_N23
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: FF_X67_Y70_N25
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: MLABCELL_X67_Y70_N36
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !count(21) & ( !count(19) & ( (!count(22) & (!count(18) & (!count(20) & !count(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(22),
	datab => ALT_INV_count(18),
	datac => ALT_INV_count(20),
	datad => ALT_INV_count(23),
	datae => ALT_INV_count(21),
	dataf => ALT_INV_count(19),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X67_Y71_N12
\foo~0\ : arriaii_lcell_comb
-- Equation(s):
-- \foo~0_combout\ = ( \Equal0~4_combout\ & ( \Equal0~0_combout\ & ( !\foo~q\ $ (((!\Equal0~1_combout\) # ((!\Equal0~3_combout\) # (!\Equal0~2_combout\)))) ) ) ) # ( !\Equal0~4_combout\ & ( \Equal0~0_combout\ & ( \foo~q\ ) ) ) # ( \Equal0~4_combout\ & ( 
-- !\Equal0~0_combout\ & ( \foo~q\ ) ) ) # ( !\Equal0~4_combout\ & ( !\Equal0~0_combout\ & ( \foo~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_foo~q\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \foo~0_combout\);

-- Location: FF_X67_Y71_N9
foo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \foo~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \foo~q\);

-- Location: IOIBUF_X57_Y0_N1
\x1~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X57_Y0_N63
\x2~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: FF_X57_Y4_N13
last : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \x2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last~q\);

-- Location: MLABCELL_X57_Y4_N10
\count3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \count3~3_combout\ = ( \x2~input_o\ & ( (\last~q\ & !count3(0)) ) ) # ( !\x2~input_o\ & ( !count3(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000010101010000000011111111000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_last~q\,
	datad => ALT_INV_count3(0),
	datae => \ALT_INV_x2~input_o\,
	combout => \count3~3_combout\);

-- Location: FF_X57_Y4_N9
\count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \count3~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(0));

-- Location: MLABCELL_X57_Y4_N30
\count3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \count3~2_combout\ = ( \last~q\ & ( !\Equal1~0_combout\ & ( !count3(0) $ (!count3(1)) ) ) ) # ( !\last~q\ & ( !\Equal1~0_combout\ & ( (!\x2~input_o\ & (!count3(0) $ (!count3(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count3(0),
	datac => \ALT_INV_x2~input_o\,
	datad => ALT_INV_count3(1),
	datae => \ALT_INV_last~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \count3~2_combout\);

-- Location: FF_X57_Y4_N29
\count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \count3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(1));

-- Location: MLABCELL_X57_Y4_N2
\count3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \count3~4_combout\ = ( count3(2) & ( (!\last~q\ & (!\x2~input_o\ & ((!count3(1)) # (!count3(0))))) # (\last~q\ & ((!count3(1)) # ((!count3(0))))) ) ) # ( !count3(2) & ( (count3(1) & (count3(0) & ((!\x2~input_o\) # (\last~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001111101011100010000000000001100011111010111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_last~q\,
	datab => ALT_INV_count3(1),
	datac => \ALT_INV_x2~input_o\,
	datad => ALT_INV_count3(0),
	datae => ALT_INV_count3(2),
	combout => \count3~4_combout\);

-- Location: FF_X57_Y4_N1
\count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \count3~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(2));

-- Location: MLABCELL_X57_Y4_N20
\Add1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( count3(1) & ( !count3(3) $ (((!count3(2)) # (!count3(0)))) ) ) # ( !count3(1) & ( count3(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count3(3),
	datac => ALT_INV_count3(2),
	datad => ALT_INV_count3(0),
	dataf => ALT_INV_count3(1),
	combout => \Add1~1_combout\);

-- Location: MLABCELL_X57_Y4_N22
\count3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \count3~1_combout\ = ( \Add1~1_combout\ & ( (!\Equal1~0_combout\ & ((!\x2~input_o\) # (\last~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_x2~input_o\,
	datad => \ALT_INV_last~q\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \count3~1_combout\);

-- Location: FF_X57_Y4_N23
\count3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	d => \count3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(3));

-- Location: MLABCELL_X57_Y4_N34
\Add1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( count3(2) & ( count3(1) & ( (count3(0) & count3(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count3(0),
	datac => ALT_INV_count3(3),
	datae => ALT_INV_count3(2),
	dataf => ALT_INV_count3(1),
	combout => \Add1~0_combout\);

-- Location: MLABCELL_X57_Y4_N24
\count3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \count3~0_combout\ = ( \x2~input_o\ & ( count3(4) & ( (\last~q\ & (!\Add1~0_combout\ & !\Equal1~0_combout\)) ) ) ) # ( !\x2~input_o\ & ( count3(4) & ( (!\Add1~0_combout\ & !\Equal1~0_combout\) ) ) ) # ( \x2~input_o\ & ( !count3(4) & ( (\last~q\ & 
-- (\Add1~0_combout\ & !\Equal1~0_combout\)) ) ) ) # ( !\x2~input_o\ & ( !count3(4) & ( (\Add1~0_combout\ & !\Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000100000001000011000000110000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_last~q\,
	datab => \ALT_INV_Add1~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_x2~input_o\,
	dataf => ALT_INV_count3(4),
	combout => \count3~0_combout\);

-- Location: FF_X57_Y4_N35
\count3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \count3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count3(4));

-- Location: MLABCELL_X57_Y4_N38
\Equal1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !count3(2) & ( !count3(1) & ( (count3(0) & (count3(3) & !count3(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count3(0),
	datab => ALT_INV_count3(3),
	datad => ALT_INV_count3(4),
	datae => ALT_INV_count3(2),
	dataf => ALT_INV_count3(1),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X57_Y4_N18
\foo2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \foo2~0_combout\ = ( \x2~input_o\ & ( \foo2~q\ & ( (!\last~q\) # (!\Equal1~0_combout\) ) ) ) # ( !\x2~input_o\ & ( \foo2~q\ & ( !\Equal1~0_combout\ ) ) ) # ( \x2~input_o\ & ( !\foo2~q\ & ( (!\last~q\) # (\Equal1~0_combout\) ) ) ) # ( !\x2~input_o\ & ( 
-- !\foo2~q\ & ( \Equal1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010101111111111111111000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_last~q\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_x2~input_o\,
	dataf => \ALT_INV_foo2~q\,
	combout => \foo2~0_combout\);

-- Location: FF_X57_Y4_N17
foo2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x1~input_o\,
	asdata => \foo2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \foo2~q\);
END structure;


