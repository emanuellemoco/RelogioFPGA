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

-- DATE "10/03/2020 18:59:00"

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

ENTITY 	CPU IS
    PORT (
	CLOCK_50 : IN std_logic;
	entrada_dados : IN std_logic_vector(9 DOWNTO 0);
	decodificadorEnd : OUT std_logic_vector(9 DOWNTO 0);
	saida_dados : OUT std_logic_vector(9 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- entrada_dados[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[8]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[9]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_entrada_dados : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_decodificadorEnd : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida_dados : std_logic_vector(9 DOWNTO 0);
SIGNAL \entrada_dados[0]~input_o\ : std_logic;
SIGNAL \entrada_dados[1]~input_o\ : std_logic;
SIGNAL \entrada_dados[2]~input_o\ : std_logic;
SIGNAL \entrada_dados[3]~input_o\ : std_logic;
SIGNAL \entrada_dados[4]~input_o\ : std_logic;
SIGNAL \entrada_dados[5]~input_o\ : std_logic;
SIGNAL \entrada_dados[6]~input_o\ : std_logic;
SIGNAL \entrada_dados[7]~input_o\ : std_logic;
SIGNAL \entrada_dados[8]~input_o\ : std_logic;
SIGNAL \entrada_dados[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~45_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|somaUm|Add0~26\ : std_logic;
SIGNAL \FD|somaUm|Add0~2\ : std_logic;
SIGNAL \FD|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~22\ : std_logic;
SIGNAL \FD|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~18\ : std_logic;
SIGNAL \FD|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~14\ : std_logic;
SIGNAL \FD|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~10\ : std_logic;
SIGNAL \FD|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~10_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~11_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|somaUm|Add0~46\ : std_logic;
SIGNAL \FD|somaUm|Add0~41_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~42\ : std_logic;
SIGNAL \FD|somaUm|Add0~37_sumout\ : std_logic;
SIGNAL \FD|somaUm|Add0~38\ : std_logic;
SIGNAL \FD|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~34\ : std_logic;
SIGNAL \FD|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~30\ : std_logic;
SIGNAL \FD|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~6_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~4_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~5_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \FD|muxULA_Imediato|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~8_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~9_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~181_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~45_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~179_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~25_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~178_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~15_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~180_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~35_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~175_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~2\ : std_logic;
SIGNAL \FD|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \FD|muxULA_Imediato|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~36_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~26_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~16_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~46_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~176_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~6\ : std_logic;
SIGNAL \FD|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \FD|muxULA_Imediato|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~47_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~27_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~37_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~17_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~177_combout\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~176_combout\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~175_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FD|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \FD|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_entrada_dados <= entrada_dados;
decodificadorEnd <= ww_decodificadorEnd;
saida_dados <= ww_saida_dados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[0]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[1]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[2]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[3]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[4]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[5]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[9]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[9]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[10]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[6]~DUPLICATE_q\;
\FD|ROM|ALT_INV_memROM~19_combout\ <= NOT \FD|ROM|memROM~19_combout\;
\FD|ROM|ALT_INV_memROM~18_combout\ <= NOT \FD|ROM|memROM~18_combout\;
\FD|ROM|ALT_INV_memROM~17_combout\ <= NOT \FD|ROM|memROM~17_combout\;
\FD|ROM|ALT_INV_memROM~16_combout\ <= NOT \FD|ROM|memROM~16_combout\;
\FD|ROM|ALT_INV_memROM~15_combout\ <= NOT \FD|ROM|memROM~15_combout\;
\FD|ROM|ALT_INV_memROM~14_combout\ <= NOT \FD|ROM|memROM~14_combout\;
\FD|ROM|ALT_INV_memROM~13_combout\ <= NOT \FD|ROM|memROM~13_combout\;
\FD|ROM|ALT_INV_memROM~12_combout\ <= NOT \FD|ROM|memROM~12_combout\;
\FD|ROM|ALT_INV_memROM~11_combout\ <= NOT \FD|ROM|memROM~11_combout\;
\FD|ROM|ALT_INV_memROM~10_combout\ <= NOT \FD|ROM|memROM~10_combout\;
\FD|bancoReg|ALT_INV_registrador~177_combout\ <= NOT \FD|bancoReg|registrador~177_combout\;
\FD|bancoReg|ALT_INV_registrador~47_q\ <= NOT \FD|bancoReg|registrador~47_q\;
\FD|bancoReg|ALT_INV_registrador~37_q\ <= NOT \FD|bancoReg|registrador~37_q\;
\FD|bancoReg|ALT_INV_registrador~27_q\ <= NOT \FD|bancoReg|registrador~27_q\;
\FD|bancoReg|ALT_INV_registrador~17_q\ <= NOT \FD|bancoReg|registrador~17_q\;
\FD|bancoReg|ALT_INV_registrador~176_combout\ <= NOT \FD|bancoReg|registrador~176_combout\;
\FD|bancoReg|ALT_INV_registrador~46_q\ <= NOT \FD|bancoReg|registrador~46_q\;
\FD|bancoReg|ALT_INV_registrador~36_q\ <= NOT \FD|bancoReg|registrador~36_q\;
\FD|bancoReg|ALT_INV_registrador~26_q\ <= NOT \FD|bancoReg|registrador~26_q\;
\FD|bancoReg|ALT_INV_registrador~16_q\ <= NOT \FD|bancoReg|registrador~16_q\;
\FD|bancoReg|ALT_INV_registrador~175_combout\ <= NOT \FD|bancoReg|registrador~175_combout\;
\FD|ROM|ALT_INV_memROM~9_combout\ <= NOT \FD|ROM|memROM~9_combout\;
\FD|ROM|ALT_INV_memROM~8_combout\ <= NOT \FD|ROM|memROM~8_combout\;
\FD|bancoReg|ALT_INV_registrador~45_q\ <= NOT \FD|bancoReg|registrador~45_q\;
\FD|bancoReg|ALT_INV_registrador~35_q\ <= NOT \FD|bancoReg|registrador~35_q\;
\FD|bancoReg|ALT_INV_registrador~25_q\ <= NOT \FD|bancoReg|registrador~25_q\;
\FD|bancoReg|ALT_INV_registrador~15_q\ <= NOT \FD|bancoReg|registrador~15_q\;
\FD|ROM|ALT_INV_memROM~7_combout\ <= NOT \FD|ROM|memROM~7_combout\;
\FD|ROM|ALT_INV_memROM~6_combout\ <= NOT \FD|ROM|memROM~6_combout\;
\FD|ROM|ALT_INV_memROM~5_combout\ <= NOT \FD|ROM|memROM~5_combout\;
\FD|ROM|ALT_INV_memROM~4_combout\ <= NOT \FD|ROM|memROM~4_combout\;
\FD|ROM|ALT_INV_memROM~3_combout\ <= NOT \FD|ROM|memROM~3_combout\;
\FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \FD|ROM|memROM~2_combout\;
\FD|ROM|ALT_INV_memROM~1_combout\ <= NOT \FD|ROM|memROM~1_combout\;
\FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \FD|ROM|memROM~0_combout\;
\FD|ULA|ALT_INV_Add0~9_sumout\ <= NOT \FD|ULA|Add0~9_sumout\;
\FD|ULA|ALT_INV_Add0~5_sumout\ <= NOT \FD|ULA|Add0~5_sumout\;
\FD|ULA|ALT_INV_Add0~1_sumout\ <= NOT \FD|ULA|Add0~1_sumout\;
\FD|PC|ALT_INV_DOUT\(0) <= NOT \FD|PC|DOUT\(0);
\FD|PC|ALT_INV_DOUT\(1) <= NOT \FD|PC|DOUT\(1);
\FD|PC|ALT_INV_DOUT\(2) <= NOT \FD|PC|DOUT\(2);
\FD|PC|ALT_INV_DOUT\(3) <= NOT \FD|PC|DOUT\(3);
\FD|PC|ALT_INV_DOUT\(4) <= NOT \FD|PC|DOUT\(4);
\FD|PC|ALT_INV_DOUT\(5) <= NOT \FD|PC|DOUT\(5);
\FD|PC|ALT_INV_DOUT\(7) <= NOT \FD|PC|DOUT\(7);
\FD|PC|ALT_INV_DOUT\(8) <= NOT \FD|PC|DOUT\(8);
\FD|PC|ALT_INV_DOUT\(9) <= NOT \FD|PC|DOUT\(9);
\FD|PC|ALT_INV_DOUT\(10) <= NOT \FD|PC|DOUT\(10);
\FD|PC|ALT_INV_DOUT\(11) <= NOT \FD|PC|DOUT\(11);
\FD|PC|ALT_INV_DOUT\(6) <= NOT \FD|PC|DOUT\(6);

-- Location: IOOBUF_X11_Y0_N19
\decodificadorEnd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(0));

-- Location: IOOBUF_X43_Y0_N2
\decodificadorEnd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(1));

-- Location: IOOBUF_X12_Y0_N36
\decodificadorEnd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(2));

-- Location: IOOBUF_X19_Y0_N36
\decodificadorEnd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(3));

