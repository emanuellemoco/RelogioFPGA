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

-- DATE "10/06/2020 16:57:19"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	tempo : OUT std_logic
	);
END relogio;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- tempo	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tempo : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|UC|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Equal6~0_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[3]~5_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~195_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~197_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~35_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~199_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~15_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~196_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~25_q\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~175_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Equal6~1_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~42_cout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~198_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~45_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~187_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~47DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~37_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~27_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~17_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~177_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~16_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~188_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~47_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~189_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[8]~1_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[8]~3_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~49_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~19_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~192_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~48_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~190_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~18_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~38_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~28_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~176_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~39_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~49DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~29_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~191_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~50_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~20_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~194_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~34\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~40_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~30_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~20DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~193_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[8]~2_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~54_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~180_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~23_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~53_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~186_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~52_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~22_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~184_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~51_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~182_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~38\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~21_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~41_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~31_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~181_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~32_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~42_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~183_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~33_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~43_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~185_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~30\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~24_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~44_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~34_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~179_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[8]~0_combout\ : std_logic;
SIGNAL \CPU|UC|palavraControle[8]~4_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~46_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~36_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~26_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~178_combout\ : std_logic;
SIGNAL \DEC|decodificadorControle[15]~0_combout\ : std_logic;
SIGNAL \DEC|decodificadorControle[13]~1_combout\ : std_logic;
SIGNAL \REG0|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX_0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC|decodificadorControle[14]~2_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX_1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC|decodificadorControle[15]~3_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HEX_2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC|decodificadorControle[11]~4_combout\ : std_logic;
SIGNAL \REG2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|FD|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~187_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_palavraControle[8]~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~186_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~185_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~184_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~183_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~182_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~180_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~179_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~178_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~176_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \DEC|ALT_INV_decodificadorControle[15]~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~175_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~20DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~49DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~47DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~15DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_palavraControle[3]~5_combout\ : std_logic;
SIGNAL \CPU|FD|ULA|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~195_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_palavraControle[8]~3_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_palavraControle[8]~2_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~194_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~193_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~192_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~191_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~190_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_palavraControle[8]~1_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~189_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~188_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
tempo <= ww_tempo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|FD|bancoReg|ALT_INV_registrador~187_combout\ <= NOT \CPU|FD|bancoReg|registrador~187_combout\;
\CPU|UC|ALT_INV_palavraControle[8]~0_combout\ <= NOT \CPU|UC|palavraControle[8]~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~186_combout\ <= NOT \CPU|FD|bancoReg|registrador~186_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~185_combout\ <= NOT \CPU|FD|bancoReg|registrador~185_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~53_q\ <= NOT \CPU|FD|bancoReg|registrador~53_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~43_q\ <= NOT \CPU|FD|bancoReg|registrador~43_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~33_q\ <= NOT \CPU|FD|bancoReg|registrador~33_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~23_q\ <= NOT \CPU|FD|bancoReg|registrador~23_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~184_combout\ <= NOT \CPU|FD|bancoReg|registrador~184_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~183_combout\ <= NOT \CPU|FD|bancoReg|registrador~183_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~52_q\ <= NOT \CPU|FD|bancoReg|registrador~52_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~42_q\ <= NOT \CPU|FD|bancoReg|registrador~42_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~32_q\ <= NOT \CPU|FD|bancoReg|registrador~32_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~22_q\ <= NOT \CPU|FD|bancoReg|registrador~22_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~182_combout\ <= NOT \CPU|FD|bancoReg|registrador~182_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~181_combout\ <= NOT \CPU|FD|bancoReg|registrador~181_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~51_q\ <= NOT \CPU|FD|bancoReg|registrador~51_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~41_q\ <= NOT \CPU|FD|bancoReg|registrador~41_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~31_q\ <= NOT \CPU|FD|bancoReg|registrador~31_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~21_q\ <= NOT \CPU|FD|bancoReg|registrador~21_q\;
\CPU|FD|ULA|ALT_INV_Equal7~0_combout\ <= NOT \CPU|FD|ULA|Equal7~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~180_combout\ <= NOT \CPU|FD|bancoReg|registrador~180_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~179_combout\ <= NOT \CPU|FD|bancoReg|registrador~179_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~54_q\ <= NOT \CPU|FD|bancoReg|registrador~54_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~44_q\ <= NOT \CPU|FD|bancoReg|registrador~44_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~34_q\ <= NOT \CPU|FD|bancoReg|registrador~34_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~24_q\ <= NOT \CPU|FD|bancoReg|registrador~24_q\;
\CPU|FD|ROM|ALT_INV_memROM~10_combout\ <= NOT \CPU|FD|ROM|memROM~10_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~178_combout\ <= NOT \CPU|FD|bancoReg|registrador~178_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~46_q\ <= NOT \CPU|FD|bancoReg|registrador~46_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~36_q\ <= NOT \CPU|FD|bancoReg|registrador~36_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~26_q\ <= NOT \CPU|FD|bancoReg|registrador~26_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~16_q\ <= NOT \CPU|FD|bancoReg|registrador~16_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~177_combout\ <= NOT \CPU|FD|bancoReg|registrador~177_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~47_q\ <= NOT \CPU|FD|bancoReg|registrador~47_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~37_q\ <= NOT \CPU|FD|bancoReg|registrador~37_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~27_q\ <= NOT \CPU|FD|bancoReg|registrador~27_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~17_q\ <= NOT \CPU|FD|bancoReg|registrador~17_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~176_combout\ <= NOT \CPU|FD|bancoReg|registrador~176_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~48_q\ <= NOT \CPU|FD|bancoReg|registrador~48_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~38_q\ <= NOT \CPU|FD|bancoReg|registrador~38_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~28_q\ <= NOT \CPU|FD|bancoReg|registrador~28_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~18_q\ <= NOT \CPU|FD|bancoReg|registrador~18_q\;
\DEC|ALT_INV_decodificadorControle[15]~0_combout\ <= NOT \DEC|decodificadorControle[15]~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~175_combout\ <= NOT \CPU|FD|bancoReg|registrador~175_combout\;
\CPU|FD|ROM|ALT_INV_memROM~9_combout\ <= NOT \CPU|FD|ROM|memROM~9_combout\;
\CPU|FD|ROM|ALT_INV_memROM~8_combout\ <= NOT \CPU|FD|ROM|memROM~8_combout\;
\CPU|FD|ROM|ALT_INV_memROM~7_combout\ <= NOT \CPU|FD|ROM|memROM~7_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~45_q\ <= NOT \CPU|FD|bancoReg|registrador~45_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~35_q\ <= NOT \CPU|FD|bancoReg|registrador~35_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~25_q\ <= NOT \CPU|FD|bancoReg|registrador~25_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~15_q\ <= NOT \CPU|FD|bancoReg|registrador~15_q\;
\CPU|FD|ROM|ALT_INV_memROM~6_combout\ <= NOT \CPU|FD|ROM|memROM~6_combout\;
\CPU|FD|ROM|ALT_INV_memROM~5_combout\ <= NOT \CPU|FD|ROM|memROM~5_combout\;
\CPU|FD|ROM|ALT_INV_memROM~4_combout\ <= NOT \CPU|FD|ROM|memROM~4_combout\;
\CPU|FD|ROM|ALT_INV_memROM~3_combout\ <= NOT \CPU|FD|ROM|memROM~3_combout\;
\CPU|FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \CPU|FD|ROM|memROM~2_combout\;
\CPU|FD|ROM|ALT_INV_memROM~1_combout\ <= NOT \CPU|FD|ROM|memROM~1_combout\;
\CPU|FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \CPU|FD|ROM|memROM~0_combout\;
\REG2|ALT_INV_DOUT\(1) <= NOT \REG2|DOUT\(1);
\REG2|ALT_INV_DOUT\(2) <= NOT \REG2|DOUT\(2);
\REG2|ALT_INV_DOUT\(3) <= NOT \REG2|DOUT\(3);
\REG2|ALT_INV_DOUT\(0) <= NOT \REG2|DOUT\(0);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\REG0|ALT_INV_DOUT\(1) <= NOT \REG0|DOUT\(1);
\REG0|ALT_INV_DOUT\(2) <= NOT \REG0|DOUT\(2);
\REG0|ALT_INV_DOUT\(3) <= NOT \REG0|DOUT\(3);
\REG0|ALT_INV_DOUT\(0) <= NOT \REG0|DOUT\(0);
\CPU|FD|ULA|ALT_INV_Add0~37_sumout\ <= NOT \CPU|FD|ULA|Add0~37_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~33_sumout\ <= NOT \CPU|FD|ULA|Add0~33_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|FD|ULA|Add0~29_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|FD|ULA|Add0~25_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|FD|ULA|Add0~21_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|FD|ULA|Add0~17_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|FD|ULA|Add0~13_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|FD|ULA|Add0~9_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|FD|ULA|Add0~5_sumout\;
\CPU|FD|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|FD|ULA|Add0~1_sumout\;
\CPU|FD|PC|ALT_INV_DOUT\(3) <= NOT \CPU|FD|PC|DOUT\(3);
\CPU|FD|PC|ALT_INV_DOUT\(2) <= NOT \CPU|FD|PC|DOUT\(2);
\CPU|FD|PC|ALT_INV_DOUT\(1) <= NOT \CPU|FD|PC|DOUT\(1);
\CPU|FD|PC|ALT_INV_DOUT\(0) <= NOT \CPU|FD|PC|DOUT\(0);
\CPU|FD|PC|ALT_INV_DOUT\(6) <= NOT \CPU|FD|PC|DOUT\(6);
\CPU|FD|PC|ALT_INV_DOUT\(5) <= NOT \CPU|FD|PC|DOUT\(5);
\CPU|FD|PC|ALT_INV_DOUT\(4) <= NOT \CPU|FD|PC|DOUT\(4);
\CPU|FD|PC|ALT_INV_DOUT\(7) <= NOT \CPU|FD|PC|DOUT\(7);
\CPU|FD|bancoReg|ALT_INV_registrador~20DUPLICATE_q\ <= NOT \CPU|FD|bancoReg|registrador~20DUPLICATE_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~49DUPLICATE_q\ <= NOT \CPU|FD|bancoReg|registrador~49DUPLICATE_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~47DUPLICATE_q\ <= NOT \CPU|FD|bancoReg|registrador~47DUPLICATE_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~15DUPLICATE_q\ <= NOT \CPU|FD|bancoReg|registrador~15DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[3]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[2]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[1]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[0]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[6]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[4]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[7]~DUPLICATE_q\;
\CPU|FD|ULA|ALT_INV_Equal6~1_combout\ <= NOT \CPU|FD|ULA|Equal6~1_combout\;
\CPU|UC|ALT_INV_Equal0~0_combout\ <= NOT \CPU|UC|Equal0~0_combout\;
\CPU|UC|ALT_INV_palavraControle[3]~5_combout\ <= NOT \CPU|UC|palavraControle[3]~5_combout\;
\CPU|FD|ULA|ALT_INV_Equal6~0_combout\ <= NOT \CPU|FD|ULA|Equal6~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~195_combout\ <= NOT \CPU|FD|bancoReg|registrador~195_combout\;
\CPU|FD|ROM|ALT_INV_memROM~13_combout\ <= NOT \CPU|FD|ROM|memROM~13_combout\;
\CPU|FD|ROM|ALT_INV_memROM~12_combout\ <= NOT \CPU|FD|ROM|memROM~12_combout\;
\CPU|FD|ROM|ALT_INV_memROM~11_combout\ <= NOT \CPU|FD|ROM|memROM~11_combout\;
\CPU|UC|ALT_INV_palavraControle[8]~3_combout\ <= NOT \CPU|UC|palavraControle[8]~3_combout\;
\CPU|UC|ALT_INV_palavraControle[8]~2_combout\ <= NOT \CPU|UC|palavraControle[8]~2_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~194_combout\ <= NOT \CPU|FD|bancoReg|registrador~194_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~193_combout\ <= NOT \CPU|FD|bancoReg|registrador~193_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~50_q\ <= NOT \CPU|FD|bancoReg|registrador~50_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~40_q\ <= NOT \CPU|FD|bancoReg|registrador~40_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~30_q\ <= NOT \CPU|FD|bancoReg|registrador~30_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~20_q\ <= NOT \CPU|FD|bancoReg|registrador~20_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~192_combout\ <= NOT \CPU|FD|bancoReg|registrador~192_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~191_combout\ <= NOT \CPU|FD|bancoReg|registrador~191_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~49_q\ <= NOT \CPU|FD|bancoReg|registrador~49_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~39_q\ <= NOT \CPU|FD|bancoReg|registrador~39_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~29_q\ <= NOT \CPU|FD|bancoReg|registrador~29_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~19_q\ <= NOT \CPU|FD|bancoReg|registrador~19_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~190_combout\ <= NOT \CPU|FD|bancoReg|registrador~190_combout\;
\CPU|UC|ALT_INV_palavraControle[8]~1_combout\ <= NOT \CPU|UC|palavraControle[8]~1_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~189_combout\ <= NOT \CPU|FD|bancoReg|registrador~189_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~188_combout\ <= NOT \CPU|FD|bancoReg|registrador~188_combout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X54_Y14_N45
\tempo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC|decodificadorControle[11]~4_combout\,
	devoe => ww_devoe,
	o => ww_tempo);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X43_Y3_N30
