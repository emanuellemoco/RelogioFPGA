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

-- DATE "10/12/2020 21:18:53"

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
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	decodeR : OUT std_logic_vector(10 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- decodeR[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeR[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_decodeR : std_logic_vector(10 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~37_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~38\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|FD|MuxProxPC|saida_MUX[9]~2_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~148_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~134_q\ : std_logic;
SIGNAL \CPU|FD|endRegA[0]~1_combout\ : std_logic;
SIGNAL \CPU|FD|endRegA[1]~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~143_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~147_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~29_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~146_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~13_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~145_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~21_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~142_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~30_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~14_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~22_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~144_combout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~133_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|registrador~141_combout\ : std_logic;
SIGNAL \CPU|FD|MuxProxPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|UC|selMuxProxPC~0_combout\ : std_logic;
SIGNAL \CPU|FD|MuxProxPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~2\ : std_logic;
SIGNAL \CPU|FD|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|FD|ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|FD|PC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|FD|ALT_INV_endRegA[0]~1_combout\ : std_logic;
SIGNAL \CPU|FD|muxULA_Imediato|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \CPU|UC|ALT_INV_selMuxProxPC~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~144_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~143_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~134_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~142_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~141_combout\ : std_logic;
SIGNAL \CPU|FD|ALT_INV_endRegA[1]~0_combout\ : std_logic;
SIGNAL \CPU|FD|bancoReg|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \CPU|FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|FD|PC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CPU|FD|somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|FD|somaUm|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
decodeR <= ww_decodeR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[2]~DUPLICATE_q\;
\CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|FD|PC|DOUT[0]~DUPLICATE_q\;
\CPU|FD|ROM|ALT_INV_memROM~5_combout\ <= NOT \CPU|FD|ROM|memROM~5_combout\;
\CPU|FD|ALT_INV_endRegA[0]~1_combout\ <= NOT \CPU|FD|endRegA[0]~1_combout\;
\CPU|FD|muxULA_Imediato|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\;
\CPU|FD|ROM|ALT_INV_memROM~4_combout\ <= NOT \CPU|FD|ROM|memROM~4_combout\;
\CPU|UC|ALT_INV_selMuxProxPC~0_combout\ <= NOT \CPU|UC|selMuxProxPC~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~144_combout\ <= NOT \CPU|FD|bancoReg|registrador~144_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~30_q\ <= NOT \CPU|FD|bancoReg|registrador~30_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~22_q\ <= NOT \CPU|FD|bancoReg|registrador~22_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~14_q\ <= NOT \CPU|FD|bancoReg|registrador~14_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~143_combout\ <= NOT \CPU|FD|bancoReg|registrador~143_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~134_q\ <= NOT \CPU|FD|bancoReg|registrador~134_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~142_combout\ <= NOT \CPU|FD|bancoReg|registrador~142_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~29_q\ <= NOT \CPU|FD|bancoReg|registrador~29_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~21_q\ <= NOT \CPU|FD|bancoReg|registrador~21_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~13_q\ <= NOT \CPU|FD|bancoReg|registrador~13_q\;
\CPU|FD|bancoReg|ALT_INV_registrador~141_combout\ <= NOT \CPU|FD|bancoReg|registrador~141_combout\;
\CPU|FD|ALT_INV_endRegA[1]~0_combout\ <= NOT \CPU|FD|endRegA[1]~0_combout\;
\CPU|FD|bancoReg|ALT_INV_registrador~133_q\ <= NOT \CPU|FD|bancoReg|registrador~133_q\;
\CPU|FD|ROM|ALT_INV_memROM~3_combout\ <= NOT \CPU|FD|ROM|memROM~3_combout\;
\CPU|FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \CPU|FD|ROM|memROM~2_combout\;
\CPU|FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \CPU|FD|ROM|memROM~0_combout\;
\CPU|FD|PC|ALT_INV_DOUT\(4) <= NOT \CPU|FD|PC|DOUT\(4);
\CPU|FD|PC|ALT_INV_DOUT\(5) <= NOT \CPU|FD|PC|DOUT\(5);
\CPU|FD|PC|ALT_INV_DOUT\(6) <= NOT \CPU|FD|PC|DOUT\(6);
\CPU|FD|PC|ALT_INV_DOUT\(7) <= NOT \CPU|FD|PC|DOUT\(7);
\CPU|FD|PC|ALT_INV_DOUT\(8) <= NOT \CPU|FD|PC|DOUT\(8);
\CPU|FD|PC|ALT_INV_DOUT\(9) <= NOT \CPU|FD|PC|DOUT\(9);
\CPU|FD|PC|ALT_INV_DOUT\(3) <= NOT \CPU|FD|PC|DOUT\(3);
\CPU|FD|PC|ALT_INV_DOUT\(2) <= NOT \CPU|FD|PC|DOUT\(2);
\CPU|FD|PC|ALT_INV_DOUT\(1) <= NOT \CPU|FD|PC|DOUT\(1);
\CPU|FD|PC|ALT_INV_DOUT\(0) <= NOT \CPU|FD|PC|DOUT\(0);
\CPU|FD|somaUm|ALT_INV_Add0~17_sumout\ <= NOT \CPU|FD|somaUm|Add0~17_sumout\;
\CPU|FD|somaUm|ALT_INV_Add0~9_sumout\ <= NOT \CPU|FD|somaUm|Add0~9_sumout\;
\CPU|FD|somaUm|ALT_INV_Add0~1_sumout\ <= NOT \CPU|FD|somaUm|Add0~1_sumout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X8_Y45_N59
\decodeR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(0));

-- Location: IOOBUF_X8_Y45_N42
\decodeR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(1));

-- Location: IOOBUF_X34_Y45_N53
\decodeR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodeR(2));

-- Location: IOOBUF_X54_Y19_N5
\decodeR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodeR(3));