-- Location: IOOBUF_X34_Y45_N36
\decodificadorEnd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(4));

-- Location: IOOBUF_X40_Y45_N59
\decodificadorEnd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(5));

-- Location: IOOBUF_X0_Y21_N5
\decodificadorEnd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(6));

-- Location: IOOBUF_X0_Y21_N56
\decodificadorEnd[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(7));

-- Location: IOOBUF_X0_Y21_N22
\decodificadorEnd[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(8));

-- Location: IOOBUF_X54_Y18_N62
\decodificadorEnd[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(9));

-- Location: IOOBUF_X0_Y19_N5
\saida_dados[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|bancoReg|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_saida_dados(0));

-- Location: IOOBUF_X0_Y19_N22
\saida_dados[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|bancoReg|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_saida_dados(1));

-- Location: IOOBUF_X0_Y21_N39
\saida_dados[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|bancoReg|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_saida_dados(2));

-- Location: IOOBUF_X43_Y45_N36
\saida_dados[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(3));

-- Location: IOOBUF_X50_Y0_N19
\saida_dados[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(4));

-- Location: IOOBUF_X44_Y45_N36
\saida_dados[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(5));

-- Location: IOOBUF_X12_Y45_N36
\saida_dados[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(6));

-- Location: IOOBUF_X43_Y0_N53
\saida_dados[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(7));