\CPU|FD|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~17_sumout\ = SUM(( \CPU|FD|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|FD|somaUm|Add0~18\ = CARRY(( \CPU|FD|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|FD|somaUm|Add0~17_sumout\,
	cout => \CPU|FD|somaUm|Add0~18\);

-- Location: LABCELL_X44_Y3_N30
\CPU|FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~1_combout\ = ( \CPU|FD|PC|DOUT\(1) & ( \CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(0) & !\CPU|FD|PC|DOUT\(3)) ) ) ) # ( !\CPU|FD|PC|DOUT\(1) & ( \CPU|FD|PC|DOUT\(2) & ( (\CPU|FD|PC|DOUT\(0) & !\CPU|FD|PC|DOUT\(3)) ) ) ) # ( 
-- \CPU|FD|PC|DOUT\(1) & ( !\CPU|FD|PC|DOUT\(2) & ( (\CPU|FD|PC|DOUT\(0) & !\CPU|FD|PC|DOUT\(3)) ) ) ) # ( !\CPU|FD|PC|DOUT\(1) & ( !\CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(0) & !\CPU|FD|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(0),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(2),
	combout => \CPU|FD|ROM|memROM~1_combout\);

-- Location: LABCELL_X44_Y3_N6
\CPU|FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~2_combout\ = ( \CPU|FD|ROM|memROM~1_combout\ & ( \CPU|FD|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|FD|ROM|memROM~2_combout\);

-- Location: FF_X43_Y3_N35
\CPU|FD|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~21_sumout\,
	asdata => \CPU|FD|ROM|memROM~2_combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N54
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X43_Y3_N38
\CPU|FD|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N36
\CPU|FD|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~5_combout\ = ( \CPU|FD|PC|DOUT\(0) & ( \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\CPU|FD|PC|DOUT\(0) & ( \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|FD|PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datad => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|FD|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~5_combout\);

-- Location: FF_X43_Y3_N41
\CPU|FD|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N30
\CPU|FD|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~3_combout\ = ( \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|FD|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT\(0))) ) ) # ( !\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|FD|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~3_combout\);

-- Location: MLABCELL_X42_Y4_N0
\CPU|FD|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~4_combout\ = ( \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT\(3)) ) ) ) # ( \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\CPU|FD|PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datae => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~4_combout\);

