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

-- DATE "08/21/2024 06:06:37"

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
	segmentos_seg_u : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_seg_d : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_min_u : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_min_d : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_hora_u : OUT std_logic_vector(6 DOWNTO 0);
	segmentos_hora_d : OUT std_logic_vector(6 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- segmentos_seg_u[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_u[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_seg_d[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_u[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_min_d[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_u[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segmentos_hora_d[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nRst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_segmentos_seg_u : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_seg_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_min_u : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_min_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_hora_u : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentos_hora_d : std_logic_vector(6 DOWNTO 0);
SIGNAL \nRst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ticks~11_combout\ : std_logic;
SIGNAL \ticks~17_combout\ : std_logic;
SIGNAL \ticks~18_combout\ : std_logic;
SIGNAL \ticks~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~41_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~42_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \nRst~combout\ : std_logic;
SIGNAL \nRst~clkctrl_outclk\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \ticks~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \ticks~15_combout\ : std_logic;
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
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \ticks~10_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \ticks~21_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \ticks~20_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \s~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \s~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \s~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux6~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux6~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux6~5_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux6~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux5~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux5~5_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux5~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux4~8_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux3~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux1~1_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux1~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux0~2_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux0~3_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|Mux0~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux6~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux5~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux4~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux3~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|Mux0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \m[5]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \m~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux6~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux6~5_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux6~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux6~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux5~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux5~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux4~8_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux3~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux1~1_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux1~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux0~3_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux0~2_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|Mux0~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux6~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux5~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux4~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux3~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|Mux0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \h[5]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \h~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \h~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux6~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux6~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux6~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux6~4_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux5~5_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux5~3_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux5~2_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux4~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux4~10_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux3~2_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux3~3_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux3~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux1~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux1~1_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux1~2_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux0~2_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux0~3_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|Mux0~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \DecodificadorHorasD|Mux0~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasD|Mux3~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasD|Mux2~0_combout\ : std_logic;
SIGNAL s : std_logic_vector(5 DOWNTO 0);
SIGNAL h : std_logic_vector(5 DOWNTO 0);
SIGNAL ticks : std_logic_vector(25 DOWNTO 0);
SIGNAL m : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_nRst~clkctrl_outclk\ : std_logic;
SIGNAL \DecodificadorHorasD|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorHorasU|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosD|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorMinutosU|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosD|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \DecodificadorSegundosU|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_nRst <= nRst;
segmentos_seg_u <= ww_segmentos_seg_u;
segmentos_seg_d <= ww_segmentos_seg_d;
segmentos_min_u <= ww_segmentos_min_u;
segmentos_min_d <= ww_segmentos_min_d;
segmentos_hora_u <= ww_segmentos_hora_u;
segmentos_hora_d <= ww_segmentos_hora_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \nRst~combout\);
\ALT_INV_nRst~clkctrl_outclk\ <= NOT \nRst~clkctrl_outclk\;
\DecodificadorHorasD|ALT_INV_Mux0~0_combout\ <= NOT \DecodificadorHorasD|Mux0~0_combout\;
\DecodificadorHorasU|ALT_INV_Mux0~4_combout\ <= NOT \DecodificadorHorasU|Mux0~4_combout\;
\DecodificadorHorasU|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorHorasU|Mux2~0_combout\;
\DecodificadorHorasU|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorHorasU|Mux3~4_combout\;
\DecodificadorHorasU|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorHorasU|Mux4~9_combout\;
\DecodificadorHorasU|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorHorasU|Mux5~4_combout\;
\DecodificadorMinutosD|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorMinutosD|Mux2~0_combout\;
\DecodificadorMinutosD|ALT_INV_Mux4~0_combout\ <= NOT \DecodificadorMinutosD|Mux4~0_combout\;
\DecodificadorMinutosU|ALT_INV_Mux0~4_combout\ <= NOT \DecodificadorMinutosU|Mux0~4_combout\;
\DecodificadorMinutosU|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorMinutosU|Mux2~0_combout\;
\DecodificadorMinutosU|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorMinutosU|Mux3~4_combout\;
\DecodificadorMinutosU|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorMinutosU|Mux4~9_combout\;
\DecodificadorMinutosU|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorMinutosU|Mux5~4_combout\;
\DecodificadorSegundosD|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorSegundosD|Mux2~0_combout\;
\DecodificadorSegundosD|ALT_INV_Mux4~0_combout\ <= NOT \DecodificadorSegundosD|Mux4~0_combout\;
\DecodificadorSegundosU|ALT_INV_Mux0~4_combout\ <= NOT \DecodificadorSegundosU|Mux0~4_combout\;
\DecodificadorSegundosU|ALT_INV_Mux2~0_combout\ <= NOT \DecodificadorSegundosU|Mux2~0_combout\;
\DecodificadorSegundosU|ALT_INV_Mux3~4_combout\ <= NOT \DecodificadorSegundosU|Mux3~4_combout\;
\DecodificadorSegundosU|ALT_INV_Mux4~9_combout\ <= NOT \DecodificadorSegundosU|Mux4~9_combout\;
\DecodificadorSegundosU|ALT_INV_Mux5~4_combout\ <= NOT \DecodificadorSegundosU|Mux5~4_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;

-- Location: LCCOMB_X30_Y5_N4
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

-- Location: LCCOMB_X29_Y5_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X60_Y20_N6
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (s(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!s(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!s(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X60_Y20_N8
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (s(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!s(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((s(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X60_Y16_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X60_Y16_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X60_Y16_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X62_Y9_N24
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

-- Location: LCCOMB_X64_Y10_N20
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = m(3) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(m(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(3),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X63_Y10_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X63_Y10_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X34_Y17_N16
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

-- Location: LCCOMB_X33_Y17_N12
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X59_Y17_N18
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (h(5) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!h(5) & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((h(5) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h(5),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X59_Y17_N0
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X59_Y17_N2
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X59_Y17_N4
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X61_Y21_N24
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (m(4) & (\Add1~7\ $ (GND))) # (!m(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((m(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X61_Y21_N26
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (m(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => m(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X61_Y20_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h(3) & (!\Add0~5\)) # (!h(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X61_Y20_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (h(4) & (\Add0~7\ $ (GND))) # (!h(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((h(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X63_Y21_N6
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

-- Location: LCCOMB_X63_Y21_N10
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

-- Location: LCCOMB_X63_Y21_N24
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

-- Location: LCCOMB_X63_Y20_N8
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

-- Location: LCCOMB_X63_Y20_N16
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

-- Location: LCCOMB_X63_Y20_N18
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (ticks(22) & (\Add3~43\ $ (GND))) # (!ticks(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((ticks(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X63_Y20_N20
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

-- Location: LCCOMB_X63_Y20_N22
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

-- Location: LCCOMB_X63_Y20_N24
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

-- Location: LCCOMB_X29_Y5_N20
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X30_Y5_N26
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => s(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X29_Y5_N6
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => s(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X29_Y5_N18
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X29_Y5_N26
\Mod0|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X29_Y5_N4
\Mod0|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X28_Y5_N10
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (s(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X60_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X60_Y16_N18
\Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X60_Y16_N24
\Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X60_Y16_N20
\Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X60_Y16_N14
\Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X61_Y16_N12
\Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X61_Y16_N10
\Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X64_Y12_N10
\Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X62_Y10_N20
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (m(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X62_Y9_N10
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

-- Location: LCCOMB_X62_Y9_N12
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

-- Location: LCCOMB_X62_Y10_N16
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (m(2) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X62_Y9_N30
\Mod1|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X63_Y9_N20
\Mod1|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ = (m(1) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X62_Y10_N8
\Div1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (m(5) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X62_Y10_N2
\Div1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (m(4) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X64_Y10_N16
\Div1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X62_Y10_N14
\Div1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (m(2) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X63_Y10_N10
\Div1|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X63_Y10_N12
\Div1|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X62_Y10_N10
\Div1|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & m(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => m(2),
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X62_Y10_N0
\Div1|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => m(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X34_Y17_N8
\Mod2|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\ = (h(5) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(5),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X34_Y17_N30
\Mod2|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X34_Y17_N2
\Mod2|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X36_Y17_N6
\Mod2|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & h(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => h(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X33_Y17_N24
\Mod2|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X33_Y17_N20
\Mod2|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & h(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => h(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X59_Y17_N12
\Div2|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X60_Y17_N4
\Div2|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X59_Y17_N24
\Div2|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\ = (h(3) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X60_Y17_N16
\Div2|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\ = (h(2) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(2),
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X58_Y17_N12
\Div2|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X58_Y17_N10
\Div2|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X58_Y17_N14
\Div2|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X58_Y17_N6
\Div2|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\ = (h(1) & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(1),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCFF_X62_Y20_N13
\ticks[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~17_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(25));

-- Location: LCFF_X62_Y20_N31
\ticks[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~18_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(23));

-- Location: LCFF_X62_Y20_N9
\ticks[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~19_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(22));

-- Location: LCFF_X63_Y20_N23
\ticks[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~48_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(24));

-- Location: LCCOMB_X62_Y20_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ticks(25) & (ticks(23) & (ticks(22) & !ticks(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(25),
	datab => ticks(23),
	datac => ticks(22),
	datad => ticks(24),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X62_Y20_N21
\ticks[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~11_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(17));

-- Location: LCFF_X63_Y21_N25
\ticks[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~18_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(9));

-- Location: LCFF_X63_Y21_N11
\ticks[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(2));

-- Location: LCFF_X63_Y21_N7
\ticks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(0));

-- Location: LCCOMB_X62_Y20_N20
\ticks~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~11_combout\ = (\Add3~34_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~34_combout\,
	combout => \ticks~11_combout\);

-- Location: LCCOMB_X62_Y20_N12
\ticks~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~17_combout\ = (\Add3~50_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~50_combout\,
	combout => \ticks~17_combout\);

-- Location: LCCOMB_X62_Y20_N30
\ticks~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~18_combout\ = (\Add3~46_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~46_combout\,
	combout => \ticks~18_combout\);

-- Location: LCCOMB_X62_Y20_N8
\ticks~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~19_combout\ = (\Add3~44_combout\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add3~44_combout\,
	combout => \ticks~19_combout\);

-- Location: LCCOMB_X30_Y5_N30
\Mod0|auto_generated|divider|divider|StageOut[28]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => s(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~41_combout\);

-- Location: LCCOMB_X62_Y9_N8
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

-- Location: LCCOMB_X34_Y17_N24
\Mod2|auto_generated|divider|divider|StageOut[28]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~41_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((h(5)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => h(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~41_combout\);

-- Location: LCCOMB_X34_Y17_N26
\Mod2|auto_generated|divider|divider|StageOut[27]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~42_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((h(4)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => h(4),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~42_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X60_Y20_N16
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = s(0) $ (VCC)
-- \Add2~1\ = CARRY(s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X60_Y20_N18
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

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X63_Y21_N8
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

-- Location: LCFF_X63_Y21_N9
\ticks[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(1));

-- Location: LCCOMB_X63_Y21_N12
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

-- Location: LCCOMB_X63_Y21_N14
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

-- Location: LCFF_X63_Y21_N15
\ticks[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~8_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(4));

-- Location: LCCOMB_X63_Y21_N16
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

-- Location: LCFF_X63_Y21_N17
\ticks[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(5));

-- Location: LCFF_X63_Y21_N13
\ticks[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~6_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(3));

-- Location: LCCOMB_X63_Y21_N0
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (ticks(2) & (ticks(4) & (ticks(5) & ticks(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(2),
	datab => ticks(4),
	datac => ticks(5),
	datad => ticks(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X63_Y21_N18
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

-- Location: LCFF_X63_Y21_N19
\ticks[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~12_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(6));

-- Location: LCCOMB_X63_Y21_N20
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

-- Location: LCCOMB_X63_Y21_N4
\ticks~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~16_combout\ = (\Add3~14_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add3~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \ticks~16_combout\);

-- Location: LCFF_X63_Y21_N5
\ticks[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~16_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(7));

-- Location: LCCOMB_X63_Y21_N22
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

-- Location: LCFF_X63_Y21_N23
\ticks[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~16_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(8));

-- Location: LCCOMB_X63_Y21_N2
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!ticks(9) & (ticks(6) & (!ticks(7) & !ticks(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(9),
	datab => ticks(6),
	datac => ticks(7),
	datad => ticks(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X62_Y21_N16
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (ticks(0) & (ticks(1) & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(0),
	datab => ticks(1),
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X63_Y21_N26
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

-- Location: LCFF_X63_Y21_N27
\ticks[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~20_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(10));

-- Location: LCCOMB_X63_Y21_N28
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

-- Location: LCFF_X63_Y21_N29
\ticks[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~22_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(11));

-- Location: LCCOMB_X63_Y21_N30
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

-- Location: LCCOMB_X62_Y20_N22
\ticks~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~15_combout\ = (\Add3~24_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~24_combout\,
	combout => \ticks~15_combout\);

-- Location: LCFF_X62_Y20_N23
\ticks[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~15_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(12));

-- Location: LCCOMB_X63_Y20_N0
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

-- Location: LCCOMB_X62_Y20_N16
\ticks~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~14_combout\ = (\Add3~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~26_combout\,
	combout => \ticks~14_combout\);

-- Location: LCFF_X62_Y20_N17
\ticks[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~14_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(13));

-- Location: LCCOMB_X63_Y20_N2
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

-- Location: LCCOMB_X62_Y20_N28
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

-- Location: LCFF_X62_Y20_N29
\ticks[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~13_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(14));

-- Location: LCCOMB_X63_Y20_N4
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

-- Location: LCCOMB_X62_Y20_N18
\ticks~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~12_combout\ = (\Add3~30_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~30_combout\,
	combout => \ticks~12_combout\);

-- Location: LCFF_X62_Y20_N19
\ticks[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~12_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(15));

-- Location: LCCOMB_X63_Y20_N6
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (ticks(16) & (\Add3~31\ $ (GND))) # (!ticks(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((ticks(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCFF_X63_Y20_N7
\ticks[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~32_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(16));

-- Location: LCCOMB_X62_Y20_N2
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (ticks(17) & (ticks(14) & (!ticks(16) & ticks(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(17),
	datab => ticks(14),
	datac => ticks(16),
	datad => ticks(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X62_Y20_N24
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!ticks(11) & (ticks(12) & (ticks(13) & !ticks(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(11),
	datab => ticks(12),
	datac => ticks(13),
	datad => ticks(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X63_Y20_N10
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (ticks(18) & (\Add3~35\ $ (GND))) # (!ticks(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((ticks(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ticks(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X63_Y20_N12
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

-- Location: LCCOMB_X62_Y20_N0
\ticks~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~10_combout\ = (\Add3~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~38_combout\,
	combout => \ticks~10_combout\);

-- Location: LCFF_X62_Y20_N1
\ticks[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(19));

-- Location: LCCOMB_X63_Y20_N14
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

-- Location: LCCOMB_X62_Y20_N26
\ticks~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~21_combout\ = (\Add3~40_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~40_combout\,
	combout => \ticks~21_combout\);

-- Location: LCFF_X62_Y20_N27
\ticks[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~21_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(20));

-- Location: LCCOMB_X62_Y20_N4
\ticks~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ticks~20_combout\ = (\Add3~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add3~42_combout\,
	combout => \ticks~20_combout\);

-- Location: LCFF_X62_Y20_N5
\ticks[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \ticks~20_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(21));

-- Location: LCFF_X63_Y20_N11
\ticks[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add3~36_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ticks(18));

-- Location: LCCOMB_X62_Y20_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (ticks(20) & (ticks(21) & (!ticks(18) & ticks(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ticks(20),
	datab => ticks(21),
	datac => ticks(18),
	datad => ticks(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X62_Y20_N14
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X61_Y20_N14
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCFF_X60_Y20_N19
\s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add2~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(1));

-- Location: LCFF_X60_Y20_N17
\s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add2~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(0));

-- Location: LCCOMB_X60_Y20_N20
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

-- Location: LCCOMB_X60_Y20_N24
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s(4) & (\Add2~7\ $ (GND))) # (!s(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X61_Y20_N26
\s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~1_combout\ = (\Add2~8_combout\ & (((!s(1)) # (!s(0))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datac => s(1),
	datad => \Add2~8_combout\,
	combout => \s~1_combout\);

-- Location: LCFF_X61_Y20_N27
\s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \s~1_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(4));

-- Location: LCCOMB_X61_Y20_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (s(5) & (s(4) & (!s(2) & s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(5),
	datab => s(4),
	datac => s(2),
	datad => s(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X60_Y20_N0
\s~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~3_combout\ = (\Add2~4_combout\ & (((!\Equal1~0_combout\) # (!s(1))) # (!s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(0),
	datab => s(1),
	datac => \Add2~4_combout\,
	datad => \Equal1~0_combout\,
	combout => \s~3_combout\);

-- Location: LCFF_X61_Y20_N15
\s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \s~3_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(2));

-- Location: LCCOMB_X60_Y20_N22
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s(3) & (!\Add2~5\)) # (!s(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X61_Y20_N12
\s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~2_combout\ = (\Add2~6_combout\ & (((!s(1)) # (!s(0))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datac => s(1),
	datad => \Add2~6_combout\,
	combout => \s~2_combout\);

-- Location: LCFF_X61_Y20_N13
\s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \s~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(3));

-- Location: LCCOMB_X60_Y20_N26
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

-- Location: LCCOMB_X61_Y20_N24
\s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = (\Add2~10_combout\ & (((!s(1)) # (!s(0))) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => s(0),
	datac => s(1),
	datad => \Add2~10_combout\,
	combout => \s~0_combout\);

-- Location: LCFF_X61_Y20_N25
\s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \s~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s(5));

-- Location: LCCOMB_X30_Y5_N12
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => s(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X30_Y5_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = s(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X30_Y5_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (s(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!s(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!s(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X30_Y5_N6
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

-- Location: LCCOMB_X30_Y5_N24
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X29_Y5_N28
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X29_Y5_N22
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X29_Y5_N8
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

-- Location: LCCOMB_X29_Y5_N10
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

-- Location: LCCOMB_X29_Y5_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X29_Y5_N16
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

-- Location: LCCOMB_X28_Y5_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\ = (s(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X28_Y5_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X29_Y5_N24
\Mod0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => s(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X28_Y5_N4
\Mod0|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X28_Y5_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X28_Y5_N18
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

-- Location: LCCOMB_X28_Y5_N12
\DecodificadorSegundosU|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux6~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & ((!s(0)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => s(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \DecodificadorSegundosU|Mux6~3_combout\);

-- Location: LCCOMB_X28_Y5_N30
\Mod0|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X27_Y5_N28
\DecodificadorSegundosU|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux6~2_combout\ = (s(1) & (((!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)) # (!s(0)))) # (!s(1) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(0),
	datad => s(1),
	combout => \DecodificadorSegundosU|Mux6~2_combout\);

-- Location: LCCOMB_X29_Y5_N0
\Mod0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X30_Y5_N20
\Mod0|auto_generated|divider|divider|StageOut[27]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (s(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~42_combout\);

-- Location: LCCOMB_X28_Y5_N20
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

-- Location: LCCOMB_X28_Y5_N22
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

-- Location: LCCOMB_X28_Y5_N24
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

-- Location: LCCOMB_X29_Y5_N30
\DecodificadorSegundosU|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux6~5_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \DecodificadorSegundosU|Mux6~5_combout\);

-- Location: LCCOMB_X28_Y5_N26
\DecodificadorSegundosU|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux6~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundosU|Mux6~2_combout\) # (\DecodificadorSegundosU|Mux6~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundosU|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundosU|Mux6~3_combout\,
	datab => \DecodificadorSegundosU|Mux6~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \DecodificadorSegundosU|Mux6~5_combout\,
	combout => \DecodificadorSegundosU|Mux6~4_combout\);

-- Location: LCCOMB_X27_Y5_N20
\DecodificadorSegundosU|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux5~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & s(0))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\) # (s(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => s(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \DecodificadorSegundosU|Mux5~3_combout\);

-- Location: LCCOMB_X27_Y5_N2
\DecodificadorSegundosU|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux5~2_combout\ = (s(0) & ((s(1)) # ((!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!s(0) & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\ & s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(0),
	datad => s(1),
	combout => \DecodificadorSegundosU|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y5_N8
\DecodificadorSegundosU|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux5~5_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	combout => \DecodificadorSegundosU|Mux5~5_combout\);

-- Location: LCCOMB_X27_Y5_N26
\DecodificadorSegundosU|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux5~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundosU|Mux5~2_combout\ & \DecodificadorSegundosU|Mux5~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundosU|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundosU|Mux5~3_combout\,
	datab => \DecodificadorSegundosU|Mux5~2_combout\,
	datac => \DecodificadorSegundosU|Mux5~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorSegundosU|Mux5~4_combout\);

-- Location: LCCOMB_X28_Y5_N28
\DecodificadorSegundosU|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux4~8_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorSegundosU|Mux4~8_combout\);

-- Location: LCCOMB_X28_Y5_N6
\DecodificadorSegundosU|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux4~10_combout\ = (!s(1) & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((s(2)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => s(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => s(2),
	combout => \DecodificadorSegundosU|Mux4~10_combout\);

-- Location: LCCOMB_X28_Y5_N2
\DecodificadorSegundosU|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux4~9_combout\ = (s(0)) # ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorSegundosU|Mux4~10_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\DecodificadorSegundosU|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorSegundosU|Mux4~8_combout\,
	datac => s(0),
	datad => \DecodificadorSegundosU|Mux4~10_combout\,
	combout => \DecodificadorSegundosU|Mux4~9_combout\);

-- Location: LCCOMB_X27_Y5_N24
\DecodificadorSegundosU|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux3~2_combout\ = (s(0) & (s(1) $ (((!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\))))) # (!s(0) & (!s(1) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(0),
	datad => s(1),
	combout => \DecodificadorSegundosU|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y5_N22
\DecodificadorSegundosU|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux3~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ $ (!s(0)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => s(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \DecodificadorSegundosU|Mux3~3_combout\);

-- Location: LCCOMB_X27_Y5_N16
\DecodificadorSegundosU|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux3~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundosU|Mux3~2_combout\ & ((\DecodificadorSegundosU|Mux5~5_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundosU|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundosU|Mux3~2_combout\,
	datab => \DecodificadorSegundosU|Mux3~3_combout\,
	datac => \DecodificadorSegundosU|Mux5~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorSegundosU|Mux3~4_combout\);

-- Location: LCCOMB_X27_Y5_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X27_Y5_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((s(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => s(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X27_Y5_N14
\DecodificadorSegundosU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux2~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!s(0) & \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => s(0),
	datad => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \DecodificadorSegundosU|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y5_N10
\DecodificadorSegundosU|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux1~1_combout\ = s(0) $ (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(0),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DecodificadorSegundosU|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y5_N0
\DecodificadorSegundosU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & ((s(0) $ (!s(1))))) # (!\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\ & ((s(0) $ (!s(1))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(0),
	datad => s(1),
	combout => \DecodificadorSegundosU|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y5_N12
\DecodificadorSegundosU|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux1~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundosU|Mux1~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\DecodificadorSegundosU|Mux1~1_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundosU|Mux1~1_combout\,
	datab => \DecodificadorSegundosU|Mux1~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorSegundosU|Mux1~2_combout\);

-- Location: LCCOMB_X27_Y5_N6
\DecodificadorSegundosU|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux0~2_combout\ = (!s(1) & (s(0) $ (((\Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => s(0),
	datad => s(1),
	combout => \DecodificadorSegundosU|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y5_N8
\DecodificadorSegundosU|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux0~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => s(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \DecodificadorSegundosU|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y5_N18
\DecodificadorSegundosU|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosU|Mux0~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorSegundosU|Mux0~2_combout\ & (\DecodificadorSegundosU|Mux5~5_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorSegundosU|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorSegundosU|Mux0~2_combout\,
	datab => \DecodificadorSegundosU|Mux5~5_combout\,
	datac => \DecodificadorSegundosU|Mux0~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorSegundosU|Mux0~4_combout\);

-- Location: LCCOMB_X60_Y20_N12
\Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X60_Y20_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = s(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X60_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X60_Y16_N0
\Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X60_Y16_N22
\Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X60_Y16_N2
\Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => s(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X60_Y16_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X60_Y16_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X60_Y16_N26
\Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => s(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X60_Y16_N28
\Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((s(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => s(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X60_Y16_N16
\Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X64_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => s(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X61_Y16_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X61_Y16_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X61_Y16_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X61_Y16_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X61_Y16_N30
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y12_N16
\DecodificadorSegundosD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux6~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y12_N22
\DecodificadorSegundosD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux5~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y12_N24
\DecodificadorSegundosD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux4~0_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y12_N30
\DecodificadorSegundosD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux3~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y12_N4
\DecodificadorSegundosD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux2~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y12_N26
\DecodificadorSegundosD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux1~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y12_N12
\DecodificadorSegundosD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorSegundosD|Mux0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorSegundosD|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y21_N16
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = m(0) $ (VCC)
-- \Add1~1\ = CARRY(m(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X61_Y21_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (m(1) & (!\Add1~1\)) # (!m(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!m(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X61_Y20_N22
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (s(0) & (\Equal1~0_combout\ & s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s(0),
	datac => \Equal1~0_combout\,
	datad => s(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X61_Y21_N14
\m[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m[5]~1_combout\ = (\Equal0~7_combout\ & (\Equal1~1_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \m[5]~1_combout\);

-- Location: LCFF_X61_Y21_N19
\m[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(1));

-- Location: LCFF_X61_Y21_N17
\m[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add1~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(0));

-- Location: LCCOMB_X61_Y21_N20
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

-- Location: LCCOMB_X61_Y21_N2
\m~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~4_combout\ = (\Add1~4_combout\ & (((!m(1)) # (!\Equal2~0_combout\)) # (!m(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(0),
	datab => \Equal2~0_combout\,
	datac => \Add1~4_combout\,
	datad => m(1),
	combout => \m~4_combout\);

-- Location: LCFF_X61_Y21_N3
\m[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \m~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(2));

-- Location: LCCOMB_X61_Y21_N22
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

-- Location: LCCOMB_X61_Y21_N8
\m~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\Add1~6_combout\ & (((!m(0)) # (!m(1))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Add1~6_combout\,
	combout => \m~3_combout\);

-- Location: LCFF_X61_Y21_N9
\m[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \m~3_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(3));

-- Location: LCCOMB_X61_Y21_N30
\m~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\Add1~8_combout\ & (((!m(1)) # (!\Equal2~0_combout\)) # (!m(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(0),
	datab => \Equal2~0_combout\,
	datac => \Add1~8_combout\,
	datad => m(1),
	combout => \m~2_combout\);

-- Location: LCFF_X61_Y21_N31
\m[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \m~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(4));

-- Location: LCCOMB_X61_Y21_N0
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

-- Location: LCCOMB_X61_Y21_N12
\m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (\Add1~10_combout\ & (((!\Equal2~0_combout\) # (!m(0))) # (!m(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => m(1),
	datac => m(0),
	datad => \Equal2~0_combout\,
	combout => \m~0_combout\);

-- Location: LCFF_X61_Y21_N13
\m[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \m~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \m[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => m(5));

-- Location: LCCOMB_X62_Y10_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = m(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(m(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X62_Y10_N26
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

-- Location: LCCOMB_X62_Y10_N28
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

-- Location: LCCOMB_X62_Y10_N30
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

-- Location: LCCOMB_X62_Y9_N0
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

-- Location: LCCOMB_X62_Y10_N22
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X62_Y9_N2
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X62_Y10_N18
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (m(2) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X62_Y9_N20
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X62_Y9_N22
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

-- Location: LCCOMB_X62_Y9_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X62_Y9_N28
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

-- Location: LCCOMB_X62_Y9_N16
\Mod1|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X62_Y9_N18
\Mod1|auto_generated|divider|divider|StageOut[27]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((m(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => m(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\);

-- Location: LCCOMB_X62_Y9_N4
\Mod1|auto_generated|divider|divider|StageOut[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X63_Y9_N14
\Mod1|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X63_Y9_N30
\Mod1|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ = (m(1) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X63_Y9_N2
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X63_Y9_N4
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

-- Location: LCCOMB_X63_Y9_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X63_Y9_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~42_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y9_N10
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X63_Y9_N12
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

-- Location: LCCOMB_X63_Y9_N22
\DecodificadorMinutosU|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux6~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((!m(0)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => m(0),
	combout => \DecodificadorMinutosU|Mux6~3_combout\);

-- Location: LCCOMB_X62_Y9_N14
\Mod1|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((m(3)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => m(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X62_Y9_N6
\DecodificadorMinutosU|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux6~5_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\) # ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \DecodificadorMinutosU|Mux6~5_combout\);

-- Location: LCCOMB_X63_Y9_N28
\DecodificadorMinutosU|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux6~2_combout\ = (m(1) & (((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)) # (!m(0)))) # (!m(1) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => m(1),
	combout => \DecodificadorMinutosU|Mux6~2_combout\);

-- Location: LCCOMB_X63_Y9_N24
\DecodificadorMinutosU|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux6~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutosU|Mux6~5_combout\) # (\DecodificadorMinutosU|Mux6~2_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutosU|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorMinutosU|Mux6~3_combout\,
	datac => \DecodificadorMinutosU|Mux6~5_combout\,
	datad => \DecodificadorMinutosU|Mux6~2_combout\,
	combout => \DecodificadorMinutosU|Mux6~4_combout\);

-- Location: LCCOMB_X64_Y9_N26
\DecodificadorMinutosU|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux5~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((m(0)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & m(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => m(0),
	combout => \DecodificadorMinutosU|Mux5~3_combout\);

-- Location: LCCOMB_X63_Y9_N0
\DecodificadorMinutosU|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux5~5_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \DecodificadorMinutosU|Mux5~5_combout\);

-- Location: LCCOMB_X63_Y9_N16
\Mod1|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ = (m(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X64_Y9_N12
\DecodificadorMinutosU|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux5~2_combout\ = (m(0) & ((m(1)) # ((!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!m(0) & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & (m(1) & !\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	combout => \DecodificadorMinutosU|Mux5~2_combout\);

-- Location: LCCOMB_X64_Y9_N16
\DecodificadorMinutosU|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux5~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutosU|Mux5~5_combout\ & \DecodificadorMinutosU|Mux5~2_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutosU|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorMinutosU|Mux5~3_combout\,
	datac => \DecodificadorMinutosU|Mux5~5_combout\,
	datad => \DecodificadorMinutosU|Mux5~2_combout\,
	combout => \DecodificadorMinutosU|Mux5~4_combout\);

-- Location: LCCOMB_X64_Y9_N14
\DecodificadorMinutosU|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux4~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DecodificadorMinutosU|Mux4~8_combout\);

-- Location: LCCOMB_X63_Y9_N18
\DecodificadorMinutosU|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux4~10_combout\ = (!m(1) & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((m(2)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => m(1),
	datac => m(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorMinutosU|Mux4~10_combout\);

-- Location: LCCOMB_X64_Y9_N0
\DecodificadorMinutosU|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux4~9_combout\ = (m(0)) # ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorMinutosU|Mux4~10_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\DecodificadorMinutosU|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => m(0),
	datac => \DecodificadorMinutosU|Mux4~8_combout\,
	datad => \DecodificadorMinutosU|Mux4~10_combout\,
	combout => \DecodificadorMinutosU|Mux4~9_combout\);

-- Location: LCCOMB_X63_Y9_N26
\DecodificadorMinutosU|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux3~2_combout\ = (m(0) & (m(1) $ (((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\))))) # (!m(0) & (!m(1) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => m(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => m(1),
	combout => \DecodificadorMinutosU|Mux3~2_combout\);

-- Location: LCCOMB_X64_Y9_N10
\DecodificadorMinutosU|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux3~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & m(0))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (m(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => m(0),
	combout => \DecodificadorMinutosU|Mux3~3_combout\);

-- Location: LCCOMB_X64_Y9_N4
\DecodificadorMinutosU|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux3~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutosU|Mux3~2_combout\ & (\DecodificadorMinutosU|Mux5~5_combout\))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutosU|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorMinutosU|Mux3~2_combout\,
	datac => \DecodificadorMinutosU|Mux5~5_combout\,
	datad => \DecodificadorMinutosU|Mux3~3_combout\,
	combout => \DecodificadorMinutosU|Mux3~4_combout\);

-- Location: LCCOMB_X64_Y9_N24
\Mod1|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X64_Y9_N2
\Mod1|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (m(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X64_Y9_N18
\DecodificadorMinutosU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux2~0_combout\ = (!m(0) & (!\Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\ & \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \DecodificadorMinutosU|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y9_N20
\DecodificadorMinutosU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux1~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & (m(0) $ ((!m(1))))) # (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & ((m(0) $ (!m(1))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	combout => \DecodificadorMinutosU|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y9_N22
\DecodificadorMinutosU|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux1~1_combout\ = m(0) $ (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(0),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \DecodificadorMinutosU|Mux1~1_combout\);

-- Location: LCCOMB_X64_Y9_N8
\DecodificadorMinutosU|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux1~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutosU|Mux1~0_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\DecodificadorMinutosU|Mux1~1_combout\)) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \DecodificadorMinutosU|Mux1~0_combout\,
	datad => \DecodificadorMinutosU|Mux1~1_combout\,
	combout => \DecodificadorMinutosU|Mux1~2_combout\);

-- Location: LCCOMB_X64_Y9_N28
\DecodificadorMinutosU|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux0~3_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (m(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => m(0),
	combout => \DecodificadorMinutosU|Mux0~3_combout\);

-- Location: LCCOMB_X64_Y9_N6
\DecodificadorMinutosU|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux0~2_combout\ = (!m(1) & (m(0) $ (((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => m(0),
	datac => m(1),
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	combout => \DecodificadorMinutosU|Mux0~2_combout\);

-- Location: LCCOMB_X64_Y9_N30
\DecodificadorMinutosU|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosU|Mux0~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorMinutosU|Mux5~5_combout\ & \DecodificadorMinutosU|Mux0~2_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorMinutosU|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \DecodificadorMinutosU|Mux0~3_combout\,
	datac => \DecodificadorMinutosU|Mux5~5_combout\,
	datad => \DecodificadorMinutosU|Mux0~2_combout\,
	combout => \DecodificadorMinutosU|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y10_N22
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (m(4) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!m(4) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!m(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m(4),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X64_Y10_N24
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (m(5) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!m(5) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((m(5) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m(5),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X64_Y10_N26
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X64_Y10_N0
\Div1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X64_Y10_N30
\Div1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X62_Y10_N12
\Div1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (m(3) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X62_Y10_N4
\Div1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (m(2) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X63_Y10_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X63_Y10_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y10_N26
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y10_N8
\Div1|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((m(4)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => m(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X64_Y10_N14
\Div1|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((m(3)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => m(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X63_Y10_N30
\Div1|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X62_Y10_N6
\Div1|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => m(1),
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X63_Y10_N0
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X63_Y10_N2
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X63_Y10_N4
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X63_Y10_N6
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X63_Y10_N8
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X64_Y10_N18
\DecodificadorMinutosD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux6~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y10_N28
\DecodificadorMinutosD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux5~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y10_N6
\DecodificadorMinutosD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux4~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y10_N12
\DecodificadorMinutosD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux3~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y10_N2
\DecodificadorMinutosD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux2~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y10_N4
\DecodificadorMinutosD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux1~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y10_N10
\DecodificadorMinutosD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorMinutosD|Mux0~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DecodificadorMinutosD|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y20_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h(0) $ (VCC)
-- \Add0~1\ = CARRY(h(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X61_Y21_N28
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (m(1) & (m(0) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m(1),
	datac => m(0),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X61_Y20_N28
\h[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h[5]~0_combout\ = (\Equal1~1_combout\ & (\Equal0~4_combout\ & (\Equal2~1_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal0~7_combout\,
	combout => \h[5]~0_combout\);

-- Location: LCFF_X61_Y20_N1
\h[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add0~0_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(0));

-- Location: LCCOMB_X61_Y20_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h(1) & (!\Add0~1\)) # (!h(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X61_Y20_N3
\h[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(1));

-- Location: LCCOMB_X61_Y20_N4
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

-- Location: LCFF_X61_Y20_N5
\h[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add0~4_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(2));

-- Location: LCCOMB_X61_Y20_N30
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (h(4) & (!h(3) & (h(2) & !h(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(4),
	datab => h(3),
	datac => h(2),
	datad => h(5),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X61_Y20_N18
\h~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \h~2_combout\ = (\Add0~6_combout\ & (((!\Equal3~0_combout\) # (!h(1))) # (!h(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => h(0),
	datac => h(1),
	datad => \Equal3~0_combout\,
	combout => \h~2_combout\);

-- Location: LCFF_X61_Y20_N19
\h[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \h~2_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(3));

-- Location: LCCOMB_X61_Y20_N10
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

-- Location: LCFF_X61_Y20_N11
\h[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Add0~10_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(5));

-- Location: LCCOMB_X61_Y20_N16
\h~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \h~1_combout\ = (\Add0~8_combout\ & (((!\Equal3~0_combout\) # (!h(1))) # (!h(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => h(0),
	datac => h(1),
	datad => \Equal3~0_combout\,
	combout => \h~1_combout\);

-- Location: LCFF_X61_Y20_N17
\h[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \h~1_combout\,
	aclr => \ALT_INV_nRst~clkctrl_outclk\,
	ena => \h[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h(4));

-- Location: LCCOMB_X34_Y17_N14
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

-- Location: LCCOMB_X34_Y17_N18
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

-- Location: LCCOMB_X34_Y17_N20
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

-- Location: LCCOMB_X34_Y17_N4
\Mod2|auto_generated|divider|divider|StageOut[19]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\ = (h(3) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X36_Y17_N0
\Mod2|auto_generated|divider|divider|StageOut[18]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & h(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => h(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X35_Y17_N2
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X35_Y17_N4
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

-- Location: LCCOMB_X34_Y17_N22
\Mod2|auto_generated|divider|divider|StageOut[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X34_Y17_N28
\Mod2|auto_generated|divider|divider|StageOut[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & h(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => h(4),
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X35_Y17_N6
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

-- Location: LCCOMB_X35_Y17_N8
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

-- Location: LCCOMB_X35_Y17_N10
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

-- Location: LCCOMB_X34_Y17_N12
\Mod2|auto_generated|divider|divider|StageOut[26]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((h(3)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => h(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X33_Y17_N4
\DecodificadorHorasU|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux6~5_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\) # ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorHorasU|Mux6~5_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Mod2|auto_generated|divider|divider|StageOut[24]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & h(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => h(1),
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X33_Y17_N8
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X33_Y17_N30
\Mod2|auto_generated|divider|divider|StageOut[25]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X33_Y17_N10
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X33_Y17_N28
\DecodificadorHorasU|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux6~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\) # ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & ((!h(0)) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux6~3_combout\);

-- Location: LCCOMB_X36_Y17_N20
\Mod2|auto_generated|divider|divider|StageOut[25]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & h(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => h(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X32_Y17_N16
\DecodificadorHorasU|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux6~2_combout\ = (h(1) & (((!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)) # (!h(0)))) # (!h(1) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux6~2_combout\);

-- Location: LCCOMB_X34_Y17_N0
\Mod2|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X34_Y17_N10
\Mod2|auto_generated|divider|divider|StageOut[27]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X33_Y17_N14
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[27]~42_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[27]~42_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y17_N16
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[28]~41_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~41_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X33_Y17_N18
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

-- Location: LCCOMB_X32_Y17_N30
\DecodificadorHorasU|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux6~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorHorasU|Mux6~5_combout\) # ((\DecodificadorHorasU|Mux6~2_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHorasU|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux6~5_combout\,
	datab => \DecodificadorHorasU|Mux6~3_combout\,
	datac => \DecodificadorHorasU|Mux6~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorHorasU|Mux6~4_combout\);

-- Location: LCCOMB_X33_Y17_N2
\DecodificadorHorasU|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux5~5_combout\ = (!\Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DecodificadorHorasU|Mux5~5_combout\);

-- Location: LCCOMB_X32_Y17_N28
\DecodificadorHorasU|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux5~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & h(0))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\) # (h(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux5~3_combout\);

-- Location: LCCOMB_X33_Y17_N26
\DecodificadorHorasU|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux5~2_combout\ = (h(1) & ((h(0)) # ((!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!h(1) & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & h(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => h(1),
	datad => h(0),
	combout => \DecodificadorHorasU|Mux5~2_combout\);

-- Location: LCCOMB_X32_Y17_N26
\DecodificadorHorasU|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux5~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHorasU|Mux5~5_combout\ & ((\DecodificadorHorasU|Mux5~2_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHorasU|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux5~5_combout\,
	datab => \DecodificadorHorasU|Mux5~3_combout\,
	datac => \DecodificadorHorasU|Mux5~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorHorasU|Mux5~4_combout\);

-- Location: LCCOMB_X33_Y17_N0
\DecodificadorHorasU|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux4~8_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \DecodificadorHorasU|Mux4~8_combout\);

-- Location: LCCOMB_X36_Y17_N26
\DecodificadorHorasU|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux4~10_combout\ = (!h(1) & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((h(2)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => h(1),
	datad => h(2),
	combout => \DecodificadorHorasU|Mux4~10_combout\);

-- Location: LCCOMB_X33_Y17_N6
\DecodificadorHorasU|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux4~9_combout\ = (h(0)) # ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\DecodificadorHorasU|Mux4~10_combout\))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\DecodificadorHorasU|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux4~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \DecodificadorHorasU|Mux4~10_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux4~9_combout\);

-- Location: LCCOMB_X32_Y17_N0
\DecodificadorHorasU|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux3~2_combout\ = (h(1) & (h(0) & ((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))) # (!h(1) & (h(0) $ 
-- (((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y17_N14
\DecodificadorHorasU|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux3~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ $ (!h(0)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & h(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux3~3_combout\);

-- Location: LCCOMB_X32_Y17_N4
\DecodificadorHorasU|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux3~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHorasU|Mux5~5_combout\ & (\DecodificadorHorasU|Mux3~2_combout\))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHorasU|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux5~5_combout\,
	datab => \DecodificadorHorasU|Mux3~2_combout\,
	datac => \DecodificadorHorasU|Mux3~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorHorasU|Mux3~4_combout\);

-- Location: LCCOMB_X32_Y17_N18
\Mod2|auto_generated|divider|divider|StageOut[31]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (h(1))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X32_Y17_N24
\Mod2|auto_generated|divider|divider|StageOut[32]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X32_Y17_N6
\DecodificadorHorasU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux2~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\ & !h(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y17_N12
\DecodificadorHorasU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux1~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & (h(1) $ (((!h(0)))))) # (!\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\ & ((h(1) $ (!h(0))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\DecodificadorHorasU|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux1~1_combout\ = \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ $ (!h(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y17_N8
\DecodificadorHorasU|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux1~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHorasU|Mux1~0_combout\)) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\DecodificadorHorasU|Mux1~1_combout\) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux1~0_combout\,
	datab => \DecodificadorHorasU|Mux1~1_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorHorasU|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y17_N22
\DecodificadorHorasU|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux0~2_combout\ = (!h(1) & (h(0) $ (((\Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(1),
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y17_N20
\DecodificadorHorasU|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux0~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ $ (h(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => h(0),
	combout => \DecodificadorHorasU|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y17_N10
\DecodificadorHorasU|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasU|Mux0~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\DecodificadorHorasU|Mux5~5_combout\ & (\DecodificadorHorasU|Mux0~2_combout\))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\DecodificadorHorasU|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DecodificadorHorasU|Mux5~5_combout\,
	datab => \DecodificadorHorasU|Mux0~2_combout\,
	datac => \DecodificadorHorasU|Mux0~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \DecodificadorHorasU|Mux0~4_combout\);

-- Location: LCCOMB_X59_Y17_N14
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = h(3) $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(h(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X59_Y17_N16
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (h(4) & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!h(4) & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!h(4) & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h(4),
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X59_Y17_N20
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X59_Y17_N26
\Div2|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & h(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => h(5),
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X59_Y17_N30
\Div2|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & h(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => h(4),
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X59_Y17_N22
\Div2|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X60_Y17_N14
\Div2|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\ = (h(2) & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(2),
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X59_Y17_N6
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X59_Y17_N8
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X59_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((h(4)))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => h(4),
	combout => \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X59_Y17_N10
\Div2|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (h(3))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h(3),
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X58_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & h(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => h(2),
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X58_Y17_N4
\Div2|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\ = (h(1) & \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h(1),
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X58_Y17_N18
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\Div2|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X58_Y17_N20
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X58_Y17_N22
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X58_Y17_N24
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[23]~30_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X58_Y17_N26
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X1_Y16_N16
\DecodificadorHorasD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasD|Mux0~0_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorHorasD|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y16_N22
\DecodificadorHorasD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasD|Mux3~0_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorHorasD|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\DecodificadorHorasD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DecodificadorHorasD|Mux2~0_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \DecodificadorHorasD|Mux2~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[0]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[1]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[2]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[3]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[4]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[5]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_u[6]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosU|ALT_INV_Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_u(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[0]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[1]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[2]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[3]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[4]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[5]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_seg_d[6]~I\ : cycloneii_io
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
	datain => \DecodificadorSegundosD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_seg_d(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[0]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[1]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[2]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[3]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[4]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[5]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_u[6]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosU|ALT_INV_Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_u(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[0]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[1]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[2]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[3]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[4]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[5]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_min_d[6]~I\ : cycloneii_io
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
	datain => \DecodificadorMinutosD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_min_d(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[0]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[1]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|ALT_INV_Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[2]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|ALT_INV_Mux4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[3]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|ALT_INV_Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[4]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[5]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_u[6]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasU|ALT_INV_Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_u(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[0]~I\ : cycloneii_io
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
	datain => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[1]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasD|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[2]~I\ : cycloneii_io
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
	datain => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[3]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[4]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segmentos_hora_d[6]~I\ : cycloneii_io
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
	datain => \DecodificadorHorasD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segmentos_hora_d(6));
END structure;