-- Location: IOOBUF_X54_Y18_N79
\decodeR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodeR(4));

-- Location: IOOBUF_X10_Y45_N2
\decodeR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(5));

-- Location: IOOBUF_X43_Y45_N19
\decodeR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodeR(6));

-- Location: IOOBUF_X50_Y45_N2
\decodeR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodeR(7));

-- Location: IOOBUF_X12_Y45_N53
\decodeR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(8));

-- Location: IOOBUF_X8_Y45_N93
\decodeR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(9));

-- Location: IOOBUF_X12_Y45_N2
\decodeR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_decodeR(10));

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

-- Location: LABCELL_X2_Y31_N30
\CPU|FD|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~1_sumout\ = SUM(( \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|FD|somaUm|Add0~2\ = CARRY(( \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|FD|somaUm|Add0~1_sumout\,
	cout => \CPU|FD|somaUm|Add0~2\);

-- Location: LABCELL_X2_Y31_N33
\CPU|FD|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~5_sumout\ = SUM(( \CPU|FD|PC|DOUT\(1) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~2\ ))
-- \CPU|FD|somaUm|Add0~6\ = CARRY(( \CPU|FD|PC|DOUT\(1) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT\(1),
	cin => \CPU|FD|somaUm|Add0~2\,
	sumout => \CPU|FD|somaUm|Add0~5_sumout\,
	cout => \CPU|FD|somaUm|Add0~6\);

-- Location: LABCELL_X2_Y31_N36
\CPU|FD|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~9_sumout\ = SUM(( \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|FD|somaUm|Add0~6\ ))
-- \CPU|FD|somaUm|Add0~10\ = CARRY(( \CPU|FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|FD|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|FD|somaUm|Add0~6\,
	sumout => \CPU|FD|somaUm|Add0~9_sumout\,
	cout => \CPU|FD|somaUm|Add0~10\);

-- Location: FF_X1_Y31_N17
\CPU|FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|MuxProxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(2));

-- Location: LABCELL_X2_Y31_N39
\CPU|FD|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~13_sumout\ = SUM(( \CPU|FD|PC|DOUT\(3) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~10\ ))
-- \CPU|FD|somaUm|Add0~14\ = CARRY(( \CPU|FD|PC|DOUT\(3) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	cin => \CPU|FD|somaUm|Add0~10\,
	sumout => \CPU|FD|somaUm|Add0~13_sumout\,
	cout => \CPU|FD|somaUm|Add0~14\);

-- Location: LABCELL_X2_Y31_N42
\CPU|FD|somaUm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~37_sumout\ = SUM(( \CPU|FD|PC|DOUT\(4) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~14\ ))
-- \CPU|FD|somaUm|Add0~38\ = CARRY(( \CPU|FD|PC|DOUT\(4) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(4),
	cin => \CPU|FD|somaUm|Add0~14\,
	sumout => \CPU|FD|somaUm|Add0~37_sumout\,
	cout => \CPU|FD|somaUm|Add0~38\);

-- Location: FF_X2_Y31_N44
\CPU|FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(4));

-- Location: LABCELL_X2_Y31_N45
\CPU|FD|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~33_sumout\ = SUM(( \CPU|FD|PC|DOUT\(5) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~38\ ))
-- \CPU|FD|somaUm|Add0~34\ = CARRY(( \CPU|FD|PC|DOUT\(5) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(5),
	cin => \CPU|FD|somaUm|Add0~38\,
	sumout => \CPU|FD|somaUm|Add0~33_sumout\,
	cout => \CPU|FD|somaUm|Add0~34\);

-- Location: FF_X2_Y31_N47
\CPU|FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(5));

-- Location: LABCELL_X2_Y31_N48
\CPU|FD|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~29_sumout\ = SUM(( \CPU|FD|PC|DOUT\(6) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~34\ ))
-- \CPU|FD|somaUm|Add0~30\ = CARRY(( \CPU|FD|PC|DOUT\(6) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(6),
	cin => \CPU|FD|somaUm|Add0~34\,
	sumout => \CPU|FD|somaUm|Add0~29_sumout\,
	cout => \CPU|FD|somaUm|Add0~30\);

-- Location: FF_X2_Y31_N50
\CPU|FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(6));

-- Location: LABCELL_X2_Y31_N51
\CPU|FD|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~25_sumout\ = SUM(( \CPU|FD|PC|DOUT\(7) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~30\ ))
-- \CPU|FD|somaUm|Add0~26\ = CARRY(( \CPU|FD|PC|DOUT\(7) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(7),
	cin => \CPU|FD|somaUm|Add0~30\,
	sumout => \CPU|FD|somaUm|Add0~25_sumout\,
	cout => \CPU|FD|somaUm|Add0~26\);

-- Location: FF_X2_Y31_N53
\CPU|FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(7));

-- Location: LABCELL_X2_Y31_N54
\CPU|FD|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~21_sumout\ = SUM(( \CPU|FD|PC|DOUT\(8) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~26\ ))
-- \CPU|FD|somaUm|Add0~22\ = CARRY(( \CPU|FD|PC|DOUT\(8) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|PC|ALT_INV_DOUT\(8),
	cin => \CPU|FD|somaUm|Add0~26\,
	sumout => \CPU|FD|somaUm|Add0~21_sumout\,
	cout => \CPU|FD|somaUm|Add0~22\);

-- Location: FF_X2_Y31_N56
\CPU|FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(8));

-- Location: LABCELL_X2_Y31_N57
\CPU|FD|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|somaUm|Add0~17_sumout\ = SUM(( \CPU|FD|PC|DOUT\(9) ) + ( GND ) + ( \CPU|FD|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT\(9),
	cin => \CPU|FD|somaUm|Add0~22\,
	sumout => \CPU|FD|somaUm|Add0~17_sumout\);

-- Location: FF_X1_Y31_N29
\CPU|FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(0));

-- Location: LABCELL_X1_Y31_N12
\CPU|FD|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~4_combout\ = ( !\CPU|FD|PC|DOUT\(3) & ( (!\CPU|FD|PC|DOUT\(2) & (!\CPU|FD|PC|DOUT\(0) $ (!\CPU|FD|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(0),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(3),
	combout => \CPU|FD|ROM|memROM~4_combout\);

-- Location: LABCELL_X1_Y31_N3
\CPU|FD|MuxProxPC|saida_MUX[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|MuxProxPC|saida_MUX[9]~2_combout\ = ( \CPU|FD|ROM|memROM~4_combout\ & ( (!\CPU|UC|selMuxProxPC~0_combout\ & ((\CPU|FD|somaUm|Add0~17_sumout\))) # (\CPU|UC|selMuxProxPC~0_combout\ & (\CPU|FD|ROM|memROM~0_combout\)) ) ) # ( 
-- !\CPU|FD|ROM|memROM~4_combout\ & ( (\CPU|FD|somaUm|Add0~17_sumout\ & !\CPU|UC|selMuxProxPC~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|FD|somaUm|ALT_INV_Add0~17_sumout\,
	datad => \CPU|UC|ALT_INV_selMuxProxPC~0_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|FD|MuxProxPC|saida_MUX[9]~2_combout\);

-- Location: FF_X1_Y31_N4
\CPU|FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|MuxProxPC|saida_MUX[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(9));

-- Location: LABCELL_X2_Y31_N21
\CPU|FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~0_combout\ = ( !\CPU|FD|PC|DOUT\(5) & ( !\CPU|FD|PC|DOUT\(7) & ( (!\CPU|FD|PC|DOUT\(8) & (!\CPU|FD|PC|DOUT\(9) & (!\CPU|FD|PC|DOUT\(4) & !\CPU|FD|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(8),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(9),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(4),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(6),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(7),
	combout => \CPU|FD|ROM|memROM~0_combout\);

-- Location: LABCELL_X1_Y31_N24
\CPU|FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~1_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(2) & (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|ROM|memROM~1_combout\);

-- Location: LABCELL_X1_Y31_N48
\CPU|FD|bancoReg|registrador~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~148_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(3) & (!\CPU|FD|PC|DOUT\(2) & (\CPU|FD|PC|DOUT\(1) & !\CPU|FD|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(1),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~148_combout\);

-- Location: FF_X2_Y31_N20
\CPU|FD|bancoReg|registrador~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|ROM|memROM~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~134_q\);

-- Location: LABCELL_X2_Y31_N27
\CPU|FD|endRegA[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|endRegA[0]~1_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datad => \CPU|FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|endRegA[0]~1_combout\);

-- Location: LABCELL_X1_Y31_N39
\CPU|FD|endRegA[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|endRegA[1]~0_combout\ = ( \CPU|FD|PC|DOUT\(0) & ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(2) & !\CPU|FD|PC|DOUT\(3)) ) ) ) # ( !\CPU|FD|PC|DOUT\(0) & ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(1) & (!\CPU|FD|PC|DOUT\(2) & 
-- !\CPU|FD|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(1),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|endRegA[1]~0_combout\);

-- Location: LABCELL_X2_Y31_N9
\CPU|FD|bancoReg|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~143_combout\ = ( \CPU|FD|endRegA[0]~1_combout\ & ( \CPU|FD|endRegA[1]~0_combout\ & ( \CPU|FD|bancoReg|registrador~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~134_q\,
	datae => \CPU|FD|ALT_INV_endRegA[0]~1_combout\,
	dataf => \CPU|FD|ALT_INV_endRegA[1]~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~143_combout\);

-- Location: LABCELL_X1_Y31_N21
\CPU|FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~2_combout\ = ( \CPU|FD|PC|DOUT\(1) & ( !\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|FD|PC|DOUT\(3) & (!\CPU|FD|PC|DOUT\(2) & \CPU|FD|ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datad => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|FD|ROM|memROM~2_combout\);

-- Location: LABCELL_X1_Y31_N0
\CPU|FD|bancoReg|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~147_combout\ = ( \CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|FD|ROM|memROM~0_combout\ & (!\CPU|FD|PC|DOUT\(2) & (!\CPU|FD|PC|DOUT\(3) & !\CPU|FD|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \CPU|FD|bancoReg|registrador~147_combout\);

-- Location: FF_X1_Y31_N10
\CPU|FD|bancoReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~29_q\);

-- Location: LABCELL_X1_Y31_N42
\CPU|FD|bancoReg|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~146_combout\ = ( \CPU|FD|PC|DOUT\(3) ) # ( !\CPU|FD|PC|DOUT\(3) & ( (!\CPU|FD|ROM|memROM~0_combout\) # (\CPU|FD|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(3),
	combout => \CPU|FD|bancoReg|registrador~146_combout\);

-- Location: FF_X1_Y31_N43
\CPU|FD|bancoReg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~13_q\);

-- Location: LABCELL_X1_Y31_N57
\CPU|FD|bancoReg|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~145_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( (!\CPU|FD|PC|DOUT\(3) & (!\CPU|FD|PC|DOUT\(2) & (!\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|FD|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datab => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datac => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~145_combout\);

-- Location: FF_X2_Y31_N26
\CPU|FD|bancoReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~21_q\);

-- Location: LABCELL_X2_Y31_N24
\CPU|FD|bancoReg|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~142_combout\ = ( \CPU|FD|endRegA[1]~0_combout\ & ( (\CPU|FD|bancoReg|registrador~29_q\ & !\CPU|FD|endRegA[0]~1_combout\) ) ) # ( !\CPU|FD|endRegA[1]~0_combout\ & ( (!\CPU|FD|endRegA[0]~1_combout\ & 
-- (\CPU|FD|bancoReg|registrador~13_q\)) # (\CPU|FD|endRegA[0]~1_combout\ & ((\CPU|FD|bancoReg|registrador~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~13_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~29_q\,
	datac => \CPU|FD|ALT_INV_endRegA[0]~1_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~21_q\,
	dataf => \CPU|FD|ALT_INV_endRegA[1]~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~142_combout\);

-- Location: FF_X1_Y31_N37
\CPU|FD|bancoReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|ROM|memROM~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~30_q\);

-- Location: FF_X1_Y31_N46
\CPU|FD|bancoReg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|ROM|memROM~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~14_q\);

-- Location: FF_X2_Y31_N14
\CPU|FD|bancoReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|ROM|memROM~1_combout\,
	sload => VCC,
	ena => \CPU|FD|bancoReg|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~22_q\);

-- Location: LABCELL_X2_Y31_N12
\CPU|FD|bancoReg|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~144_combout\ = ( \CPU|FD|endRegA[0]~1_combout\ & ( (!\CPU|FD|endRegA[1]~0_combout\ & \CPU|FD|bancoReg|registrador~22_q\) ) ) # ( !\CPU|FD|endRegA[0]~1_combout\ & ( (!\CPU|FD|endRegA[1]~0_combout\ & 
-- (\CPU|FD|bancoReg|registrador~14_q\)) # (\CPU|FD|endRegA[1]~0_combout\ & ((\CPU|FD|bancoReg|registrador~30_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|bancoReg|ALT_INV_registrador~14_q\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~30_q\,
	datac => \CPU|FD|ALT_INV_endRegA[1]~0_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~22_q\,
	dataf => \CPU|FD|ALT_INV_endRegA[0]~1_combout\,
	combout => \CPU|FD|bancoReg|registrador~144_combout\);

-- Location: LABCELL_X2_Y31_N15
\CPU|FD|muxULA_Imediato|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\ = ( \CPU|FD|bancoReg|registrador~144_combout\ & ( !\CPU|FD|bancoReg|registrador~30_q\ $ (((!\CPU|FD|ROM|memROM~3_combout\) # (\CPU|FD|bancoReg|registrador~143_combout\))) ) ) # ( 
-- !\CPU|FD|bancoReg|registrador~144_combout\ & ( !\CPU|FD|bancoReg|registrador~30_q\ $ (((\CPU|FD|bancoReg|registrador~143_combout\ & \CPU|FD|ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000011110011001100001100110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~30_q\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~143_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~144_combout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X2_Y31_N0
\CPU|FD|muxULA_Imediato|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\ = ( \CPU|FD|ROM|memROM~5_combout\ & ( \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\ & ( (!\CPU|FD|ROM|memROM~3_combout\ & ((!\CPU|FD|ROM|memROM~2_combout\) # (!\CPU|FD|bancoReg|registrador~29_q\ $ 
-- (\CPU|FD|bancoReg|registrador~142_combout\)))) ) ) ) # ( !\CPU|FD|ROM|memROM~5_combout\ & ( \CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\ & ( (\CPU|FD|ROM|memROM~2_combout\ & (!\CPU|FD|ROM|memROM~3_combout\ & (!\CPU|FD|bancoReg|registrador~29_q\ $ 
-- (\CPU|FD|bancoReg|registrador~142_combout\)))) ) ) ) # ( \CPU|FD|ROM|memROM~5_combout\ & ( !\CPU|FD|muxULA_Imediato|saida_MUX[0]~0_combout\ & ( (!\CPU|FD|ROM|memROM~2_combout\ & !\CPU|FD|ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000001000001000000001110101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|FD|bancoReg|ALT_INV_registrador~29_q\,
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~142_combout\,
	datad => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datae => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|FD|muxULA_Imediato|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\);

-- Location: FF_X2_Y31_N1
\CPU|FD|bancoReg|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|muxULA_Imediato|saida_MUX[0]~1_combout\,
	ena => \CPU|FD|bancoReg|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|bancoReg|registrador~133_q\);

-- Location: LABCELL_X1_Y31_N51
\CPU|FD|bancoReg|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|bancoReg|registrador~141_combout\ = ( \CPU|FD|endRegA[1]~0_combout\ & ( (\CPU|FD|bancoReg|registrador~133_q\ & \CPU|FD|endRegA[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|bancoReg|ALT_INV_registrador~133_q\,
	datad => \CPU|FD|ALT_INV_endRegA[0]~1_combout\,
	dataf => \CPU|FD|ALT_INV_endRegA[1]~0_combout\,
	combout => \CPU|FD|bancoReg|registrador~141_combout\);

-- Location: LABCELL_X1_Y31_N15
\CPU|FD|MuxProxPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|MuxProxPC|saida_MUX[2]~1_combout\ = ( \CPU|FD|bancoReg|registrador~141_combout\ & ( \CPU|FD|somaUm|Add0~9_sumout\ ) ) # ( !\CPU|FD|bancoReg|registrador~141_combout\ & ( (\CPU|FD|somaUm|Add0~9_sumout\ & ((!\CPU|FD|ROM|memROM~3_combout\) # 
-- (\CPU|FD|bancoReg|registrador~143_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datac => \CPU|FD|somaUm|ALT_INV_Add0~9_sumout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~143_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~141_combout\,
	combout => \CPU|FD|MuxProxPC|saida_MUX[2]~1_combout\);

-- Location: FF_X1_Y31_N16
\CPU|FD|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|MuxProxPC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X2_Y31_N41
\CPU|FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|somaUm|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(3));

-- Location: LABCELL_X1_Y31_N33
\CPU|FD|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~3_combout\ = ( \CPU|FD|ROM|memROM~0_combout\ & ( !\CPU|FD|PC|DOUT\(2) & ( (!\CPU|FD|PC|DOUT\(3) & (\CPU|FD|PC|DOUT[0]~DUPLICATE_q\ & \CPU|FD|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(3),
	datac => \CPU|FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(1),
	datae => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(2),
	combout => \CPU|FD|ROM|memROM~3_combout\);

-- Location: LABCELL_X1_Y31_N54
\CPU|UC|selMuxProxPC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|UC|selMuxProxPC~0_combout\ = ( !\CPU|FD|bancoReg|registrador~141_combout\ & ( (\CPU|FD|ROM|memROM~3_combout\ & !\CPU|FD|bancoReg|registrador~143_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|FD|bancoReg|ALT_INV_registrador~143_combout\,
	dataf => \CPU|FD|bancoReg|ALT_INV_registrador~141_combout\,
	combout => \CPU|UC|selMuxProxPC~0_combout\);

-- Location: LABCELL_X1_Y31_N27
\CPU|FD|MuxProxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|MuxProxPC|saida_MUX[0]~0_combout\ = ( \CPU|FD|ROM|memROM~5_combout\ & ( (\CPU|UC|selMuxProxPC~0_combout\) # (\CPU|FD|somaUm|Add0~1_sumout\) ) ) # ( !\CPU|FD|ROM|memROM~5_combout\ & ( (\CPU|FD|somaUm|Add0~1_sumout\ & 
-- !\CPU|UC|selMuxProxPC~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|somaUm|ALT_INV_Add0~1_sumout\,
	datad => \CPU|UC|ALT_INV_selMuxProxPC~0_combout\,
	dataf => \CPU|FD|ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|FD|MuxProxPC|saida_MUX[0]~0_combout\);

-- Location: FF_X1_Y31_N28
\CPU|FD|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FD|MuxProxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X2_Y31_N8
\CPU|FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|FD|somaUm|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FD|PC|DOUT\(1));

-- Location: LABCELL_X1_Y31_N6
\CPU|FD|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FD|ROM|memROM~5_combout\ = ( \CPU|FD|PC|DOUT\(0) & ( !\CPU|FD|PC|DOUT\(3) & ( (!\CPU|FD|PC|DOUT\(1) & (\CPU|FD|ROM|memROM~0_combout\ & !\CPU|FD|PC|DOUT\(2))) ) ) ) # ( !\CPU|FD|PC|DOUT\(0) & ( !\CPU|FD|PC|DOUT\(3) & ( (\CPU|FD|ROM|memROM~0_combout\ & 
-- !\CPU|FD|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FD|PC|ALT_INV_DOUT\(1),
	datac => \CPU|FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|FD|PC|ALT_INV_DOUT\(2),
	datae => \CPU|FD|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|FD|PC|ALT_INV_DOUT\(3),
	combout => \CPU|FD|ROM|memROM~5_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X18_Y24_N0
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