-- Location: MLABCELL_X42_Y4_N51
\CPU|UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|Equal0~0_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|ROM|memROM~5_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & \CPU|FD|ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|UC|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y4_N33
\CPU|FD|ULA|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Equal6~0_combout\ = ( \CPU|FD|ROM|memROM~3_combout\ & ( (!\CPU|FD|ROM|memROM~4_combout\ & (!\CPU|FD|ROM|memROM~5_combout\ & \CPU|FD|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|FD|ULA|Equal6~0_combout\);

-- Location: MLABCELL_X42_Y4_N9
\CPU|UC|palavraControle[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[3]~5_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( \CPU|FD|ROM|memROM~3_combout\ & ( \CPU|FD|ROM|memROM~5_combout\ ) ) ) # ( !\CPU|FD|ROM|memROM~0_combout\ & ( \CPU|FD|ROM|memROM~3_combout\ ) ) # ( \CPU|FD|ROM|memROM~0_combout\ & 
-- ( !\CPU|FD|ROM|memROM~3_combout\ & ( (!\CPU|FD|ROM|memROM~5_combout\) # (\CPU|FD|ROM|memROM~4_combout\) ) ) ) # ( !\CPU|FD|ROM|memROM~0_combout\ & ( !\CPU|FD|ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101111111111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|UC|palavraControle[3]~5_combout\);

-- Location: LABCELL_X44_Y3_N18
\CPU|FD|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~12_combout\ = ( !\CPU|FD|PC|DOUT\(2) & ( \CPU|FD|PC|DOUT\(0) & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(1)) ) ) ) # ( !\CPU|FD|PC|DOUT\(2) & ( !\CPU|FD|PC|DOUT\(0) & ( (!\CPU|FD|PC|DOUT\(3) & \CPU|FD|PC|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(1),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(0),
	combout => \CPU|FD|ROM|memROM~12_combout\);

-- Location: FF_X43_Y3_N43
\CPU|FD|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~5_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X43_Y3_N49
\CPU|FD|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N15
\CPU|FD|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~13_combout\ = ( !\CPU|FD|PC|DOUT\(5) & ( (!\CPU|FD|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(5),
	combout => \CPU|FD|ROM|memROM~13_combout\);

-- Location: FF_X43_Y3_N52
\CPU|FD|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[7]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N21
\CPU|FD|bancoReg|registrador~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~195_combout\ = ( \CPU|FD|ROM|memROM~5_combout\ & ( \CPU|FD|ROM|memROM~3_combout\ & ( (!\CPU|FD|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|FD|ROM|memROM~0_combout\) # (!\CPU|FD|ROM|memROM~4_combout\))) ) ) ) # ( 
-- !\CPU|FD|ROM|memROM~5_combout\ & ( \CPU|FD|ROM|memROM~3_combout\ & ( !\CPU|FD|PC|DOUT[7]~DUPLICATE_q\ ) ) ) # ( \CPU|FD|ROM|memROM~5_combout\ & ( !\CPU|FD|ROM|memROM~3_combout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|PC|DOUT[7]~DUPLICATE_q\) ) ) ) 
-- # ( !\CPU|FD|ROM|memROM~5_combout\ & ( !\CPU|FD|ROM|memROM~3_combout\ & ( (!\CPU|FD|PC|DOUT[7]~DUPLICATE_q\ & ((!\CPU|FD|ROM|memROM~0_combout\) # (!\CPU|FD|ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000101000001010000011110000111100001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|FD|bancoReg|registrador~195_combout\);

-- Location: LABCELL_X44_Y3_N45
\CPU|FD|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~11_combout\ = ( !\CPU|FD|PC|DOUT\(1) & ( \CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(0)) ) ) ) # ( \CPU|FD|PC|DOUT\(1) & ( !\CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(0)) ) ) ) # ( 
-- !\CPU|FD|PC|DOUT\(1) & ( !\CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(0),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(2),
	combout => \CPU|FD|ROM|memROM~11_combout\);

-- Location: LABCELL_X44_Y3_N9
\CPU|FD|bancoReg|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~197_combout\ = ( !\CPU|FD|ROM|memROM~11_combout\ & ( (\CPU|FD|ROM|memROM~12_combout\ & (\CPU|FD|ROM|memROM~13_combout\ & \CPU|FD|bancoReg|registrador~195_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~12_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~195_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|FD|bancoReg|registrador~197_combout\);

-- Location: FF_X44_Y3_N35
\CPU|FD|bancoReg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~35_q\);

-- Location: LABCELL_X44_Y4_N36
\CPU|FD|bancoReg|registrador~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~199_combout\ = ( \CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( ((!\CPU|FD|ROM|memROM~0_combout\) # ((\CPU|FD|PC|DOUT\(2) & \CPU|FD|PC|DOUT\(0)))) # (\CPU|FD|PC|DOUT\(3)) ) ) # ( !\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\CPU|FD|ROM|memROM~0_combout\) # (\CPU|FD|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111001101111111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(0),
	datad => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \CPU|FD|bancoReg|registrador~199_combout\);

-- Location: FF_X43_Y3_N28
\CPU|FD|bancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~15_q\);

-- Location: LABCELL_X44_Y3_N36
\CPU|FD|bancoReg|registrador~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~196_combout\ = ( \CPU|FD|ROM|memROM~11_combout\ & ( (\CPU|FD|ROM|memROM~13_combout\ & (!\CPU|FD|ROM|memROM~12_combout\ & \CPU|FD|bancoReg|registrador~195_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~195_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|FD|bancoReg|registrador~196_combout\);

-- Location: FF_X44_Y3_N44
\CPU|FD|bancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~25_q\);

-- Location: LABCELL_X43_Y3_N12
\CPU|FD|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~8_combout\ = ( \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~8_combout\);

-- Location: LABCELL_X43_Y3_N3
\CPU|FD|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~9_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|FD|ROM|memROM~9_combout\);

-- Location: LABCELL_X43_Y3_N9
\CPU|FD|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~7_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & \CPU|FD|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|ROM|memROM~7_combout\);

-- Location: LABCELL_X43_Y3_N18
\CPU|FD|bancoReg|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~175_combout\ = ( \CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|bancoReg|registrador~45_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|ROM|memROM~7_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~25_q\ ) ) ) # ( \CPU|FD|ROM|memROM~9_combout\ & ( !\CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|bancoReg|registrador~35_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~9_combout\ & ( !\CPU|FD|ROM|memROM~7_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~35_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~15_q\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~45_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~25_q\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|FD|bancoReg|registrador~175_combout\);

-- Location: MLABCELL_X42_Y4_N48
\CPU|FD|ULA|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Equal6~1_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (\CPU|FD|ROM|memROM~5_combout\ & (!\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|ULA|Equal6~1_combout\);

-- Location: LABCELL_X43_Y4_N0
\CPU|FD|ULA|Add0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~42_cout\ = CARRY(( \CPU|FD|ULA|Equal6~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|ULA|ALT_INV_Equal6~1_combout\,
	cin => GND,
	cout => \CPU|FD|ULA|Add0~42_cout\);

-- Location: LABCELL_X43_Y4_N3
\CPU|FD|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~1_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~175_combout\ ) + ( ((!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~187_combout\)) # (\CPU|UC|palavraControle[3]~5_combout\)) # (\CPU|UC|Equal0~0_combout\) ) + ( 
-- \CPU|FD|ULA|Add0~42_cout\ ))
-- \CPU|FD|ULA|Add0~2\ = CARRY(( \CPU|FD|bancoReg|registrador~175_combout\ ) + ( ((!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~187_combout\)) # (\CPU|UC|palavraControle[3]~5_combout\)) # (\CPU|UC|Equal0~0_combout\) ) + ( 
-- \CPU|FD|ULA|Add0~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~175_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~187_combout\,
	cin => \CPU|FD|ULA|Add0~42_cout\,
	sumout => \CPU|FD|ULA|Add0~1_sumout\,
	cout => \CPU|FD|ULA|Add0~2\);

-- Location: LABCELL_X44_Y3_N27
\CPU|FD|muxULA_Imediato|saida_MUX[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( \CPU|FD|ULA|Add0~1_sumout\ & ( (!\CPU|FD|PC|DOUT\(3) & (!\CPU|FD|PC|DOUT\(0) & ((!\CPU|FD|PC|DOUT[1]~DUPLICATE_q\) # (!\CPU|FD|PC|DOUT\(2))))) ) ) ) # ( 
-- \CPU|FD|ROM|memROM~0_combout\ & ( !\CPU|FD|ULA|Add0~1_sumout\ & ( (!\CPU|FD|PC|DOUT\(3) & (!\CPU|FD|PC|DOUT\(2) & !\CPU|FD|PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(0),
	datae => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~1_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\);

-- Location: LABCELL_X44_Y3_N12
\CPU|FD|bancoReg|registrador~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~198_combout\ = ( \CPU|FD|bancoReg|registrador~195_combout\ & ( (\CPU|FD|ROM|memROM~13_combout\ & (\CPU|FD|ROM|memROM~12_combout\ & \CPU|FD|ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~195_combout\,
	combout => \CPU|FD|bancoReg|registrador~198_combout\);

-- Location: FF_X44_Y3_N23
\CPU|FD|bancoReg|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~45_q\);

-- Location: FF_X43_Y3_N29
\CPU|FD|bancoReg|registrador~15DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~9_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~15DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N0
\CPU|FD|bancoReg|registrador~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~187_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & (((\CPU|FD|bancoReg|registrador~15DUPLICATE_q\)))) # (\CPU|FD|ROM|memROM~0_combout\ & ((!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|FD|bancoReg|registrador~45_q\)) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|FD|bancoReg|registrador~15DUPLICATE_q\))))) ) ) # ( !\CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~15DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000110111110001000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~45_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~15DUPLICATE_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|FD|bancoReg|registrador~187_combout\);

-- Location: FF_X42_Y3_N56
\CPU|FD|bancoReg|registrador~47DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~47DUPLICATE_q\);

-- Location: FF_X42_Y3_N14
\CPU|FD|bancoReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~37_q\);

-- Location: FF_X43_Y3_N23
\CPU|FD|bancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~27_q\);

-- Location: FF_X43_Y3_N55
\CPU|FD|bancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~17_q\);

-- Location: MLABCELL_X42_Y3_N48
\CPU|FD|bancoReg|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~177_combout\ = ( \CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|bancoReg|registrador~47DUPLICATE_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~37_q\ ) ) ) # ( \CPU|FD|ROM|memROM~7_combout\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|bancoReg|registrador~27_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~7_combout\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~47DUPLICATE_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~37_q\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~27_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~17_q\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~177_combout\);

-- Location: FF_X43_Y3_N16
\CPU|FD|bancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~16_q\);

-- Location: LABCELL_X43_Y3_N15
\CPU|FD|bancoReg|registrador~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~188_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|FD|ROM|memROM~8_combout\ & ((\CPU|FD|bancoReg|registrador~16_q\))) # (\CPU|FD|ROM|memROM~8_combout\ & 
-- (\CPU|FD|bancoReg|registrador~46_q\)))) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & (((\CPU|FD|bancoReg|registrador~16_q\)))) ) ) # ( !\CPU|FD|ROM|memROM~0_combout\ & ( \CPU|FD|bancoReg|registrador~16_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111101110000010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~46_q\,
	datab => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~16_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~188_combout\);

-- Location: LABCELL_X43_Y4_N6
\CPU|FD|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~13_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~178_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~188_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~2\ ))
-- \CPU|FD|ULA|Add0~14\ = CARRY(( \CPU|FD|bancoReg|registrador~178_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~188_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~178_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~188_combout\,
	cin => \CPU|FD|ULA|Add0~2\,
	sumout => \CPU|FD|ULA|Add0~13_sumout\,
	cout => \CPU|FD|ULA|Add0~14\);

-- Location: LABCELL_X43_Y4_N9
\CPU|FD|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~9_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~177_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~189_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~14\ ))
-- \CPU|FD|ULA|Add0~10\ = CARRY(( \CPU|FD|bancoReg|registrador~177_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~189_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~177_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~189_combout\,
	cin => \CPU|FD|ULA|Add0~14\,
	sumout => \CPU|FD|ULA|Add0~9_sumout\,
	cout => \CPU|FD|ULA|Add0~10\);

-- Location: MLABCELL_X42_Y3_N42
\CPU|FD|muxULA_Imediato|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\ = ( \CPU|FD|ULA|Add0~9_sumout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~9_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\);

-- Location: FF_X42_Y3_N55
\CPU|FD|bancoReg|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[2]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~47_q\);

-- Location: LABCELL_X43_Y3_N54
\CPU|FD|bancoReg|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~189_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & ((!\CPU|FD|ROM|memROM~0_combout\ & ((\CPU|FD|bancoReg|registrador~17_q\))) # (\CPU|FD|ROM|memROM~0_combout\ & 
-- (\CPU|FD|bancoReg|registrador~47_q\)))) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & (((\CPU|FD|bancoReg|registrador~17_q\)))) ) ) # ( !\CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~17_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~47_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~17_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|FD|bancoReg|registrador~189_combout\);

