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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/20/2024 06:08:51"

-- 
-- Device: Altera EP2C35F672C8 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	clk : IN std_logic;
	nRst : IN std_logic;
	segmentos_seg : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_min : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_hora : OUT std_logic_vector(6 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- segmentos_seg[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[3]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg[6]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[2]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[3]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[1]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[4]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora[6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nRst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_segmentos_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_hora : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nRst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \h~2_combout\ : std_logic;
SIGNAL \ticks~11_combout\ : std_logic;
SIGNAL \ticks~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \nRst~combout\ : std_logic;
SIGNAL \nRst~clkctrl_outclk\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \ticks~16_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \ticks~15_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \ticks~14_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \ticks~13_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \ticks~12_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \ticks~10_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \ticks~21_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \ticks~20_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \ticks~19_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \ticks~18_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux6~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux6~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux6~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux6~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux5~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux5~5_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux4~8_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux3~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux1~1_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux1~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux0~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux0~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|Mux0~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \m[5]~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \m~4_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux6~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux6~5_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux6~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux6~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux5~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux5~5_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux5~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux4~8_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux3~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux1~1_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux1~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux0~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux0~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|Mux0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \h[0]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \h[5]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \h~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux6~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux6~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux6~5_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux6~4_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux5~3_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux5~5_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux4~8_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux3~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux1~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \DecodificadorHoras|Mux0~0_combout\ : std_logic;
SIGNAL h : std_logic_vector(5 DOWNTO 0);
SIGNAL m : std_logic_vector(5 DOWNTO 0);
SIGNAL s : std_logic_vector(5 DOWNTO 0);
SIGNAL ticks : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_nRst~clkctrl_outclk\ : std_logic;
SIGNAL \DecodificadorHoras|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DecodificadorHoras|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorHoras|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorHoras|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorHoras|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorMinutos|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorSegundos|ALT_INV_Mux5~4_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
segmentos_seg <= ww_segmentos_seg;
segmentos_min <= ww_segmentos_min;
segmentos_hora <= ww_segmentos_hora;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\nRst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \nRst~combout\);
\ALT_INV_nRst~clkctrl_outclk\ <= NOT \nRst~clkctrl_outclk\;
\DecodificadorHoras|ALT_INV_Mux0~0_combout\ <= NOT \DecodificadorHoras|Mux0~0_combout\;
\DecodificadorHoras|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorHoras|Mux2~0_combout\;
\DecodificadorHoras|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorHoras|Mux3~4_combout\;
\DecodificadorHoras|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorHoras|Mux4~9_combout\;
\DecodificadorHoras|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorHoras|Mux5~4_combout\;
\DecodificadorMinutos|ALT_INV_Mux0~4_combout\ <= NOT \DecodificadorMinutos|Mux0~4_combout\;
\DecodificadorMinutos|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorMinutos|Mux2~0_combout\;
\DecodificadorMinutos|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorMinutos|Mux3~4_combout\;
\DecodificadorMinutos|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorMinutos|Mux4~9_combout\;
\DecodificadorMinutos|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorMinutos|Mux5~4_combout\;
\DecodificadorSegundos|ALT_INV_Mux0~4_combout\ <= NOT \DecodificadorSegundos|Mux0~4_combout\;
\DecodificadorSegundos|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorSegundos|Mux2~0_combout\;
\DecodificadorSegundos|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorSegundos|Mux3~4_combout\;
\DecodificadorSegundos|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorSegundos|Mux4~9_combout\;
\DecodificadorSegundos|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorSegundos|Mux5~4_combout\;

-- Location: LCCOMB_X34_Y27_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (s(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!s(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!s(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X35_Y28_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X34_Y28_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X36_Y34_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X37_Y35_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X38_Y28_N22
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X37_Y28_N20
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X37_Y27_N24
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (m(3) & (!\Add1~5\)) # (!m(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!m(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X38_Y27_N24
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h(3) & (!\Add0~5\)) # (!h(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X35_Y27_N20
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (ticks(7) & (!\Add3~13\)) # (!ticks(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!ticks(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X35_Y26_N8
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (ticks(17) & (!\Add3~33\)) # (!ticks(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!ticks(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X35_Y26_N22
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (ticks(24) & (\Add3~47\ $ (GND))) # (!ticks(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((ticks(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X35_Y26_N24
\Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = \Add3~49\ $ (ticks(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ticks(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: LCCOMB_X34_Y27_N8
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X35_Y28_N10
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X34_Y27_N16
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X35_Y28_N12
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Mod0|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X34_Y28_N24
\Mod0|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X35_Y28_N4
\Mod0|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X37_Y34_N6
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X37_Y34_N4
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & m(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => m(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X37_Y34_N16
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & m(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => m(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X37_Y34_N26
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (m(2) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X36_Y34_N12
\Mod1|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X36_Y34_N2
\Mod1|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X37_Y35_N6
\Mod1|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => m(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCFF_X37_Y27_N15
\h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(3));

-- Location: LCCOMB_X38_Y28_N16
\Mod2|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ = (h(5) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X38_Y28_N10
\Mod2|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X38_Y27_N2
\Mod2|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X38_Y28_N12
\Mod2|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ = (h(2) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X37_Y28_N6
\Mod2|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X37_Y28_N10
\Mod2|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & h(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => h(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCFF_X35_Y26_N27
\ticks[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~17_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(25));

-- Location: LCCOMB_X36_Y27_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (ticks(20) & (ticks(19) & (!ticks(18) & ticks(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(20),
	datab => ticks(19),
	datac => ticks(18),
	datad => ticks(21),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X36_Y26_N7
\ticks[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~11_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(17));

-- Location: LCCOMB_X37_Y27_N12
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (m(0) & (m(1) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datac => m(1),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X37_Y27_N14
\h~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \h~2_combout\ = (\Add0~6_combout\ & (((!\Equal3~0_combout\) # (!h(1))) # (!h(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(0),
	datab => h(1),
	datac => \Equal3~0_combout\,
	datad => \Add0~6_combout\,
	combout => \h~2_combout\);

-- Location: LCCOMB_X36_Y26_N6
\ticks~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~11_combout\ = (\Add3~34_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~34_combout\,
	combout => \ticks~11_combout\);

-- Location: LCCOMB_X35_Y26_N26
\ticks~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~17_combout\ = (\Add3~50_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Add3~50_combout\,
	datad => \Equal0~7_combout\,
	combout => \ticks~17_combout\);

-- Location: LCCOMB_X34_Y27_N12
\Mod0|auto_generated|divider|divider|StageOut[28]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => s(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\);

-- Location: LCCOMB_X37_Y34_N8
\Mod1|auto_generated|divider|divider|StageOut[27]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((m(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => m(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\);

-- Location: LCCOMB_X38_Y28_N4
\Mod2|auto_generated|divider|divider|StageOut[28]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (h(5))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => h(5),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y27_N18
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = s(0) $ (VCC)
-- \Add2~1\ = CARRY(s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nRst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nRst,
	combout => \nRst~combout\);

-- Location: CLKCTRL_G1
\nRst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRst~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y27_N6
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ticks(0) $ (VCC)
-- \Add3~1\ = CARRY(ticks(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCFF_X35_Y27_N7
\ticks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(0));

-- Location: LCCOMB_X35_Y27_N8
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (ticks(1) & (!\Add3~1\)) # (!ticks(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!ticks(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCFF_X35_Y27_N9
\ticks[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(1));

-- Location: LCCOMB_X35_Y27_N10
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (ticks(2) & (\Add3~3\ $ (GND))) # (!ticks(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((ticks(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCFF_X35_Y27_N11
\ticks[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(2));

-- Location: LCCOMB_X35_Y27_N12
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (ticks(3) & (!\Add3~5\)) # (!ticks(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!ticks(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X35_Y27_N14
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (ticks(4) & (\Add3~7\ $ (GND))) # (!ticks(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((ticks(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCFF_X35_Y27_N15
\ticks[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~8_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(4));

-- Location: LCCOMB_X35_Y27_N16
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (ticks(5) & (!\Add3~9\)) # (!ticks(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!ticks(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCFF_X35_Y27_N17
\ticks[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(5));

-- Location: LCFF_X35_Y27_N13
\ticks[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~6_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(3));

-- Location: LCCOMB_X36_Y27_N14
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (ticks(4) & (ticks(2) & (ticks(5) & ticks(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(4),
	datab => ticks(2),
	datac => ticks(5),
	datad => ticks(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X35_Y27_N24
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (ticks(9) & (!\Add3~17\)) # (!ticks(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!ticks(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCFF_X35_Y27_N25
\ticks[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~18_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(9));

-- Location: LCCOMB_X35_Y27_N18
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (ticks(6) & (\Add3~11\ $ (GND))) # (!ticks(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((ticks(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCFF_X35_Y27_N19
\ticks[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~12_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(6));

-- Location: LCCOMB_X36_Y27_N28
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!ticks(7) & (!ticks(8) & (!ticks(9) & ticks(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(7),
	datab => ticks(8),
	datac => ticks(9),
	datad => ticks(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X36_Y27_N16
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (ticks(1) & (ticks(0) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(1),
	datab => ticks(0),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X35_Y27_N0
\ticks~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~16_combout\ = (\Add3~14_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \ticks~16_combout\);

-- Location: LCFF_X35_Y27_N1
\ticks[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~16_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(7));

-- Location: LCCOMB_X35_Y27_N22
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (ticks(8) & (\Add3~15\ $ (GND))) # (!ticks(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((ticks(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCFF_X35_Y27_N23
\ticks[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~16_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(8));

-- Location: LCCOMB_X35_Y27_N26
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (ticks(10) & (\Add3~19\ $ (GND))) # (!ticks(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((ticks(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCFF_X35_Y27_N27
\ticks[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~20_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(10));

-- Location: LCCOMB_X35_Y27_N28
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (ticks(11) & (!\Add3~21\)) # (!ticks(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!ticks(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCFF_X35_Y27_N29
\ticks[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~22_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(11));

-- Location: LCCOMB_X35_Y27_N30
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (ticks(12) & (\Add3~23\ $ (GND))) # (!ticks(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((ticks(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X35_Y27_N2
\ticks~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~15_combout\ = (\Add3~24_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~24_combout\,
	combout => \ticks~15_combout\);

-- Location: LCFF_X35_Y27_N3
\ticks[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~15_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(12));

-- Location: LCCOMB_X36_Y27_N8
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (ticks(13) & (!ticks(11) & (!ticks(10) & ticks(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(13),
	datab => ticks(11),
	datac => ticks(10),
	datad => ticks(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X35_Y26_N0
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (ticks(13) & (!\Add3~25\)) # (!ticks(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!ticks(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X36_Y27_N10
\ticks~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~14_combout\ = (\Add3~26_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~26_combout\,
	combout => \ticks~14_combout\);

-- Location: LCFF_X36_Y27_N11
\ticks[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~14_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(13));

-- Location: LCCOMB_X35_Y26_N2
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (ticks(14) & (\Add3~27\ $ (GND))) # (!ticks(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((ticks(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X36_Y26_N14
\ticks~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~13_combout\ = (\Add3~28_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~28_combout\,
	combout => \ticks~13_combout\);

-- Location: LCFF_X36_Y26_N15
\ticks[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~13_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(14));

-- Location: LCCOMB_X35_Y26_N4
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (ticks(15) & (!\Add3~29\)) # (!ticks(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!ticks(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X36_Y26_N8
\ticks~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~12_combout\ = (\Add3~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~30_combout\,
	datad => \Equal0~4_combout\,
	combout => \ticks~12_combout\);

-- Location: LCFF_X36_Y26_N9
\ticks[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~12_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(15));

-- Location: LCCOMB_X35_Y26_N6
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (ticks(16) & (\Add3~31\ $ (GND))) # (!ticks(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((ticks(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCFF_X35_Y26_N7
\ticks[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~32_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(16));

-- Location: LCCOMB_X35_Y26_N10
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (ticks(18) & (\Add3~35\ $ (GND))) # (!ticks(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((ticks(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCFF_X35_Y26_N11
\ticks[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~36_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(18));

-- Location: LCCOMB_X35_Y26_N12
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (ticks(19) & (!\Add3~37\)) # (!ticks(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!ticks(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X36_Y27_N2
\ticks~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~10_combout\ = (\Add3~38_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~38_combout\,
	combout => \ticks~10_combout\);

-- Location: LCFF_X36_Y27_N3
\ticks[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(19));

-- Location: LCCOMB_X35_Y26_N14
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (ticks(20) & (\Add3~39\ $ (GND))) # (!ticks(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((ticks(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X36_Y27_N20
\ticks~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~21_combout\ = (\Add3~40_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~40_combout\,
	datad => \Equal0~4_combout\,
	combout => \ticks~21_combout\);

-- Location: LCFF_X36_Y27_N21
\ticks[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~21_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(20));

-- Location: LCCOMB_X35_Y26_N16
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (ticks(21) & (!\Add3~41\)) # (!ticks(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!ticks(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X36_Y27_N6
\ticks~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~20_combout\ = (\Add3~42_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~42_combout\,
	combout => \ticks~20_combout\);

-- Location: LCFF_X36_Y27_N7
\ticks[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~20_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(21));

-- Location: LCCOMB_X35_Y26_N18
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (ticks(22) & (\Add3~43\ $ (GND))) # (!ticks(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((ticks(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ticks(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X35_Y26_N28
\ticks~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~19_combout\ = (\Add3~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add3~44_combout\,
	combout => \ticks~19_combout\);

-- Location: LCFF_X35_Y26_N29
\ticks[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~19_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(22));

-- Location: LCCOMB_X35_Y26_N20
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (ticks(23) & (!\Add3~45\)) # (!ticks(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!ticks(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCFF_X35_Y26_N23
\ticks[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~48_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(24));

-- Location: LCCOMB_X36_Y26_N16
\ticks~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~18_combout\ = (\Add3~46_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Add3~46_combout\,
	datad => \Equal0~4_combout\,
	combout => \ticks~18_combout\);

-- Location: LCFF_X36_Y26_N17
\ticks[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ticks~18_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(23));

-- Location: LCCOMB_X35_Y26_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ticks(25) & (!ticks(24) & (ticks(23) & ticks(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(25),
	datab => ticks(24),
	datac => ticks(23),
	datad => ticks(22),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y26_N0
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (ticks(17) & (ticks(15) & (!ticks(16) & ticks(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(17),
	datab => ticks(15),
	datac => ticks(16),
	datad => ticks(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X36_Y27_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X36_Y27_N18
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCFF_X36_Y27_N19
\s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add2~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(0));

-- Location: LCCOMB_X34_Y27_N20
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (s(1) & (!\Add2~1\)) # (!s(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCFF_X35_Y27_N21
\s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add2~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(1));

-- Location: LCCOMB_X34_Y27_N22
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (s(2) & (\Add2~3\ $ (GND))) # (!s(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((s(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X34_Y27_N26
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s(4) & (\Add2~7\ $ (GND))) # (!s(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X34_Y27_N28
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add2~9\ $ (s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s(5),
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X36_Y27_N0
\s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = (\Add2~10_combout\ & (((!s(1)) # (!s(0))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datac => \Add2~10_combout\,
	datad => s(1),
	combout => \s~0_combout\);

-- Location: LCFF_X36_Y27_N1
\s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \s~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(5));

-- Location: LCCOMB_X34_Y27_N24
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s(3) & (!\Add2~5\)) # (!s(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X35_Y27_N4
\s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~2_combout\ = (\Add2~6_combout\ & (((!\Equal1~0_combout\) # (!s(1))) # (!s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(0),
	datab => s(1),
	datac => \Equal1~0_combout\,
	datad => \Add2~6_combout\,
	combout => \s~2_combout\);

-- Location: LCFF_X35_Y27_N5
\s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \s~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(3));

-- Location: LCCOMB_X36_Y27_N12
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!s(2) & (s(5) & (s(3) & s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(2),
	datab => s(5),
	datac => s(3),
	datad => s(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X36_Y27_N4
\s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~3_combout\ = (\Add2~4_combout\ & (((!\Equal1~0_combout\) # (!s(0))) # (!s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => s(0),
	datac => \Add2~4_combout\,
	datad => \Equal1~0_combout\,
	combout => \s~3_combout\);

-- Location: LCFF_X36_Y27_N5
\s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \s~3_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(2));

-- Location: LCCOMB_X36_Y27_N26
\s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~1_combout\ = (\Add2~8_combout\ & (((!s(1)) # (!s(0))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datac => \Add2~8_combout\,
	datad => s(1),
	combout => \s~1_combout\);

-- Location: LCFF_X36_Y27_N27
\s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \s~1_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(4));

-- Location: LCCOMB_X34_Y27_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = s(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X34_Y27_N4
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (s(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!s(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((s(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X34_Y27_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X35_Y28_N26
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X35_Y28_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X34_Y27_N10
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X35_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X34_Y27_N14
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X35_Y28_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X35_Y28_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X35_Y28_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y28_N28
\Mod0|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X34_Y28_N6
\DecodificadorSegundos|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux6~2_combout\ = (s(1) & (((!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)) # (!s(0)))) # (!s(1) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(1),
	datad => s(0),
	combout => \DecodificadorSegundos|Mux6~2_combout\);

-- Location: LCCOMB_X34_Y27_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (s(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X34_Y28_N2
\DecodificadorSegundos|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux6~5_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorSegundos|Mux6~5_combout\);

-- Location: LCCOMB_X35_Y28_N0
\Mod0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X35_Y28_N14
\Mod0|auto_generated|divider|divider|StageOut[27]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\);

-- Location: LCCOMB_X35_Y28_N30
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X34_Y28_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X34_Y28_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X34_Y28_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X34_Y28_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X34_Y28_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X34_Y28_N0
\DecodificadorSegundos|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux6~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & ((!s(0)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux6~3_combout\);

-- Location: LCCOMB_X34_Y28_N22
\DecodificadorSegundos|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux6~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorSegundos|Mux6~2_combout\) # ((\DecodificadorSegundos|Mux6~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundos|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundos|Mux6~2_combout\,
	datab => \DecodificadorSegundos|Mux6~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \DecodificadorSegundos|Mux6~3_combout\,
	combout => \DecodificadorSegundos|Mux6~4_combout\);

-- Location: LCCOMB_X33_Y28_N18
\DecodificadorSegundos|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux5~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((s(0)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux5~3_combout\);

-- Location: LCCOMB_X34_Y28_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X33_Y28_N4
\DecodificadorSegundos|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux5~2_combout\ = (s(1) & ((s(0)) # ((!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!s(1) & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux5~2_combout\);

-- Location: LCCOMB_X34_Y28_N4
\DecodificadorSegundos|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux5~5_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorSegundos|Mux5~5_combout\);

-- Location: LCCOMB_X33_Y28_N0
\DecodificadorSegundos|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux5~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundos|Mux5~2_combout\ & \DecodificadorSegundos|Mux5~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundos|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorSegundos|Mux5~3_combout\,
	datac => \DecodificadorSegundos|Mux5~2_combout\,
	datad => \DecodificadorSegundos|Mux5~5_combout\,
	combout => \DecodificadorSegundos|Mux5~4_combout\);

-- Location: LCCOMB_X33_Y28_N10
\DecodificadorSegundos|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux4~8_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorSegundos|Mux4~8_combout\);

-- Location: LCCOMB_X34_Y28_N30
\DecodificadorSegundos|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux4~10_combout\ = (!s(1) & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((s(2)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => s(2),
	combout => \DecodificadorSegundos|Mux4~10_combout\);

-- Location: LCCOMB_X33_Y28_N12
\DecodificadorSegundos|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux4~9_combout\ = (s(0)) # ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorSegundos|Mux4~10_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\DecodificadorSegundos|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundos|Mux4~8_combout\,
	datab => \DecodificadorSegundos|Mux4~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux4~9_combout\);

-- Location: LCCOMB_X33_Y28_N2
\DecodificadorSegundos|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux3~2_combout\ = (s(1) & (s(0) & ((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!s(1) & (s(0) $ 
-- (((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux3~2_combout\);

-- Location: LCCOMB_X33_Y28_N8
\DecodificadorSegundos|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux3~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & s(0))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (s(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux3~3_combout\);

-- Location: LCCOMB_X33_Y28_N22
\DecodificadorSegundos|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux3~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundos|Mux3~2_combout\ & ((\DecodificadorSegundos|Mux5~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundos|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorSegundos|Mux3~2_combout\,
	datac => \DecodificadorSegundos|Mux3~3_combout\,
	datad => \DecodificadorSegundos|Mux5~5_combout\,
	combout => \DecodificadorSegundos|Mux3~4_combout\);

-- Location: LCCOMB_X33_Y28_N6
\Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X33_Y28_N16
\Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((s(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => s(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X33_Y28_N28
\DecodificadorSegundos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux2~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & !s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y28_N24
\DecodificadorSegundos|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux1~1_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ $ (!s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux1~1_combout\);

-- Location: LCCOMB_X33_Y28_N14
\DecodificadorSegundos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & (s(1) $ (((!s(0)))))) # (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & ((s(1) $ (!s(0))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y28_N20
\DecodificadorSegundos|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux1~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundos|Mux1~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\DecodificadorSegundos|Mux1~1_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorSegundos|Mux1~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \DecodificadorSegundos|Mux1~0_combout\,
	combout => \DecodificadorSegundos|Mux1~2_combout\);

-- Location: LCCOMB_X33_Y28_N26
\DecodificadorSegundos|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux0~2_combout\ = (!s(1) & (s(0) $ (((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux0~2_combout\);

-- Location: LCCOMB_X33_Y28_N20
\DecodificadorSegundos|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux0~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => s(0),
	combout => \DecodificadorSegundos|Mux0~3_combout\);

-- Location: LCCOMB_X33_Y28_N30
\DecodificadorSegundos|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundos|Mux0~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundos|Mux0~2_combout\ & ((\DecodificadorSegundos|Mux5~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundos|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorSegundos|Mux0~2_combout\,
	datac => \DecodificadorSegundos|Mux0~3_combout\,
	datad => \DecodificadorSegundos|Mux5~5_combout\,
	combout => \DecodificadorSegundos|Mux0~4_combout\);

-- Location: LCCOMB_X37_Y27_N18
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = m(0) $ (VCC)
-- \Add1~1\ = CARRY(m(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X37_Y27_N4
\m[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m[5]~1_combout\ = (\Equal1~1_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \m[5]~1_combout\);

-- Location: LCFF_X37_Y27_N19
\m[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(0));

-- Location: LCCOMB_X37_Y27_N20
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (m(1) & (!\Add1~1\)) # (!m(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!m(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCFF_X37_Y27_N21
\m[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(1));

-- Location: LCCOMB_X37_Y27_N22
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (m(2) & (\Add1~3\ $ (GND))) # (!m(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((m(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X37_Y27_N2
\m~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~4_combout\ = (\Add1~4_combout\ & (((!m(1)) # (!m(0))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Add1~4_combout\,
	combout => \m~4_combout\);

-- Location: LCFF_X37_Y27_N3
\m[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(2));

-- Location: LCCOMB_X37_Y27_N26
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (m(4) & (\Add1~7\ $ (GND))) # (!m(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((m(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X37_Y27_N10
\m~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\Add1~8_combout\ & (((!m(1)) # (!m(0))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Add1~8_combout\,
	combout => \m~2_combout\);

-- Location: LCFF_X37_Y27_N11
\m[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(4));

-- Location: LCCOMB_X37_Y27_N6
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (m(5) & (!m(2) & (m(3) & m(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(5),
	datab => m(2),
	datac => m(3),
	datad => m(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X37_Y27_N8
\m~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\Add1~6_combout\ & (((!\Equal2~0_combout\) # (!m(1))) # (!m(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Equal2~0_combout\,
	combout => \m~3_combout\);

-- Location: LCFF_X37_Y27_N9
\m[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m~3_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(3));

-- Location: LCCOMB_X37_Y27_N28
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = m(5) $ (\Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X37_Y27_N16
\m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (\Add1~10_combout\ & (((!m(1)) # (!m(0))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Add1~10_combout\,
	combout => \m~0_combout\);

-- Location: LCFF_X37_Y27_N17
\m[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(5));

-- Location: LCCOMB_X37_Y34_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = m(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(m(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X37_Y34_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (m(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!m(4) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!m(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X37_Y34_N22
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (m(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!m(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((m(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X37_Y34_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X37_Y34_N0
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & m(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => m(5),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X37_Y34_N10
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X37_Y34_N14
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X37_Y34_N12
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (m(2) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X36_Y34_N20
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X36_Y34_N22
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X36_Y34_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X36_Y34_N28
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X37_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => m(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X37_Y35_N18
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X37_Y35_N30
\Mod1|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X37_Y35_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X36_Y35_N10
\DecodificadorMinutos|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux6~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\) # (!m(0)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorMinutos|Mux6~3_combout\);

-- Location: LCCOMB_X36_Y34_N0
\DecodificadorMinutos|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux6~5_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\) # ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorMinutos|Mux6~5_combout\);

-- Location: LCCOMB_X36_Y35_N8
\DecodificadorMinutos|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux6~2_combout\ = (m(1) & (((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)) # (!m(0)))) # (!m(1) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \DecodificadorMinutos|Mux6~2_combout\);

-- Location: LCCOMB_X37_Y34_N30
\Mod1|auto_generated|divider|divider|StageOut[28]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (m(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => m(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\);

-- Location: LCCOMB_X37_Y34_N28
\Mod1|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X37_Y34_N2
\Mod1|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (m(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X37_Y35_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X37_Y35_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y35_N28
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X36_Y35_N12
\DecodificadorMinutos|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux6~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutos|Mux6~5_combout\) # (\DecodificadorMinutos|Mux6~2_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorMinutos|Mux6~3_combout\,
	datab => \DecodificadorMinutos|Mux6~5_combout\,
	datac => \DecodificadorMinutos|Mux6~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux6~4_combout\);

-- Location: LCCOMB_X36_Y35_N14
\DecodificadorMinutos|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux5~2_combout\ = (m(1) & ((m(0)) # ((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!m(1) & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & (m(0) & !\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \DecodificadorMinutos|Mux5~2_combout\);

-- Location: LCCOMB_X36_Y35_N28
\DecodificadorMinutos|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux5~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((m(0)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (m(0) & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorMinutos|Mux5~3_combout\);

-- Location: LCCOMB_X36_Y34_N10
\DecodificadorMinutos|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux5~5_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorMinutos|Mux5~5_combout\);

-- Location: LCCOMB_X36_Y35_N18
\DecodificadorMinutos|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux5~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux5~2_combout\ & ((\DecodificadorMinutos|Mux5~5_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutos|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorMinutos|Mux5~2_combout\,
	datab => \DecodificadorMinutos|Mux5~3_combout\,
	datac => \DecodificadorMinutos|Mux5~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux5~4_combout\);

-- Location: LCCOMB_X37_Y35_N14
\DecodificadorMinutos|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux4~10_combout\ = (!m(1) & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (m(2))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(1),
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => m(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \DecodificadorMinutos|Mux4~10_combout\);

-- Location: LCCOMB_X37_Y35_N8
\DecodificadorMinutos|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux4~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DecodificadorMinutos|Mux4~8_combout\);

-- Location: LCCOMB_X37_Y35_N10
\DecodificadorMinutos|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux4~9_combout\ = (m(0)) # ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux4~10_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\DecodificadorMinutos|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(0),
	datab => \DecodificadorMinutos|Mux4~10_combout\,
	datac => \DecodificadorMinutos|Mux4~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux4~9_combout\);

-- Location: LCCOMB_X36_Y35_N24
\DecodificadorMinutos|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux3~2_combout\ = (m(1) & (m(0) & ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!m(1) & (m(0) $ 
-- (((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \DecodificadorMinutos|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y35_N26
\DecodificadorMinutos|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux3~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (m(0) & 
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (m(0) $ (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorMinutos|Mux3~3_combout\);

-- Location: LCCOMB_X36_Y35_N0
\DecodificadorMinutos|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux3~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux3~2_combout\ & ((\DecodificadorMinutos|Mux5~5_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutos|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorMinutos|Mux3~2_combout\,
	datab => \DecodificadorMinutos|Mux3~3_combout\,
	datac => \DecodificadorMinutos|Mux5~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux3~4_combout\);

-- Location: LCCOMB_X36_Y35_N6
\Mod1|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((m(1)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X37_Y35_N16
\Mod1|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ = (m(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X36_Y35_N4
\Mod1|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X36_Y35_N2
\DecodificadorMinutos|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux2~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & !m(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => m(0),
	combout => \DecodificadorMinutos|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y35_N12
\DecodificadorMinutos|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux1~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & (m(0) $ ((!m(1))))) # (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & ((m(0) $ (!m(1))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(0),
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	combout => \DecodificadorMinutos|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y35_N2
\DecodificadorMinutos|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux1~1_combout\ = m(0) $ (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DecodificadorMinutos|Mux1~1_combout\);

-- Location: LCCOMB_X37_Y35_N0
\DecodificadorMinutos|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux1~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux1~0_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\DecodificadorMinutos|Mux1~1_combout\) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorMinutos|Mux1~0_combout\,
	datab => \DecodificadorMinutos|Mux1~1_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y35_N16
\DecodificadorMinutos|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux0~2_combout\ = (!m(1) & (m(0) $ (((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \DecodificadorMinutos|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y35_N30
\DecodificadorMinutos|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux0~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (m(0) $ 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorMinutos|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y35_N20
\DecodificadorMinutos|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutos|Mux0~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutos|Mux0~2_combout\ & ((\DecodificadorMinutos|Mux5~5_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutos|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorMinutos|Mux0~2_combout\,
	datab => \DecodificadorMinutos|Mux0~3_combout\,
	datac => \DecodificadorMinutos|Mux5~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorMinutos|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y27_N18
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h(0) $ (VCC)
-- \Add0~1\ = CARRY(h(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X37_Y27_N0
\h[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \h[0]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \h[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N30
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (s(0) & s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datad => s(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X37_Y27_N30
\h[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h[5]~0_combout\ = (\Equal2~1_combout\ & (\Equal0~7_combout\ & (\Equal1~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \h[5]~0_combout\);

-- Location: LCFF_X37_Y27_N1
\h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h[0]~feeder_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(0));

-- Location: LCCOMB_X38_Y27_N20
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h(1) & (!\Add0~1\)) # (!h(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X38_Y27_N21
\h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(1));

-- Location: LCCOMB_X38_Y27_N22
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (h(2) & (\Add0~3\ $ (GND))) # (!h(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((h(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X38_Y27_N23
\h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(2));

-- Location: LCCOMB_X38_Y27_N26
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (h(4) & (\Add0~7\ $ (GND))) # (!h(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((h(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X38_Y27_N12
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!h(3) & (h(2) & (h(4) & !h(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datab => h(2),
	datac => h(4),
	datad => h(5),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X38_Y27_N14
\h~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \h~1_combout\ = (\Add0~8_combout\ & (((!\Equal3~0_combout\) # (!h(1))) # (!h(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(0),
	datab => \Add0~8_combout\,
	datac => h(1),
	datad => \Equal3~0_combout\,
	combout => \h~1_combout\);

-- Location: LCFF_X37_Y27_N5
\h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h~1_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	sload => VCC,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(4));

-- Location: LCCOMB_X38_Y27_N28
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (h(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCFF_X38_Y27_N29
\h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(5));

-- Location: LCCOMB_X38_Y27_N4
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = h(3) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(h(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X38_Y27_N6
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (h(4) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!h(4) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!h(4) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X38_Y27_N8
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (h(5) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!h(5) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((h(5) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X38_Y27_N10
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X38_Y28_N14
\Mod2|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X38_Y28_N8
\Mod2|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ = (h(4) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X38_Y27_N16
\Mod2|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ = (h(3) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X38_Y28_N2
\Mod2|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ = (h(2) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X38_Y28_N18
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X38_Y28_N20
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X38_Y28_N24
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X38_Y28_N26
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X38_Y28_N28
\Mod2|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\ = (h(1) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X37_Y28_N16
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X36_Y28_N16
\Mod2|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ = (h(2) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X37_Y28_N18
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X36_Y28_N10
\DecodificadorHoras|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux6~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\) # (!h(0)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux6~3_combout\);

-- Location: LCCOMB_X36_Y28_N14
\Mod2|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X36_Y28_N28
\DecodificadorHoras|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux6~2_combout\ = (h(1) & (((!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)) # (!h(0)))) # (!h(1) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => h(1),
	combout => \DecodificadorHoras|Mux6~2_combout\);

-- Location: LCCOMB_X37_Y28_N8
\Mod2|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X38_Y28_N30
\Mod2|auto_generated|divider|divider|StageOut[27]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((h(4)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => h(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X38_Y27_N0
\Mod2|auto_generated|divider|divider|StageOut[26]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (h(3))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X37_Y28_N22
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X37_Y28_N24
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X37_Y28_N26
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X37_Y28_N4
\DecodificadorHoras|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux6~5_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\) # ((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux6~5_combout\);

-- Location: LCCOMB_X36_Y28_N12
\DecodificadorHoras|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux6~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHoras|Mux6~2_combout\) # (\DecodificadorHoras|Mux6~5_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHoras|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHoras|Mux6~3_combout\,
	datab => \DecodificadorHoras|Mux6~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \DecodificadorHoras|Mux6~5_combout\,
	combout => \DecodificadorHoras|Mux6~4_combout\);

-- Location: LCCOMB_X36_Y28_N20
\DecodificadorHoras|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux5~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((h(0) & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!h(0) & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux5~3_combout\);

-- Location: LCCOMB_X36_Y28_N26
\DecodificadorHoras|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux5~2_combout\ = (h(0) & ((h(1)) # ((!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!h(0) & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & h(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => h(1),
	combout => \DecodificadorHoras|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y28_N30
\DecodificadorHoras|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux5~5_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux5~5_combout\);

-- Location: LCCOMB_X36_Y28_N6
\DecodificadorHoras|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux5~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHoras|Mux5~2_combout\ & \DecodificadorHoras|Mux5~5_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHoras|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHoras|Mux5~3_combout\,
	datab => \DecodificadorHoras|Mux5~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \DecodificadorHoras|Mux5~5_combout\,
	combout => \DecodificadorHoras|Mux5~4_combout\);

-- Location: LCCOMB_X36_Y28_N30
\DecodificadorHoras|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux4~10_combout\ = (!h(1) & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((h(2)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => h(1),
	datac => h(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorHoras|Mux4~10_combout\);

-- Location: LCCOMB_X36_Y28_N4
\DecodificadorHoras|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux4~8_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux4~8_combout\);

-- Location: LCCOMB_X36_Y28_N22
\DecodificadorHoras|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux4~9_combout\ = (h(0)) # ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHoras|Mux4~10_combout\)) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\DecodificadorHoras|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorHoras|Mux4~10_combout\,
	datac => \DecodificadorHoras|Mux4~8_combout\,
	datad => h(0),
	combout => \DecodificadorHoras|Mux4~9_combout\);

-- Location: LCCOMB_X36_Y28_N24
\DecodificadorHoras|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux3~2_combout\ = (h(0) & (h(1) $ (((!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\))))) # (!h(0) & (!h(1) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => h(1),
	combout => \DecodificadorHoras|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y28_N18
\DecodificadorHoras|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux3~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((h(0) & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ $ 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!h(0) & (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => h(0),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorHoras|Mux3~3_combout\);

-- Location: LCCOMB_X36_Y28_N8
\DecodificadorHoras|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux3~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHoras|Mux3~2_combout\ & ((\DecodificadorHoras|Mux5~5_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHoras|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHoras|Mux3~2_combout\,
	datab => \DecodificadorHoras|Mux3~3_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \DecodificadorHoras|Mux5~5_combout\,
	combout => \DecodificadorHoras|Mux3~4_combout\);

-- Location: LCCOMB_X37_Y28_N14
\Mod2|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X37_Y28_N28
\Mod2|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((h(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => h(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X38_Y28_N6
\DecodificadorHoras|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux2~0_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!h(0) & \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => h(0),
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \DecodificadorHoras|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y28_N0
\DecodificadorHoras|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux1~0_combout\ = (h(0) $ (!\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\)) # (!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => h(0),
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \DecodificadorHoras|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y28_N12
\Mod2|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X37_Y28_N0
\Mod2|auto_generated|divider|divider|StageOut[33]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X37_Y28_N2
\DecodificadorHoras|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHoras|Mux0~0_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & (h(0) $ (\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(0),
	datab => \Mod2|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \DecodificadorHoras|Mux0~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(5));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorSegundos|ALT_INV_Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorMinutos|ALT_INV_Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min(6));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(3));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(5));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DecodificadorHoras|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora(6));
END structure;