-- Location: IOOBUF_X14_Y45_N19
\saida_dados[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(8));

-- Location: IOOBUF_X23_Y0_N42
\saida_dados[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_dados(9));

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

-- Location: LABCELL_X5_Y21_N6
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

-- Location: FF_X7_Y21_N16
\FD|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y21_N0
\FD|somaUm|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~45_sumout\ = SUM(( \FD|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \FD|somaUm|Add0~46\ = CARRY(( \FD|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \FD|somaUm|Add0~45_sumout\,
	cout => \FD|somaUm|Add0~46\);

-- Location: FF_X7_Y21_N2
\FD|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~45_sumout\,
	asdata => \FD|ROM|memROM~19_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y21_N30
\FD|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = ( !\FD|PC|DOUT[3]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((\FD|PC|DOUT[1]~DUPLICATE_q\) # (\FD|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LABCELL_X7_Y21_N15
\FD|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~25_sumout\ = SUM(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))
-- \FD|somaUm|Add0~26\ = CARRY(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~30\,
	sumout => \FD|somaUm|Add0~25_sumout\,
	cout => \FD|somaUm|Add0~26\);

-- Location: LABCELL_X7_Y21_N18
\FD|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~1_sumout\ = SUM(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))
-- \FD|somaUm|Add0~2\ = CARRY(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~26\,
	sumout => \FD|somaUm|Add0~1_sumout\,
	cout => \FD|somaUm|Add0~2\);

-- Location: LABCELL_X7_Y21_N21
\FD|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~21_sumout\ = SUM(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))
-- \FD|somaUm|Add0~22\ = CARRY(( \FD|PC|DOUT\(7) ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(7),
	cin => \FD|somaUm|Add0~2\,
	sumout => \FD|somaUm|Add0~21_sumout\,
	cout => \FD|somaUm|Add0~22\);

-- Location: FF_X7_Y21_N23
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: LABCELL_X7_Y21_N24
\FD|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~17_sumout\ = SUM(( \FD|PC|DOUT\(8) ) + ( GND ) + ( \FD|somaUm|Add0~22\ ))
-- \FD|somaUm|Add0~18\ = CARRY(( \FD|PC|DOUT\(8) ) + ( GND ) + ( \FD|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(8),
	cin => \FD|somaUm|Add0~22\,
	sumout => \FD|somaUm|Add0~17_sumout\,
	cout => \FD|somaUm|Add0~18\);

-- Location: FF_X7_Y21_N25
\FD|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(8));

-- Location: LABCELL_X7_Y21_N27
\FD|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~13_sumout\ = SUM(( \FD|PC|DOUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~18\ ))
-- \FD|somaUm|Add0~14\ = CARRY(( \FD|PC|DOUT[9]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~18\,
	sumout => \FD|somaUm|Add0~13_sumout\,
	cout => \FD|somaUm|Add0~14\);

-- Location: FF_X7_Y21_N28
\FD|PC|DOUT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[9]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y21_N30
\FD|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~9_sumout\ = SUM(( \FD|PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))
-- \FD|somaUm|Add0~10\ = CARRY(( \FD|PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[10]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~14\,
	sumout => \FD|somaUm|Add0~9_sumout\,
	cout => \FD|somaUm|Add0~10\);

-- Location: LABCELL_X5_Y21_N15
\FD|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = ( !\FD|PC|DOUT[3]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & ((!\FD|PC|DOUT[0]~DUPLICATE_q\) # (\FD|PC|DOUT[1]~DUPLICATE_q\))) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & ((!\FD|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110101010110111011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LABCELL_X5_Y21_N51
\FD|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( \FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~12_combout\ & \FD|ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~12_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datae => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|ROM|memROM~13_combout\);

-- Location: FF_X7_Y21_N31
\FD|PC|DOUT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~9_sumout\,
	asdata => \FD|ROM|memROM~13_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[10]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y21_N33
\FD|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~5_sumout\ = SUM(( \FD|PC|DOUT\(11) ) + ( GND ) + ( \FD|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(11),
	cin => \FD|somaUm|Add0~10\,
	sumout => \FD|somaUm|Add0~5_sumout\);

-- Location: LABCELL_X6_Y21_N6
\FD|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~10_combout\ = ( \FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[1]~DUPLICATE_q\ & !\FD|PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & ((\FD|PC|DOUT[0]~DUPLICATE_q\) # 
-- (\FD|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~10_combout\);

-- Location: LABCELL_X6_Y21_N9
\FD|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~11_combout\ = ( \FD|ROM|memROM~10_combout\ & ( (\FD|ROM|memROM~0_combout\ & (\FD|ROM|memROM~1_combout\ & !\FD|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~10_combout\,
	combout => \FD|ROM|memROM~11_combout\);

-- Location: FF_X7_Y21_N35
\FD|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~5_sumout\,
	asdata => \FD|ROM|memROM~11_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(11));

-- Location: FF_X7_Y21_N32
\FD|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~9_sumout\,
	asdata => \FD|ROM|memROM~13_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(10));

-- Location: FF_X7_Y21_N29
\FD|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(9));

-- Location: LABCELL_X7_Y21_N54
\FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~0_combout\ = ( !\FD|PC|DOUT\(8) & ( (!\FD|PC|DOUT\(11) & (!\FD|PC|DOUT\(10) & (!\FD|PC|DOUT\(9) & !\FD|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(11),
	datab => \FD|PC|ALT_INV_DOUT\(10),
	datac => \FD|PC|ALT_INV_DOUT\(9),
	datad => \FD|PC|ALT_INV_DOUT\(7),
	dataf => \FD|PC|ALT_INV_DOUT\(8),
	combout => \FD|ROM|memROM~0_combout\);

-- Location: LABCELL_X5_Y21_N33
\FD|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (!\FD|PC|DOUT[6]~DUPLICATE_q\ & (\FD|ROM|memROM~14_combout\ & \FD|ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \FD|ROM|ALT_INV_memROM~14_combout\,
	datad => \FD|ROM|ALT_INV_memROM~1_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|ROM|memROM~15_combout\);

-- Location: FF_X7_Y21_N8
\FD|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~37_sumout\,
	asdata => \FD|ROM|memROM~15_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y21_N21
\FD|ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = ( \FD|PC|DOUT[0]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & !\FD|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\FD|PC|DOUT[0]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & (!\FD|PC|DOUT[1]~DUPLICATE_q\ $ 
-- (!\FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~18_combout\);

-- Location: LABCELL_X5_Y21_N18
\FD|ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = ( \FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~1_combout\ & (\FD|ROM|memROM~18_combout\ & !\FD|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~18_combout\,
	datad => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|ROM|memROM~19_combout\);

-- Location: FF_X7_Y21_N1
\FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~45_sumout\,
	asdata => \FD|ROM|memROM~19_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(0));

-- Location: LABCELL_X7_Y21_N3
\FD|somaUm|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~41_sumout\ = SUM(( \FD|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~46\ ))
-- \FD|somaUm|Add0~42\ = CARRY(( \FD|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~46\,
	sumout => \FD|somaUm|Add0~41_sumout\,
	cout => \FD|somaUm|Add0~42\);

-- Location: LABCELL_X5_Y21_N39
\FD|ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = ( !\FD|PC|DOUT[3]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[1]~DUPLICATE_q\ & ((!\FD|PC|DOUT[0]~DUPLICATE_q\) # (!\FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~16_combout\);

-- Location: LABCELL_X5_Y21_N36
\FD|ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = ( \FD|ROM|memROM~16_combout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|PC|DOUT[6]~DUPLICATE_q\ & \FD|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~16_combout\,
	combout => \FD|ROM|memROM~17_combout\);

-- Location: FF_X7_Y21_N4
\FD|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~41_sumout\,
	asdata => \FD|ROM|memROM~17_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y21_N6
\FD|somaUm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~37_sumout\ = SUM(( \FD|PC|DOUT\(2) ) + ( GND ) + ( \FD|somaUm|Add0~42\ ))
-- \FD|somaUm|Add0~38\ = CARRY(( \FD|PC|DOUT\(2) ) + ( GND ) + ( \FD|somaUm|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(2),
	cin => \FD|somaUm|Add0~42\,
	sumout => \FD|somaUm|Add0~37_sumout\,
	cout => \FD|somaUm|Add0~38\);

-- Location: FF_X7_Y21_N7
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~37_sumout\,
	asdata => \FD|ROM|memROM~15_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LABCELL_X7_Y21_N9
\FD|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~33_sumout\ = SUM(( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~38\ ))
-- \FD|somaUm|Add0~34\ = CARRY(( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~38\,
	sumout => \FD|somaUm|Add0~33_sumout\,
	cout => \FD|somaUm|Add0~34\);

-- Location: FF_X7_Y21_N10
\FD|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y21_N12
\FD|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~29_sumout\ = SUM(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~34\ ))
-- \FD|somaUm|Add0~30\ = CARRY(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~34\,
	sumout => \FD|somaUm|Add0~29_sumout\,
	cout => \FD|somaUm|Add0~30\);

-- Location: FF_X7_Y21_N13
\FD|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X7_Y21_N17
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: FF_X7_Y21_N14
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LABCELL_X7_Y21_N57
\FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~1_combout\ = ( !\FD|PC|DOUT\(4) & ( !\FD|PC|DOUT\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT\(5),
	dataf => \FD|PC|ALT_INV_DOUT\(4),
	combout => \FD|ROM|memROM~1_combout\);

-- Location: FF_X7_Y21_N11
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: FF_X7_Y21_N5
\FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~41_sumout\,
	asdata => \FD|ROM|memROM~17_combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(1));

-- Location: LABCELL_X7_Y21_N42
\FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~2_combout\ = ( \FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT[0]~DUPLICATE_q\ & !\FD|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(3),
	datac => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT\(1),
	dataf => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~2_combout\);

-- Location: LABCELL_X5_Y21_N12
\FD|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~6_combout\ = ( !\FD|PC|DOUT[3]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & (\FD|PC|DOUT[0]~DUPLICATE_q\ & \FD|PC|DOUT[1]~DUPLICATE_q\)) # (\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|PC|DOUT[0]~DUPLICATE_q\ $ (!\FD|PC|DOUT[1]~DUPLICATE_q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000100010110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~6_combout\);

-- Location: LABCELL_X6_Y21_N27
\FD|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~4_combout\ = ( \FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[0]~DUPLICATE_q\ & (\FD|PC|DOUT[2]~DUPLICATE_q\ & !\FD|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\FD|PC|DOUT[1]~DUPLICATE_q\ & ( (\FD|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\FD|PC|DOUT[2]~DUPLICATE_q\ & !\FD|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~4_combout\);

-- Location: LABCELL_X5_Y21_N3
\UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( \FD|ROM|memROM~4_combout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|ROM|memROM~2_combout\ & (\FD|ROM|memROM~6_combout\ & \FD|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~2_combout\,
	datac => \FD|ROM|ALT_INV_memROM~6_combout\,
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	datae => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~4_combout\,
	combout => \UC|Equal0~0_combout\);

-- Location: FF_X7_Y21_N19
\FD|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X7_Y21_N20
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|somaUm|Add0~1_sumout\,
	asdata => \~GND~combout\,
	sload => \UC|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: LABCELL_X7_Y21_N45
\FD|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~3_combout\ = ( \FD|ROM|memROM~2_combout\ & ( (!\FD|PC|DOUT\(6) & (\FD|ROM|memROM~1_combout\ & \FD|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(6),
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~2_combout\,
	combout => \FD|ROM|memROM~3_combout\);

-- Location: LABCELL_X6_Y21_N24
\FD|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~5_combout\ = ( \FD|ROM|memROM~4_combout\ & ( (\FD|ROM|memROM~1_combout\ & (\FD|ROM|memROM~0_combout\ & !\FD|PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~4_combout\,
	combout => \FD|ROM|memROM~5_combout\);

-- Location: LABCELL_X5_Y21_N45
\FD|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~7_combout\ = ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( \FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~1_combout\ & \FD|ROM|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~6_combout\,
	datae => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|ROM|memROM~7_combout\);

-- Location: LABCELL_X6_Y21_N30
\FD|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~1_sumout\ = SUM(( \FD|bancoReg|registrador~175_combout\ ) + ( VCC ) + ( !VCC ))
-- \FD|ULA|Add0~2\ = CARRY(( \FD|bancoReg|registrador~175_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|bancoReg|ALT_INV_registrador~175_combout\,
	cin => GND,
	sumout => \FD|ULA|Add0~1_sumout\,
	cout => \FD|ULA|Add0~2\);

-- Location: LABCELL_X6_Y21_N57
\FD|muxULA_Imediato|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxULA_Imediato|saida_MUX[0]~0_combout\ = ( \FD|ULA|Add0~1_sumout\ & ( (!\FD|ROM|memROM~7_combout\ & (!\FD|ROM|memROM~5_combout\ & ((\FD|ROM|memROM~19_combout\) # (\FD|ROM|memROM~3_combout\)))) ) ) # ( !\FD|ULA|Add0~1_sumout\ & ( 
-- (!\FD|ROM|memROM~3_combout\ & (!\FD|ROM|memROM~7_combout\ & (\FD|ROM|memROM~19_combout\ & !\FD|ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~3_combout\,
	datab => \FD|ROM|ALT_INV_memROM~7_combout\,
	datac => \FD|ROM|ALT_INV_memROM~19_combout\,
	datad => \FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \FD|ULA|ALT_INV_Add0~1_sumout\,
	combout => \FD|muxULA_Imediato|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X7_Y21_N48
\FD|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~8_combout\ = ( \FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT[0]~DUPLICATE_q\ & !\FD|PC|DOUT\(1))) ) ) # ( !\FD|PC|DOUT[2]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT[0]~DUPLICATE_q\ & \FD|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(3),
	datac => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT\(1),
	dataf => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~8_combout\);

-- Location: LABCELL_X7_Y21_N51
\FD|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~9_combout\ = ( \FD|ROM|memROM~8_combout\ & ( (!\FD|PC|DOUT\(6) & (\FD|ROM|memROM~1_combout\ & \FD|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(6),
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	datad => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \FD|ROM|memROM~9_combout\);

-- Location: LABCELL_X5_Y21_N27
\FD|bancoReg|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~181_combout\ = ( !\FD|ROM|memROM~7_combout\ & ( \FD|ROM|memROM~5_combout\ & ( (\FD|ROM|memROM~11_combout\ & (!\FD|ROM|memROM~9_combout\ & (\FD|ROM|memROM~3_combout\ & \FD|ROM|memROM~13_combout\))) ) ) ) # ( 
-- \FD|ROM|memROM~7_combout\ & ( !\FD|ROM|memROM~5_combout\ & ( (\FD|ROM|memROM~11_combout\ & (!\FD|ROM|memROM~9_combout\ & (\FD|ROM|memROM~3_combout\ & \FD|ROM|memROM~13_combout\))) ) ) ) # ( !\FD|ROM|memROM~7_combout\ & ( !\FD|ROM|memROM~5_combout\ & ( 
-- (\FD|ROM|memROM~11_combout\ & (!\FD|ROM|memROM~9_combout\ & \FD|ROM|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000010000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~11_combout\,
	datab => \FD|ROM|ALT_INV_memROM~9_combout\,
	datac => \FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \FD|ROM|ALT_INV_memROM~13_combout\,
	datae => \FD|ROM|ALT_INV_memROM~7_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~5_combout\,
	combout => \FD|bancoReg|registrador~181_combout\);

-- Location: FF_X6_Y21_N50
\FD|bancoReg|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~45_q\);

-- Location: LABCELL_X5_Y21_N54
\FD|bancoReg|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~179_combout\ = ( \FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( (\FD|ROM|memROM~13_combout\ & (!\FD|ROM|memROM~11_combout\ & ((!\FD|ROM|memROM~5_combout\) # (!\FD|ROM|memROM~7_combout\)))) ) ) ) # ( 
-- !\FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( (\FD|ROM|memROM~13_combout\ & (!\FD|ROM|memROM~5_combout\ & (!\FD|ROM|memROM~11_combout\ & !\FD|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~13_combout\,
	datab => \FD|ROM|ALT_INV_memROM~5_combout\,
	datac => \FD|ROM|ALT_INV_memROM~11_combout\,
	datad => \FD|ROM|ALT_INV_memROM~7_combout\,
	datae => \FD|ROM|ALT_INV_memROM~3_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|bancoReg|registrador~179_combout\);

-- Location: FF_X5_Y21_N43
\FD|bancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~25_q\);

-- Location: LABCELL_X6_Y21_N21
\FD|bancoReg|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~178_combout\ = ( \FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~13_combout\ & ( (!\FD|ROM|memROM~9_combout\ & (!\FD|ROM|memROM~11_combout\ & ((!\FD|ROM|memROM~5_combout\) # (!\FD|ROM|memROM~7_combout\)))) ) ) ) # ( 
-- !\FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~13_combout\ & ( (!\FD|ROM|memROM~9_combout\ & (!\FD|ROM|memROM~11_combout\ & (!\FD|ROM|memROM~5_combout\ & !\FD|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~9_combout\,
	datab => \FD|ROM|ALT_INV_memROM~11_combout\,
	datac => \FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \FD|ROM|ALT_INV_memROM~7_combout\,
	datae => \FD|ROM|ALT_INV_memROM~3_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~13_combout\,
	combout => \FD|bancoReg|registrador~178_combout\);

-- Location: FF_X6_Y21_N20
\FD|bancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~15_q\);

-- Location: LABCELL_X6_Y21_N42
\FD|bancoReg|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~180_combout\ = ( !\FD|ROM|memROM~13_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( (\FD|ROM|memROM~11_combout\ & ((!\FD|ROM|memROM~3_combout\ & (!\FD|ROM|memROM~7_combout\ & !\FD|ROM|memROM~5_combout\)) # (\FD|ROM|memROM~3_combout\ & 
-- ((!\FD|ROM|memROM~7_combout\) # (!\FD|ROM|memROM~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~3_combout\,
	datab => \FD|ROM|ALT_INV_memROM~11_combout\,
	datac => \FD|ROM|ALT_INV_memROM~7_combout\,
	datad => \FD|ROM|ALT_INV_memROM~5_combout\,
	datae => \FD|ROM|ALT_INV_memROM~13_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|bancoReg|registrador~180_combout\);

-- Location: FF_X6_Y21_N47
\FD|bancoReg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~35_q\);

-- Location: LABCELL_X6_Y21_N0
\FD|bancoReg|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~175_combout\ = ( \FD|ROM|memROM~3_combout\ & ( \FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~45_q\ ) ) ) # ( !\FD|ROM|memROM~3_combout\ & ( \FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~25_q\ ) ) ) # ( 
-- \FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~35_q\ ) ) ) # ( !\FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~45_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~25_q\,
	datac => \FD|bancoReg|ALT_INV_registrador~15_q\,
	datad => \FD|bancoReg|ALT_INV_registrador~35_q\,
	datae => \FD|ROM|ALT_INV_memROM~3_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|bancoReg|registrador~175_combout\);

-- Location: LABCELL_X6_Y21_N33
\FD|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~5_sumout\ = SUM(( \FD|bancoReg|registrador~176_combout\ ) + ( GND ) + ( \FD|ULA|Add0~2\ ))
-- \FD|ULA|Add0~6\ = CARRY(( \FD|bancoReg|registrador~176_combout\ ) + ( GND ) + ( \FD|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|bancoReg|ALT_INV_registrador~176_combout\,
	cin => \FD|ULA|Add0~2\,
	sumout => \FD|ULA|Add0~5_sumout\,
	cout => \FD|ULA|Add0~6\);

-- Location: LABCELL_X6_Y21_N54
\FD|muxULA_Imediato|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxULA_Imediato|saida_MUX[1]~1_combout\ = ( \FD|ULA|Add0~5_sumout\ & ( (((\FD|ROM|memROM~17_combout\) # (\FD|ROM|memROM~5_combout\)) # (\FD|ROM|memROM~7_combout\)) # (\FD|ROM|memROM~3_combout\) ) ) # ( !\FD|ULA|Add0~5_sumout\ & ( 
-- (((!\FD|ROM|memROM~3_combout\ & \FD|ROM|memROM~17_combout\)) # (\FD|ROM|memROM~5_combout\)) # (\FD|ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111001111111011111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~3_combout\,
	datab => \FD|ROM|ALT_INV_memROM~7_combout\,
	datac => \FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \FD|ROM|ALT_INV_memROM~17_combout\,
	dataf => \FD|ULA|ALT_INV_Add0~5_sumout\,
	combout => \FD|muxULA_Imediato|saida_MUX[1]~1_combout\);

-- Location: FF_X6_Y21_N5
\FD|bancoReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~36_q\);

-- Location: FF_X5_Y21_N1
\FD|bancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~26_q\);

-- Location: FF_X6_Y21_N17
\FD|bancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~16_q\);

-- Location: FF_X6_Y21_N55
\FD|bancoReg|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|muxULA_Imediato|saida_MUX[1]~1_combout\,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~46_q\);

-- Location: LABCELL_X6_Y21_N12
\FD|bancoReg|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~176_combout\ = ( \FD|bancoReg|registrador~46_q\ & ( \FD|ROM|memROM~9_combout\ & ( (\FD|ROM|memROM~3_combout\) # (\FD|bancoReg|registrador~26_q\) ) ) ) # ( !\FD|bancoReg|registrador~46_q\ & ( \FD|ROM|memROM~9_combout\ & ( 
-- (\FD|bancoReg|registrador~26_q\ & !\FD|ROM|memROM~3_combout\) ) ) ) # ( \FD|bancoReg|registrador~46_q\ & ( !\FD|ROM|memROM~9_combout\ & ( (!\FD|ROM|memROM~3_combout\ & ((\FD|bancoReg|registrador~16_q\))) # (\FD|ROM|memROM~3_combout\ & 
-- (\FD|bancoReg|registrador~36_q\)) ) ) ) # ( !\FD|bancoReg|registrador~46_q\ & ( !\FD|ROM|memROM~9_combout\ & ( (!\FD|ROM|memROM~3_combout\ & ((\FD|bancoReg|registrador~16_q\))) # (\FD|ROM|memROM~3_combout\ & (\FD|bancoReg|registrador~36_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~36_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~26_q\,
	datac => \FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \FD|bancoReg|ALT_INV_registrador~16_q\,
	datae => \FD|bancoReg|ALT_INV_registrador~46_q\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|bancoReg|registrador~176_combout\);

-- Location: LABCELL_X6_Y21_N36
\FD|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~9_sumout\ = SUM(( \FD|bancoReg|registrador~177_combout\ ) + ( GND ) + ( \FD|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|bancoReg|ALT_INV_registrador~177_combout\,
	cin => \FD|ULA|Add0~6\,
	sumout => \FD|ULA|Add0~9_sumout\);

-- Location: LABCELL_X6_Y21_N51
\FD|muxULA_Imediato|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxULA_Imediato|saida_MUX[2]~2_combout\ = ( \FD|ULA|Add0~9_sumout\ & ( !\FD|ROM|memROM~5_combout\ & ( (!\FD|ROM|memROM~7_combout\ & ((\FD|ROM|memROM~3_combout\) # (\FD|ROM|memROM~15_combout\))) ) ) ) # ( !\FD|ULA|Add0~9_sumout\ & ( 
-- !\FD|ROM|memROM~5_combout\ & ( (!\FD|ROM|memROM~7_combout\ & (\FD|ROM|memROM~15_combout\ & !\FD|ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~7_combout\,
	datac => \FD|ROM|ALT_INV_memROM~15_combout\,
	datad => \FD|ROM|ALT_INV_memROM~3_combout\,
	datae => \FD|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \FD|ROM|ALT_INV_memROM~5_combout\,
	combout => \FD|muxULA_Imediato|saida_MUX[2]~2_combout\);

-- Location: FF_X6_Y21_N52
\FD|bancoReg|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|muxULA_Imediato|saida_MUX[2]~2_combout\,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~47_q\);

-- Location: FF_X5_Y21_N58
\FD|bancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~27_q\);

-- Location: FF_X6_Y21_N1
\FD|bancoReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~37_q\);

-- Location: FF_X6_Y21_N22
\FD|bancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxULA_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~17_q\);

-- Location: LABCELL_X7_Y21_N39
\FD|bancoReg|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~177_combout\ = ( \FD|ROM|memROM~3_combout\ & ( \FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~47_q\ ) ) ) # ( !\FD|ROM|memROM~3_combout\ & ( \FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~27_q\ ) ) ) # ( 
-- \FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~37_q\ ) ) ) # ( !\FD|ROM|memROM~3_combout\ & ( !\FD|ROM|memROM~9_combout\ & ( \FD|bancoReg|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~47_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~27_q\,
	datac => \FD|bancoReg|ALT_INV_registrador~37_q\,
	datad => \FD|bancoReg|ALT_INV_registrador~17_q\,
	datae => \FD|ROM|ALT_INV_memROM~3_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|bancoReg|registrador~177_combout\);

-- Location: IOIBUF_X14_Y0_N1
\entrada_dados[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(0),
	o => \entrada_dados[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\entrada_dados[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(1),
	o => \entrada_dados[1]~input_o\);

-- Location: IOIBUF_X18_Y45_N1
\entrada_dados[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(2),
	o => \entrada_dados[2]~input_o\);

-- Location: IOIBUF_X54_Y20_N4
\entrada_dados[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(3),
	o => \entrada_dados[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\entrada_dados[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(4),
	o => \entrada_dados[4]~input_o\);

-- Location: IOIBUF_X10_Y45_N52
\entrada_dados[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(5),
	o => \entrada_dados[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\entrada_dados[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(6),
	o => \entrada_dados[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\entrada_dados[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(7),
	o => \entrada_dados[7]~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\entrada_dados[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(8),
	o => \entrada_dados[8]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\entrada_dados[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(9),
	o => \entrada_dados[9]~input_o\);
END structure;