-- Location: MLABCELL_X42_Y3_N39
\CPU|UC|palavraControle[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[8]~1_combout\ = ( \CPU|FD|bancoReg|registrador~188_combout\ & ( \CPU|FD|bancoReg|registrador~178_combout\ & ( (!\CPU|FD|bancoReg|registrador~187_combout\ & (!\CPU|FD|bancoReg|registrador~175_combout\ & 
-- (!\CPU|FD|bancoReg|registrador~189_combout\ $ (\CPU|FD|bancoReg|registrador~177_combout\)))) # (\CPU|FD|bancoReg|registrador~187_combout\ & (\CPU|FD|bancoReg|registrador~175_combout\ & (!\CPU|FD|bancoReg|registrador~189_combout\ $ 
-- (\CPU|FD|bancoReg|registrador~177_combout\)))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~188_combout\ & ( !\CPU|FD|bancoReg|registrador~178_combout\ & ( (!\CPU|FD|bancoReg|registrador~187_combout\ & (!\CPU|FD|bancoReg|registrador~175_combout\ & 
-- (!\CPU|FD|bancoReg|registrador~189_combout\ $ (\CPU|FD|bancoReg|registrador~177_combout\)))) # (\CPU|FD|bancoReg|registrador~187_combout\ & (\CPU|FD|bancoReg|registrador~175_combout\ & (!\CPU|FD|bancoReg|registrador~189_combout\ $ 
-- (\CPU|FD|bancoReg|registrador~177_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~187_combout\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~189_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~175_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~177_combout\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~188_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~178_combout\,
	combout => \CPU|UC|palavraControle[8]~1_combout\);

-- Location: MLABCELL_X42_Y3_N9
\CPU|UC|palavraControle[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[8]~3_combout\ = ( !\CPU|FD|ROM|memROM~3_combout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & \CPU|FD|ROM|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|UC|palavraControle[8]~3_combout\);

-- Location: FF_X42_Y4_N26
\CPU|FD|bancoReg|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~49_q\);

-- Location: FF_X43_Y4_N40
\CPU|FD|bancoReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~19_q\);

-- Location: LABCELL_X43_Y4_N39
\CPU|FD|bancoReg|registrador~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~192_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & (((\CPU|FD|bancoReg|registrador~19_q\)))) # (\CPU|FD|ROM|memROM~0_combout\ & ((!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\CPU|FD|bancoReg|registrador~49_q\)) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & ((\CPU|FD|bancoReg|registrador~19_q\))))) ) ) # ( !\CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~19_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000110111110001000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~49_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~19_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|FD|bancoReg|registrador~192_combout\);

-- Location: FF_X43_Y4_N52
\CPU|FD|bancoReg|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~48_q\);

-- Location: LABCELL_X43_Y4_N51
\CPU|FD|bancoReg|registrador~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~190_combout\ = ( \CPU|FD|bancoReg|registrador~18_q\ & ( ((!\CPU|FD|ROM|memROM~0_combout\) # ((!\CPU|FD|ROM|memROM~8_combout\) # (\CPU|FD|bancoReg|registrador~48_q\))) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\) ) ) # ( 
-- !\CPU|FD|bancoReg|registrador~18_q\ & ( (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~8_combout\ & \CPU|FD|bancoReg|registrador~48_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~48_q\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~18_q\,
	combout => \CPU|FD|bancoReg|registrador~190_combout\);

-- Location: LABCELL_X43_Y4_N12
\CPU|FD|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~5_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~176_combout\ ) + ( (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|UC|Equal0~0_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~190_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~10\ ))
-- \CPU|FD|ULA|Add0~6\ = CARRY(( \CPU|FD|bancoReg|registrador~176_combout\ ) + ( (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|UC|Equal0~0_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~190_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~176_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~190_combout\,
	cin => \CPU|FD|ULA|Add0~10\,
	sumout => \CPU|FD|ULA|Add0~5_sumout\,
	cout => \CPU|FD|ULA|Add0~6\);

-- Location: LABCELL_X43_Y4_N36
\CPU|FD|muxULA_Imediato|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\ = ( \CPU|FD|ULA|Add0~5_sumout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~5_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\);

-- Location: FF_X43_Y4_N38
\CPU|FD|bancoReg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~18_q\);

-- Location: FF_X44_Y3_N41
\CPU|FD|bancoReg|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~38_q\);

-- Location: FF_X44_Y4_N23
\CPU|FD|bancoReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[3]~0_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~28_q\);

-- Location: LABCELL_X44_Y4_N21
\CPU|FD|bancoReg|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~176_combout\ = ( \CPU|FD|bancoReg|registrador~28_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~38_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~48_q\))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~28_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~38_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~48_q\))) ) ) ) # ( \CPU|FD|bancoReg|registrador~28_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~18_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~28_q\ & ( 
-- !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|bancoReg|registrador~18_q\ & !\CPU|FD|ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~18_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~38_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~48_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~28_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~176_combout\);

-- Location: LABCELL_X43_Y4_N15
\CPU|FD|ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~33_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~191_combout\ ) + ( (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|UC|Equal0~0_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~192_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~6\ ))
-- \CPU|FD|ULA|Add0~34\ = CARRY(( \CPU|FD|bancoReg|registrador~191_combout\ ) + ( (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|UC|Equal0~0_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~192_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~191_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~192_combout\,
	cin => \CPU|FD|ULA|Add0~6\,
	sumout => \CPU|FD|ULA|Add0~33_sumout\,
	cout => \CPU|FD|ULA|Add0~34\);

-- Location: MLABCELL_X42_Y4_N27
\CPU|FD|muxULA_Imediato|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\ = ( !\CPU|FD|ROM|memROM~5_combout\ & ( \CPU|FD|ULA|Add0~33_sumout\ & ( (\CPU|FD|ROM|memROM~3_combout\ & \CPU|FD|ROM|memROM~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~33_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\);

-- Location: FF_X42_Y4_N5
\CPU|FD|bancoReg|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~39_q\);

-- Location: FF_X42_Y4_N25
\CPU|FD|bancoReg|registrador~49DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~49DUPLICATE_q\);

-- Location: FF_X42_Y4_N41
\CPU|FD|bancoReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[4]~7_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~29_q\);

-- Location: LABCELL_X44_Y3_N51
\CPU|FD|bancoReg|registrador~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~191_combout\ = ( \CPU|FD|bancoReg|registrador~19_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~39_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~49DUPLICATE_q\))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~19_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~39_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~49DUPLICATE_q\))) ) ) ) # ( \CPU|FD|bancoReg|registrador~19_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~29_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~19_q\ & ( 
-- !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|ROM|memROM~7_combout\ & \CPU|FD|bancoReg|registrador~29_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~39_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~49DUPLICATE_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~29_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~19_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~191_combout\);

-- Location: FF_X43_Y4_N44
\CPU|FD|bancoReg|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~50_q\);

-- Location: FF_X44_Y4_N35
\CPU|FD|bancoReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~20_q\);

-- Location: LABCELL_X44_Y4_N15
\CPU|FD|bancoReg|registrador~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~194_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~20_q\ & ( ((!\CPU|FD|ROM|memROM~0_combout\) # (\CPU|FD|bancoReg|registrador~50_q\)) # (\CPU|FD|PC|DOUT\(3)) ) ) ) # ( 
-- !\CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~20_q\ ) ) # ( \CPU|FD|ROM|memROM~8_combout\ & ( !\CPU|FD|bancoReg|registrador~20_q\ & ( (!\CPU|FD|PC|DOUT\(3) & (\CPU|FD|ROM|memROM~0_combout\ & \CPU|FD|bancoReg|registrador~50_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101011111111111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~50_q\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~20_q\,
	combout => \CPU|FD|bancoReg|registrador~194_combout\);

-- Location: LABCELL_X43_Y4_N18
\CPU|FD|ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~37_sumout\ = SUM(( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) + ( \CPU|FD|bancoReg|registrador~193_combout\ ) + ( 
-- \CPU|FD|ULA|Add0~34\ ))
-- \CPU|FD|ULA|Add0~38\ = CARRY(( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) + ( \CPU|FD|bancoReg|registrador~193_combout\ ) + ( 
-- \CPU|FD|ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~194_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~193_combout\,
	cin => \CPU|FD|ULA|Add0~34\,
	sumout => \CPU|FD|ULA|Add0~37_sumout\,
	cout => \CPU|FD|ULA|Add0~38\);

-- Location: LABCELL_X43_Y4_N42
\CPU|FD|muxULA_Imediato|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\ = ( \CPU|FD|ULA|Add0~37_sumout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~37_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\);

-- Location: FF_X44_Y4_N37
\CPU|FD|bancoReg|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~40_q\);

-- Location: FF_X44_Y4_N19
\CPU|FD|bancoReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~30_q\);

-- Location: FF_X44_Y4_N34
\CPU|FD|bancoReg|registrador~20DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[5]~8_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~20DUPLICATE_q\);

-- Location: LABCELL_X44_Y3_N57
\CPU|FD|bancoReg|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~193_combout\ = ( \CPU|FD|bancoReg|registrador~20DUPLICATE_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~40_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~50_q\))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~20DUPLICATE_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~40_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~50_q\))) ) ) ) # ( \CPU|FD|bancoReg|registrador~20DUPLICATE_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~30_q\) ) ) ) # ( 
-- !\CPU|FD|bancoReg|registrador~20DUPLICATE_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|bancoReg|registrador~30_q\ & \CPU|FD|ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~40_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~30_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~50_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~20DUPLICATE_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~193_combout\);

-- Location: LABCELL_X44_Y3_N0
\CPU|UC|palavraControle[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[8]~2_combout\ = ( \CPU|FD|bancoReg|registrador~192_combout\ & ( \CPU|FD|bancoReg|registrador~176_combout\ & ( (\CPU|FD|bancoReg|registrador~191_combout\ & (\CPU|FD|bancoReg|registrador~190_combout\ & 
-- (!\CPU|FD|bancoReg|registrador~193_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~192_combout\ & ( \CPU|FD|bancoReg|registrador~176_combout\ & ( (!\CPU|FD|bancoReg|registrador~191_combout\ & 
-- (\CPU|FD|bancoReg|registrador~190_combout\ & (!\CPU|FD|bancoReg|registrador~193_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) ) ) # ( \CPU|FD|bancoReg|registrador~192_combout\ & ( !\CPU|FD|bancoReg|registrador~176_combout\ & ( 
-- (\CPU|FD|bancoReg|registrador~191_combout\ & (!\CPU|FD|bancoReg|registrador~190_combout\ & (!\CPU|FD|bancoReg|registrador~193_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~192_combout\ & ( 
-- !\CPU|FD|bancoReg|registrador~176_combout\ & ( (!\CPU|FD|bancoReg|registrador~191_combout\ & (!\CPU|FD|bancoReg|registrador~190_combout\ & (!\CPU|FD|bancoReg|registrador~193_combout\ $ (\CPU|FD|bancoReg|registrador~194_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~191_combout\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~193_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~190_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~194_combout\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~192_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~176_combout\,
	combout => \CPU|UC|palavraControle[8]~2_combout\);

-- Location: MLABCELL_X42_Y3_N0
\CPU|FD|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~10_combout\ = (\CPU|FD|ROM|memROM~0_combout\ & \CPU|FD|ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|FD|ROM|memROM~10_combout\);

-- Location: FF_X43_Y4_N50
\CPU|FD|bancoReg|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~54_q\);

-- Location: LABCELL_X44_Y4_N54
\CPU|FD|bancoReg|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~180_combout\ = ( \CPU|FD|PC|DOUT\(3) & ( \CPU|FD|bancoReg|registrador~24_q\ ) ) # ( !\CPU|FD|PC|DOUT\(3) & ( (!\CPU|FD|ROM|memROM~8_combout\ & (((\CPU|FD|bancoReg|registrador~24_q\)))) # (\CPU|FD|ROM|memROM~8_combout\ & 
-- ((!\CPU|FD|ROM|memROM~0_combout\ & ((\CPU|FD|bancoReg|registrador~24_q\))) # (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|bancoReg|registrador~54_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~54_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~24_q\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(3),
	combout => \CPU|FD|bancoReg|registrador~180_combout\);

-- Location: FF_X44_Y4_N17
\CPU|FD|bancoReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~23_q\);

-- Location: FF_X43_Y4_N47
\CPU|FD|bancoReg|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~53_q\);

-- Location: LABCELL_X44_Y4_N57
\CPU|FD|bancoReg|registrador~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~186_combout\ = ( \CPU|FD|bancoReg|registrador~53_q\ & ( ((\CPU|FD|ROM|memROM~8_combout\ & (\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|PC|DOUT\(3)))) # (\CPU|FD|bancoReg|registrador~23_q\) ) ) # ( 
-- !\CPU|FD|bancoReg|registrador~53_q\ & ( (\CPU|FD|bancoReg|registrador~23_q\ & ((!\CPU|FD|ROM|memROM~8_combout\) # ((!\CPU|FD|ROM|memROM~0_combout\) # (\CPU|FD|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100011111000011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~23_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~53_q\,
	combout => \CPU|FD|bancoReg|registrador~186_combout\);

-- Location: FF_X43_Y4_N59
\CPU|FD|bancoReg|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~52_q\);

-- Location: FF_X44_Y4_N14
\CPU|FD|bancoReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~22_q\);

-- Location: LABCELL_X44_Y4_N30
\CPU|FD|bancoReg|registrador~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~184_combout\ = ( \CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~22_q\ & ( ((!\CPU|FD|ROM|memROM~0_combout\) # (\CPU|FD|bancoReg|registrador~52_q\)) # (\CPU|FD|PC|DOUT\(3)) ) ) ) # ( 
-- !\CPU|FD|ROM|memROM~8_combout\ & ( \CPU|FD|bancoReg|registrador~22_q\ ) ) # ( \CPU|FD|ROM|memROM~8_combout\ & ( !\CPU|FD|bancoReg|registrador~22_q\ & ( (!\CPU|FD|PC|DOUT\(3) & (\CPU|FD|bancoReg|registrador~52_q\ & \CPU|FD|ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001011111111111111111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~52_q\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~22_q\,
	combout => \CPU|FD|bancoReg|registrador~184_combout\);

-- Location: FF_X43_Y4_N56
\CPU|FD|bancoReg|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~51_q\);

-- Location: LABCELL_X43_Y3_N57
\CPU|FD|bancoReg|registrador~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~182_combout\ = ( \CPU|FD|bancoReg|registrador~51_q\ & ( ((!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|FD|ROM|memROM~0_combout\ & \CPU|FD|ROM|memROM~8_combout\))) # (\CPU|FD|bancoReg|registrador~21_q\) ) ) # ( 
-- !\CPU|FD|bancoReg|registrador~51_q\ & ( (\CPU|FD|bancoReg|registrador~21_q\ & (((!\CPU|FD|ROM|memROM~0_combout\) # (!\CPU|FD|ROM|memROM~8_combout\)) # (\CPU|FD|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~21_q\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~51_q\,
	combout => \CPU|FD|bancoReg|registrador~182_combout\);

-- Location: LABCELL_X43_Y4_N21
\CPU|FD|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~21_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~181_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~182_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~38\ ))
-- \CPU|FD|ULA|Add0~22\ = CARRY(( \CPU|FD|bancoReg|registrador~181_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~182_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~181_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~182_combout\,
	cin => \CPU|FD|ULA|Add0~38\,
	sumout => \CPU|FD|ULA|Add0~21_sumout\,
	cout => \CPU|FD|ULA|Add0~22\);

-- Location: LABCELL_X43_Y4_N54
\CPU|FD|muxULA_Imediato|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\ = ( \CPU|FD|ULA|Add0~21_sumout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\);

-- Location: FF_X43_Y3_N59
\CPU|FD|bancoReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~21_q\);

-- Location: FF_X44_Y4_N4
\CPU|FD|bancoReg|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~41_q\);

-- Location: FF_X44_Y4_N26
\CPU|FD|bancoReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[6]~4_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~31_q\);

-- Location: LABCELL_X44_Y4_N24
\CPU|FD|bancoReg|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~181_combout\ = ( \CPU|FD|bancoReg|registrador~31_q\ & ( \CPU|FD|ROM|memROM~7_combout\ & ( (!\CPU|FD|ROM|memROM~9_combout\) # (\CPU|FD|bancoReg|registrador~51_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~31_q\ & ( 
-- \CPU|FD|ROM|memROM~7_combout\ & ( (\CPU|FD|ROM|memROM~9_combout\ & \CPU|FD|bancoReg|registrador~51_q\) ) ) ) # ( \CPU|FD|bancoReg|registrador~31_q\ & ( !\CPU|FD|ROM|memROM~7_combout\ & ( (!\CPU|FD|ROM|memROM~9_combout\ & 
-- (\CPU|FD|bancoReg|registrador~21_q\)) # (\CPU|FD|ROM|memROM~9_combout\ & ((\CPU|FD|bancoReg|registrador~41_q\))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~31_q\ & ( !\CPU|FD|ROM|memROM~7_combout\ & ( (!\CPU|FD|ROM|memROM~9_combout\ & 
-- (\CPU|FD|bancoReg|registrador~21_q\)) # (\CPU|FD|ROM|memROM~9_combout\ & ((\CPU|FD|bancoReg|registrador~41_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~21_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~41_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~51_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~31_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|FD|bancoReg|registrador~181_combout\);

-- Location: LABCELL_X43_Y4_N24
\CPU|FD|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~25_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~183_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~184_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~22\ ))
-- \CPU|FD|ULA|Add0~26\ = CARRY(( \CPU|FD|bancoReg|registrador~183_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~184_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~183_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~184_combout\,
	cin => \CPU|FD|ULA|Add0~22\,
	sumout => \CPU|FD|ULA|Add0~25_sumout\,
	cout => \CPU|FD|ULA|Add0~26\);

-- Location: LABCELL_X43_Y4_N57
\CPU|FD|muxULA_Imediato|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\ = ( \CPU|FD|ULA|Add0~25_sumout\ & ( (\CPU|FD|ROM|memROM~3_combout\ & (\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\);

-- Location: FF_X44_Y4_N29
\CPU|FD|bancoReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~32_q\);

-- Location: FF_X44_Y4_N50
\CPU|FD|bancoReg|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[7]~5_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~42_q\);

-- Location: LABCELL_X44_Y4_N48
\CPU|FD|bancoReg|registrador~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~183_combout\ = ( \CPU|FD|bancoReg|registrador~42_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~52_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~42_q\ & ( 
-- \CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|ROM|memROM~7_combout\ & \CPU|FD|bancoReg|registrador~52_q\) ) ) ) # ( \CPU|FD|bancoReg|registrador~42_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~22_q\))) # (\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~32_q\)) ) ) ) # ( !\CPU|FD|bancoReg|registrador~42_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~22_q\))) # (\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~32_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~32_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~22_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~52_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~42_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~183_combout\);

-- Location: LABCELL_X43_Y4_N27
\CPU|FD|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~29_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~185_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~186_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~26\ ))
-- \CPU|FD|ULA|Add0~30\ = CARRY(( \CPU|FD|bancoReg|registrador~185_combout\ ) + ( (!\CPU|UC|Equal0~0_combout\ & (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~186_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~185_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~186_combout\,
	cin => \CPU|FD|ULA|Add0~26\,
	sumout => \CPU|FD|ULA|Add0~29_sumout\,
	cout => \CPU|FD|ULA|Add0~30\);

-- Location: LABCELL_X43_Y4_N45
\CPU|FD|muxULA_Imediato|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\ = ( \CPU|FD|ULA|Add0~29_sumout\ & ( (\CPU|FD|ROM|memROM~3_combout\ & (\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~29_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\);

-- Location: FF_X44_Y4_N43
\CPU|FD|bancoReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~33_q\);

-- Location: FF_X44_Y4_N2
\CPU|FD|bancoReg|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[8]~6_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~43_q\);

-- Location: LABCELL_X44_Y4_N0
\CPU|FD|bancoReg|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~185_combout\ = ( \CPU|FD|bancoReg|registrador~43_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~53_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~43_q\ & ( 
-- \CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|ROM|memROM~7_combout\ & \CPU|FD|bancoReg|registrador~53_q\) ) ) ) # ( \CPU|FD|bancoReg|registrador~43_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~23_q\))) # (\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~33_q\)) ) ) ) # ( !\CPU|FD|bancoReg|registrador~43_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~23_q\))) # (\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~33_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~33_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~23_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~53_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~43_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~185_combout\);

-- Location: LABCELL_X43_Y4_N30
\CPU|FD|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Add0~17_sumout\ = SUM(( \CPU|FD|bancoReg|registrador~179_combout\ ) + ( (!\CPU|UC|palavraControle[3]~5_combout\ & (!\CPU|UC|Equal0~0_combout\ & (!\CPU|FD|ULA|Equal6~0_combout\ $ (\CPU|FD|bancoReg|registrador~180_combout\)))) ) + ( 
-- \CPU|FD|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_palavraControle[3]~5_combout\,
	datab => \CPU|FD|ULA|ALT_INV_Equal6~0_combout\,
	datac => \CPU|UC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~179_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~180_combout\,
	cin => \CPU|FD|ULA|Add0~30\,
	sumout => \CPU|FD|ULA|Add0~17_sumout\);

-- Location: LABCELL_X43_Y4_N48
\CPU|FD|muxULA_Imediato|saida_MUX[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\ = ( \CPU|FD|ULA|Add0~17_sumout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~17_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\);

-- Location: FF_X44_Y4_N56
\CPU|FD|bancoReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~24_q\);

-- Location: FF_X43_Y4_N34
\CPU|FD|bancoReg|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~44_q\);

-- Location: FF_X44_Y4_N8
\CPU|FD|bancoReg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[9]~3_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~34_q\);

-- Location: LABCELL_X44_Y4_N6
\CPU|FD|bancoReg|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~179_combout\ = ( \CPU|FD|bancoReg|registrador~34_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~44_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~54_q\))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~34_q\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( (!\CPU|FD|ROM|memROM~7_combout\ & (\CPU|FD|bancoReg|registrador~44_q\)) # (\CPU|FD|ROM|memROM~7_combout\ & 
-- ((\CPU|FD|bancoReg|registrador~54_q\))) ) ) ) # ( \CPU|FD|bancoReg|registrador~34_q\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|ROM|memROM~7_combout\) # (\CPU|FD|bancoReg|registrador~24_q\) ) ) ) # ( !\CPU|FD|bancoReg|registrador~34_q\ & ( 
-- !\CPU|FD|ROM|memROM~9_combout\ & ( (\CPU|FD|bancoReg|registrador~24_q\ & !\CPU|FD|ROM|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~24_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~44_q\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~54_q\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~34_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~179_combout\);

-- Location: LABCELL_X44_Y4_N39
\CPU|FD|ULA|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ULA|Equal7~0_combout\ = !\CPU|FD|bancoReg|registrador~179_combout\ $ (!\CPU|FD|bancoReg|registrador~180_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~179_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~180_combout\,
	combout => \CPU|FD|ULA|Equal7~0_combout\);

-- Location: LABCELL_X44_Y4_N45
\CPU|UC|palavraControle[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[8]~0_combout\ = ( \CPU|FD|bancoReg|registrador~186_combout\ & ( \CPU|FD|bancoReg|registrador~181_combout\ & ( (\CPU|FD|bancoReg|registrador~185_combout\ & (\CPU|FD|bancoReg|registrador~182_combout\ & 
-- (!\CPU|FD|bancoReg|registrador~184_combout\ $ (\CPU|FD|bancoReg|registrador~183_combout\)))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~186_combout\ & ( \CPU|FD|bancoReg|registrador~181_combout\ & ( (!\CPU|FD|bancoReg|registrador~185_combout\ & 
-- (\CPU|FD|bancoReg|registrador~182_combout\ & (!\CPU|FD|bancoReg|registrador~184_combout\ $ (\CPU|FD|bancoReg|registrador~183_combout\)))) ) ) ) # ( \CPU|FD|bancoReg|registrador~186_combout\ & ( !\CPU|FD|bancoReg|registrador~181_combout\ & ( 
-- (\CPU|FD|bancoReg|registrador~185_combout\ & (!\CPU|FD|bancoReg|registrador~182_combout\ & (!\CPU|FD|bancoReg|registrador~184_combout\ $ (\CPU|FD|bancoReg|registrador~183_combout\)))) ) ) ) # ( !\CPU|FD|bancoReg|registrador~186_combout\ & ( 
-- !\CPU|FD|bancoReg|registrador~181_combout\ & ( (!\CPU|FD|bancoReg|registrador~185_combout\ & (!\CPU|FD|bancoReg|registrador~182_combout\ & (!\CPU|FD|bancoReg|registrador~184_combout\ $ (\CPU|FD|bancoReg|registrador~183_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~185_combout\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~184_combout\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~182_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~183_combout\,
	datae => \CPU|FD|bancoReg|ALT_INV_registrador~186_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~181_combout\,
	combout => \CPU|UC|palavraControle[8]~0_combout\);

-- Location: LABCELL_X43_Y3_N24
\CPU|UC|palavraControle[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|palavraControle[8]~4_combout\ = ( \CPU|FD|ULA|Equal7~0_combout\ & ( \CPU|UC|palavraControle[8]~0_combout\ & ( (\CPU|UC|palavraControle[8]~3_combout\ & \CPU|FD|ROM|memROM~10_combout\) ) ) ) # ( !\CPU|FD|ULA|Equal7~0_combout\ & ( 
-- \CPU|UC|palavraControle[8]~0_combout\ & ( (\CPU|UC|palavraControle[8]~3_combout\ & (((\CPU|UC|palavraControle[8]~1_combout\ & \CPU|UC|palavraControle[8]~2_combout\)) # (\CPU|FD|ROM|memROM~10_combout\))) ) ) ) # ( \CPU|FD|ULA|Equal7~0_combout\ & ( 
-- !\CPU|UC|palavraControle[8]~0_combout\ & ( (\CPU|UC|palavraControle[8]~3_combout\ & \CPU|FD|ROM|memROM~10_combout\) ) ) ) # ( !\CPU|FD|ULA|Equal7~0_combout\ & ( !\CPU|UC|palavraControle[8]~0_combout\ & ( (\CPU|UC|palavraControle[8]~3_combout\ & 
-- \CPU|FD|ROM|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000001001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|ALT_INV_palavraControle[8]~1_combout\,
	datab => \CPU|UC|ALT_INV_palavraControle[8]~3_combout\,
	datac => \CPU|UC|ALT_INV_palavraControle[8]~2_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~10_combout\,
	datae => \CPU|FD|ULA|ALT_INV_Equal7~0_combout\,
	dataf => \CPU|UC|ALT_INV_palavraControle[8]~0_combout\,
	combout => \CPU|UC|palavraControle[8]~4_combout\);

-- Location: FF_X43_Y3_N32
\CPU|FD|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~17_sumout\,
	asdata => \CPU|FD|ROM|memROM~6_combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N57
\CPU|FD|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~6_combout\ = ( !\CPU|FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|FD|ROM|memROM~0_combout\ & (!\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~6_combout\);

-- Location: FF_X43_Y3_N31
\CPU|FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~17_sumout\,
	asdata => \CPU|FD|ROM|memROM~6_combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(0));

-- Location: LABCELL_X43_Y3_N33
\CPU|FD|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~21_sumout\ = SUM(( \CPU|FD|PC|DOUT\(1) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~18\ ))
-- \CPU|FD|somaUm|Add0~22\ = CARRY(( \CPU|FD|PC|DOUT\(1) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	cin => \CPU|FD|somaUm|Add0~18\,
	sumout => \CPU|FD|somaUm|Add0~21_sumout\,
	cout => \CPU|FD|somaUm|Add0~22\);

-- Location: FF_X43_Y3_N34
\CPU|FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~21_sumout\,
	asdata => \CPU|FD|ROM|memROM~2_combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(1));

-- Location: LABCELL_X43_Y3_N36
\CPU|FD|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~25_sumout\ = SUM(( \CPU|FD|PC|DOUT\(2) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~22\ ))
-- \CPU|FD|somaUm|Add0~26\ = CARRY(( \CPU|FD|PC|DOUT\(2) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(2),
	cin => \CPU|FD|somaUm|Add0~22\,
	sumout => \CPU|FD|somaUm|Add0~25_sumout\,
	cout => \CPU|FD|somaUm|Add0~26\);

-- Location: FF_X43_Y3_N37
\CPU|FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(2));

-- Location: LABCELL_X43_Y3_N39
\CPU|FD|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~29_sumout\ = SUM(( \CPU|FD|PC|DOUT\(3) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~26\ ))
-- \CPU|FD|somaUm|Add0~30\ = CARRY(( \CPU|FD|PC|DOUT\(3) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	cin => \CPU|FD|somaUm|Add0~26\,
	sumout => \CPU|FD|somaUm|Add0~29_sumout\,
	cout => \CPU|FD|somaUm|Add0~30\);

-- Location: FF_X43_Y3_N40
\CPU|FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(3));

-- Location: LABCELL_X43_Y3_N42
\CPU|FD|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~5_sumout\ = SUM(( \CPU|FD|PC|DOUT\(4) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~30\ ))
-- \CPU|FD|somaUm|Add0~6\ = CARRY(( \CPU|FD|PC|DOUT\(4) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(4),
	cin => \CPU|FD|somaUm|Add0~30\,
	sumout => \CPU|FD|somaUm|Add0~5_sumout\,
	cout => \CPU|FD|somaUm|Add0~6\);

-- Location: FF_X43_Y3_N44
\CPU|FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~5_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(4));

-- Location: LABCELL_X43_Y3_N45
\CPU|FD|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~9_sumout\ = SUM(( \CPU|FD|PC|DOUT\(5) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~6\ ))
-- \CPU|FD|somaUm|Add0~10\ = CARRY(( \CPU|FD|PC|DOUT\(5) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(5),
	cin => \CPU|FD|somaUm|Add0~6\,
	sumout => \CPU|FD|somaUm|Add0~9_sumout\,
	cout => \CPU|FD|somaUm|Add0~10\);

-- Location: FF_X43_Y3_N47
\CPU|FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~9_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(5));

-- Location: LABCELL_X43_Y3_N48
\CPU|FD|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~13_sumout\ = SUM(( \CPU|FD|PC|DOUT\(6) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~10\ ))
-- \CPU|FD|somaUm|Add0~14\ = CARRY(( \CPU|FD|PC|DOUT\(6) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(6),
	cin => \CPU|FD|somaUm|Add0~10\,
	sumout => \CPU|FD|somaUm|Add0~13_sumout\,
	cout => \CPU|FD|somaUm|Add0~14\);

-- Location: FF_X43_Y3_N50
\CPU|FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(6));

-- Location: LABCELL_X43_Y3_N51
\CPU|FD|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~1_sumout\ = SUM(( \CPU|FD|PC|DOUT\(7) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(7),
	cin => \CPU|FD|somaUm|Add0~14\,
	sumout => \CPU|FD|somaUm|Add0~1_sumout\);

-- Location: FF_X43_Y3_N53
\CPU|FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|palavraControle[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(7));

-- Location: LABCELL_X43_Y3_N6
\CPU|FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~0_combout\ = ( !\CPU|FD|PC|DOUT\(4) & ( (!\CPU|FD|PC|DOUT\(7) & (!\CPU|FD|PC|DOUT\(6) & !\CPU|FD|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(7),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(6),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(4),
	combout => \CPU|FD|ROM|memROM~0_combout\);

-- Location: MLABCELL_X42_Y4_N45
\CPU|FD|muxULA_Imediato|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\ = ( \CPU|FD|ROM|memROM~4_combout\ & ( \CPU|FD|ULA|Add0~13_sumout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & (((\CPU|FD|ROM|memROM~2_combout\)))) # (\CPU|FD|ROM|memROM~0_combout\ & (!\CPU|FD|ROM|memROM~5_combout\ 
-- & ((\CPU|FD|ROM|memROM~3_combout\)))) ) ) ) # ( !\CPU|FD|ROM|memROM~4_combout\ & ( \CPU|FD|ULA|Add0~13_sumout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & (((\CPU|FD|ROM|memROM~2_combout\)))) # (\CPU|FD|ROM|memROM~0_combout\ & (!\CPU|FD|ROM|memROM~5_combout\ & 
-- ((\CPU|FD|ROM|memROM~3_combout\) # (\CPU|FD|ROM|memROM~2_combout\)))) ) ) ) # ( \CPU|FD|ROM|memROM~4_combout\ & ( !\CPU|FD|ULA|Add0~13_sumout\ & ( (!\CPU|FD|ROM|memROM~0_combout\ & \CPU|FD|ROM|memROM~2_combout\) ) ) ) # ( !\CPU|FD|ROM|memROM~4_combout\ & 
-- ( !\CPU|FD|ULA|Add0~13_sumout\ & ( (\CPU|FD|ROM|memROM~2_combout\ & ((!\CPU|FD|ROM|memROM~0_combout\) # ((!\CPU|FD|ROM|memROM~5_combout\ & !\CPU|FD|ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001010000010100000101000001110010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|FD|ULA|ALT_INV_Add0~13_sumout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\);

-- Location: FF_X42_Y4_N14
\CPU|FD|bancoReg|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~46_q\);

-- Location: FF_X42_Y3_N25
\CPU|FD|bancoReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~36_q\);

-- Location: FF_X42_Y4_N43
\CPU|FD|bancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~26_q\);

-- Location: MLABCELL_X42_Y3_N18
\CPU|FD|bancoReg|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~178_combout\ = ( \CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|bancoReg|registrador~46_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~7_combout\ & ( \CPU|FD|ROM|memROM~9_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~36_q\ ) ) ) # ( \CPU|FD|ROM|memROM~7_combout\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( \CPU|FD|bancoReg|registrador~26_q\ ) ) ) # ( !\CPU|FD|ROM|memROM~7_combout\ & ( !\CPU|FD|ROM|memROM~9_combout\ & ( 
-- \CPU|FD|bancoReg|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~46_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~36_q\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~26_q\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~16_q\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~7_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|FD|bancoReg|registrador~178_combout\);

-- Location: MLABCELL_X42_Y3_N33
\DEC|decodificadorControle[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|decodificadorControle[15]~0_combout\ = ( !\CPU|FD|ROM|memROM~3_combout\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (!\CPU|FD|ROM|memROM~5_combout\ & \CPU|FD|ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \DEC|decodificadorControle[15]~0_combout\);

-- Location: MLABCELL_X45_Y3_N51
\DEC|decodificadorControle[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|decodificadorControle[13]~1_combout\ = ( \DEC|decodificadorControle[15]~0_combout\ & ( (!\CPU|FD|ROM|memROM~2_combout\ & \CPU|FD|ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~6_combout\,
	dataf => \DEC|ALT_INV_decodificadorControle[15]~0_combout\,
	combout => \DEC|decodificadorControle[13]~1_combout\);

-- Location: FF_X45_Y3_N50
\REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~178_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|DOUT\(1));

-- Location: FF_X45_Y3_N44
\REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~177_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|DOUT\(2));

-- Location: FF_X45_Y3_N53
\REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~175_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|DOUT\(0));

-- Location: MLABCELL_X45_Y3_N45
\REG0|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG0|DOUT[3]~feeder_combout\ = ( \CPU|FD|bancoReg|registrador~176_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~176_combout\,
	combout => \REG0|DOUT[3]~feeder_combout\);

-- Location: FF_X45_Y3_N47
\REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG0|DOUT[3]~feeder_combout\,
	ena => \DEC|decodificadorControle[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG0|DOUT\(3));

-- Location: MLABCELL_X45_Y3_N39
\HEX_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[0]~0_combout\ = ( \REG0|DOUT\(3) & ( (\REG0|DOUT\(0) & (!\REG0|DOUT\(1) $ (!\REG0|DOUT\(2)))) ) ) # ( !\REG0|DOUT\(3) & ( (!\REG0|DOUT\(1) & (!\REG0|DOUT\(2) $ (!\REG0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000000000101101000001010101000000000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|ALT_INV_DOUT\(1),
	datac => \REG0|ALT_INV_DOUT\(2),
	datad => \REG0|ALT_INV_DOUT\(0),
	datae => \REG0|ALT_INV_DOUT\(3),
	combout => \HEX_0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y3_N57
\HEX_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[1]~1_combout\ = ( \REG0|DOUT\(1) & ( (!\REG0|DOUT\(0) & (\REG0|DOUT\(2))) # (\REG0|DOUT\(0) & ((\REG0|DOUT\(3)))) ) ) # ( !\REG0|DOUT\(1) & ( (\REG0|DOUT\(2) & (!\REG0|DOUT\(0) $ (!\REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|ALT_INV_DOUT\(0),
	datac => \REG0|ALT_INV_DOUT\(2),
	datad => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N24
\HEX_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[2]~2_combout\ = ( \REG0|DOUT\(1) & ( (!\REG0|DOUT\(2) & (!\REG0|DOUT\(0) & !\REG0|DOUT\(3))) # (\REG0|DOUT\(2) & ((\REG0|DOUT\(3)))) ) ) # ( !\REG0|DOUT\(1) & ( (\REG0|DOUT\(2) & (!\REG0|DOUT\(0) & \REG0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG0|ALT_INV_DOUT\(2),
	datac => \REG0|ALT_INV_DOUT\(0),
	datad => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N33
\HEX_0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[3]~3_combout\ = ( \REG0|DOUT\(1) & ( (!\REG0|DOUT\(0) & (!\REG0|DOUT\(2) & \REG0|DOUT\(3))) # (\REG0|DOUT\(0) & (\REG0|DOUT\(2))) ) ) # ( !\REG0|DOUT\(1) & ( (!\REG0|DOUT\(3) & (!\REG0|DOUT\(0) $ (!\REG0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|ALT_INV_DOUT\(0),
	datac => \REG0|ALT_INV_DOUT\(2),
	datad => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N15
\HEX_0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[4]~4_combout\ = ( \REG0|DOUT\(1) & ( (\REG0|DOUT\(0) & !\REG0|DOUT\(3)) ) ) # ( !\REG0|DOUT\(1) & ( (!\REG0|DOUT\(2) & (\REG0|DOUT\(0))) # (\REG0|DOUT\(2) & ((!\REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|ALT_INV_DOUT\(0),
	datac => \REG0|ALT_INV_DOUT\(2),
	datad => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y3_N12
\HEX_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[5]~5_combout\ = ( \REG0|DOUT\(1) & ( (!\REG0|DOUT\(3) & ((!\REG0|DOUT\(2)) # (\REG0|DOUT\(0)))) ) ) # ( !\REG0|DOUT\(1) & ( (\REG0|DOUT\(0) & (!\REG0|DOUT\(2) $ (\REG0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG0|ALT_INV_DOUT\(2),
	datac => \REG0|ALT_INV_DOUT\(0),
	datad => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N27
\HEX_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_0|rascSaida7seg[6]~6_combout\ = ( \REG0|DOUT\(1) & ( (\REG0|DOUT\(0) & (\REG0|DOUT\(2) & !\REG0|DOUT\(3))) ) ) # ( !\REG0|DOUT\(1) & ( (!\REG0|DOUT\(2) & ((!\REG0|DOUT\(3)))) # (\REG0|DOUT\(2) & (!\REG0|DOUT\(0) & \REG0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG0|ALT_INV_DOUT\(0),
	datab => \REG0|ALT_INV_DOUT\(2),
	datac => \REG0|ALT_INV_DOUT\(3),
	dataf => \REG0|ALT_INV_DOUT\(1),
	combout => \HEX_0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X45_Y3_N21
\DEC|decodificadorControle[14]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|decodificadorControle[14]~2_combout\ = ( \DEC|decodificadorControle[15]~0_combout\ & ( (\CPU|FD|ROM|memROM~2_combout\ & !\CPU|FD|ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|FD|ROM|ALT_INV_memROM~6_combout\,
	dataf => \DEC|ALT_INV_decodificadorControle[15]~0_combout\,
	combout => \DEC|decodificadorControle[14]~2_combout\);

-- Location: FF_X45_Y3_N37
\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~178_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

-- Location: FF_X45_Y3_N2
\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~176_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

-- Location: FF_X45_Y3_N23
\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~175_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

-- Location: FF_X45_Y3_N8
\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~177_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

-- Location: MLABCELL_X45_Y3_N18
\HEX_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[0]~0_combout\ = ( \REG1|DOUT\(2) & ( (!\REG1|DOUT\(1) & (!\REG1|DOUT\(3) $ (\REG1|DOUT\(0)))) ) ) # ( !\REG1|DOUT\(2) & ( (\REG1|DOUT\(0) & (!\REG1|DOUT\(1) $ (\REG1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(3),
	datad => \REG1|ALT_INV_DOUT\(0),
	dataf => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y3_N3
\HEX_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[1]~1_combout\ = (!\REG1|DOUT\(1) & (\REG1|DOUT\(2) & (!\REG1|DOUT\(0) $ (!\REG1|DOUT\(3))))) # (\REG1|DOUT\(1) & ((!\REG1|DOUT\(0) & (\REG1|DOUT\(2))) # (\REG1|DOUT\(0) & ((\REG1|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|ALT_INV_DOUT\(0),
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(2),
	datad => \REG1|ALT_INV_DOUT\(3),
	combout => \HEX_1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y3_N9
\HEX_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[2]~2_combout\ = ( \REG1|DOUT\(2) & ( (\REG1|DOUT\(3) & ((!\REG1|DOUT\(0)) # (\REG1|DOUT\(1)))) ) ) # ( !\REG1|DOUT\(2) & ( (!\REG1|DOUT\(3) & (\REG1|DOUT\(1) & !\REG1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|ALT_INV_DOUT\(3),
	datab => \REG1|ALT_INV_DOUT\(1),
	datad => \REG1|ALT_INV_DOUT\(0),
	dataf => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y3_N30
\HEX_1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[3]~3_combout\ = ( \REG1|DOUT\(2) & ( (!\REG1|DOUT\(1) & (!\REG1|DOUT\(0) & !\REG1|DOUT\(3))) # (\REG1|DOUT\(1) & (\REG1|DOUT\(0))) ) ) # ( !\REG1|DOUT\(2) & ( (!\REG1|DOUT\(1) & (\REG1|DOUT\(0) & !\REG1|DOUT\(3))) # (\REG1|DOUT\(1) & 
-- (!\REG1|DOUT\(0) & \REG1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(0),
	datad => \REG1|ALT_INV_DOUT\(3),
	dataf => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y3_N0
\HEX_1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[4]~4_combout\ = ( \REG1|DOUT\(2) & ( (!\REG1|DOUT\(3) & ((!\REG1|DOUT\(1)) # (\REG1|DOUT\(0)))) ) ) # ( !\REG1|DOUT\(2) & ( (\REG1|DOUT\(0) & ((!\REG1|DOUT\(1)) # (!\REG1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(0),
	datad => \REG1|ALT_INV_DOUT\(3),
	dataf => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y3_N6
\HEX_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[5]~5_combout\ = (!\REG1|DOUT\(1) & (\REG1|DOUT\(0) & (!\REG1|DOUT\(3) $ (\REG1|DOUT\(2))))) # (\REG1|DOUT\(1) & (!\REG1|DOUT\(3) & ((!\REG1|DOUT\(2)) # (\REG1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000110001010100000011000101010000001100010101000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG1|ALT_INV_DOUT\(3),
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(0),
	datad => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y3_N54
\HEX_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_1|rascSaida7seg[6]~6_combout\ = ( \REG1|DOUT\(2) & ( (!\REG1|DOUT\(1) & (!\REG1|DOUT\(0) & \REG1|DOUT\(3))) # (\REG1|DOUT\(1) & (\REG1|DOUT\(0) & !\REG1|DOUT\(3))) ) ) # ( !\REG1|DOUT\(2) & ( (!\REG1|DOUT\(1) & !\REG1|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG1|ALT_INV_DOUT\(1),
	datac => \REG1|ALT_INV_DOUT\(0),
	datad => \REG1|ALT_INV_DOUT\(3),
	dataf => \REG1|ALT_INV_DOUT\(2),
	combout => \HEX_1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y3_N3
\DEC|decodificadorControle[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|decodificadorControle[15]~3_combout\ = ( \DEC|decodificadorControle[15]~0_combout\ & ( (\CPU|FD|ROM|memROM~2_combout\ & \CPU|FD|ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~6_combout\,
	dataf => \DEC|ALT_INV_decodificadorControle[15]~0_combout\,
	combout => \DEC|decodificadorControle[15]~3_combout\);

-- Location: FF_X42_Y3_N5
\REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~178_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG2|DOUT\(1));

-- Location: FF_X42_Y3_N52
\REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~176_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG2|DOUT\(3));

-- Location: FF_X42_Y3_N8
\REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~175_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG2|DOUT\(0));

-- Location: FF_X42_Y3_N23
\REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|bancoReg|registrador~177_combout\,
	sload => VCC,
	ena => \DEC|decodificadorControle[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG2|DOUT\(2));

-- Location: MLABCELL_X42_Y3_N15
\HEX_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[0]~0_combout\ = (!\REG2|DOUT\(3) & (!\REG2|DOUT\(1) & (!\REG2|DOUT\(0) $ (!\REG2|DOUT\(2))))) # (\REG2|DOUT\(3) & (\REG2|DOUT\(0) & (!\REG2|DOUT\(1) $ (!\REG2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110000010000010011000001000001001100000100000100110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datab => \REG2|ALT_INV_DOUT\(3),
	datac => \REG2|ALT_INV_DOUT\(0),
	datad => \REG2|ALT_INV_DOUT\(2),
	combout => \HEX_2|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y3_N6
\HEX_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[1]~1_combout\ = ( \REG2|DOUT\(1) & ( (!\REG2|DOUT\(0) & ((\REG2|DOUT\(2)))) # (\REG2|DOUT\(0) & (\REG2|DOUT\(3))) ) ) # ( !\REG2|DOUT\(1) & ( (\REG2|DOUT\(2) & (!\REG2|DOUT\(3) $ (!\REG2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG2|ALT_INV_DOUT\(3),
	datac => \REG2|ALT_INV_DOUT\(2),
	datad => \REG2|ALT_INV_DOUT\(0),
	dataf => \REG2|ALT_INV_DOUT\(1),
	combout => \HEX_2|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y3_N24
\HEX_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[2]~2_combout\ = ( \REG2|DOUT\(0) & ( (\REG2|DOUT\(1) & (\REG2|DOUT\(3) & \REG2|DOUT\(2))) ) ) # ( !\REG2|DOUT\(0) & ( (!\REG2|DOUT\(3) & (\REG2|DOUT\(1) & !\REG2|DOUT\(2))) # (\REG2|DOUT\(3) & ((\REG2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datab => \REG2|ALT_INV_DOUT\(3),
	datac => \REG2|ALT_INV_DOUT\(2),
	dataf => \REG2|ALT_INV_DOUT\(0),
	combout => \HEX_2|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y3_N27
\HEX_2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[3]~3_combout\ = (!\REG2|DOUT\(1) & (!\REG2|DOUT\(3) & (!\REG2|DOUT\(0) $ (!\REG2|DOUT\(2))))) # (\REG2|DOUT\(1) & ((!\REG2|DOUT\(0) & (\REG2|DOUT\(3) & !\REG2|DOUT\(2))) # (\REG2|DOUT\(0) & ((\REG2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000101000110001000010100011000100001010001100010000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datab => \REG2|ALT_INV_DOUT\(3),
	datac => \REG2|ALT_INV_DOUT\(0),
	datad => \REG2|ALT_INV_DOUT\(2),
	combout => \HEX_2|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y3_N45
\HEX_2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[4]~4_combout\ = ( \REG2|DOUT\(0) & ( (!\REG2|DOUT\(3)) # ((!\REG2|DOUT\(1) & !\REG2|DOUT\(2))) ) ) # ( !\REG2|DOUT\(0) & ( (!\REG2|DOUT\(1) & (!\REG2|DOUT\(3) & \REG2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datac => \REG2|ALT_INV_DOUT\(3),
	datad => \REG2|ALT_INV_DOUT\(2),
	dataf => \REG2|ALT_INV_DOUT\(0),
	combout => \HEX_2|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y3_N12
\HEX_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[5]~5_combout\ = ( \REG2|DOUT\(0) & ( !\REG2|DOUT\(3) $ (((!\REG2|DOUT\(1) & \REG2|DOUT\(2)))) ) ) # ( !\REG2|DOUT\(0) & ( (\REG2|DOUT\(1) & (!\REG2|DOUT\(3) & !\REG2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datab => \REG2|ALT_INV_DOUT\(3),
	datac => \REG2|ALT_INV_DOUT\(2),
	dataf => \REG2|ALT_INV_DOUT\(0),
	combout => \HEX_2|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y3_N30
\HEX_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_2|rascSaida7seg[6]~6_combout\ = ( \REG2|DOUT\(0) & ( (!\REG2|DOUT\(3) & (!\REG2|DOUT\(1) $ (\REG2|DOUT\(2)))) ) ) # ( !\REG2|DOUT\(0) & ( (!\REG2|DOUT\(1) & (!\REG2|DOUT\(2) $ (\REG2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG2|ALT_INV_DOUT\(1),
	datac => \REG2|ALT_INV_DOUT\(2),
	datad => \REG2|ALT_INV_DOUT\(3),
	dataf => \REG2|ALT_INV_DOUT\(0),
	combout => \HEX_2|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y4_N12
\DEC|decodificadorControle[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC|decodificadorControle[11]~4_combout\ = ( !\CPU|FD|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (\CPU|FD|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \DEC|decodificadorControle[11]~4_combout\);
END structure;


