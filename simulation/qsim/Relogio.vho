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

-- DATE "10/04/2020 16:27:06"

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
	decodificadorEnd : BUFFER std_logic_vector(9 DOWNTO 0);
	saida_dados : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END CPU;

-- Design Ports Information
-- entrada_dados[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodificadorEnd[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \FD|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~10\ : std_logic;
SIGNAL \FD|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \FD|ROM|memROM~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~8_combout\ : std_logic;
SIGNAL \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~11_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~178_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~15_q\ : std_logic;
SIGNAL \FD|ROM|memROM~4_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~180_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~35_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~179_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~25_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~181_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~45_q\ : std_logic;
SIGNAL \FD|ROM|memROM~10_combout\ : std_logic;
SIGNAL \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~37_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~17_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~27_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~47_q\ : std_logic;
SIGNAL \FD|ROM|memROM~6_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~177_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~26\ : std_logic;
SIGNAL \FD|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~22\ : std_logic;
SIGNAL \FD|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~5_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~175_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~14\ : std_logic;
SIGNAL \FD|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~30\ : std_logic;
SIGNAL \FD|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~1_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~7_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~9_combout\ : std_logic;
SIGNAL \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \FD|bancoReg|registrador~36_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~16_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~46_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~26_q\ : std_logic;
SIGNAL \FD|bancoReg|registrador~176_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \FD|somaUm|Add0~2\ : std_logic;
SIGNAL \FD|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|somaUm|Add0~6\ : std_logic;
SIGNAL \FD|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \FD|MuxProxPC|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \FD|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|ROM|memROM~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~2_combout\ : std_logic;
SIGNAL \FD|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~7_combout\ : std_logic;
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
SIGNAL \FD|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \FD|bancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \FD|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \FD|PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FD|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \FD|somaUm|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_entrada_dados <= entrada_dados;
decodificadorEnd <= ww_decodificadorEnd;
saida_dados <= ww_saida_dados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[4]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[5]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[6]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[7]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[3]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[2]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[1]~DUPLICATE_q\;
\FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \FD|PC|DOUT[0]~DUPLICATE_q\;
\FD|ROM|ALT_INV_memROM~13_combout\ <= NOT \FD|ROM|memROM~13_combout\;
\FD|ROM|ALT_INV_memROM~12_combout\ <= NOT \FD|ROM|memROM~12_combout\;
\FD|ROM|ALT_INV_memROM~11_combout\ <= NOT \FD|ROM|memROM~11_combout\;
\FD|ROM|ALT_INV_memROM~10_combout\ <= NOT \FD|ROM|memROM~10_combout\;
\FD|ROM|ALT_INV_memROM~9_combout\ <= NOT \FD|ROM|memROM~9_combout\;
\FD|ROM|ALT_INV_memROM~8_combout\ <= NOT \FD|ROM|memROM~8_combout\;
\FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \FD|MuxProxPC|saida_MUX[3]~2_combout\;
\FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \FD|MuxProxPC|saida_MUX[2]~1_combout\;
\FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \FD|MuxProxPC|saida_MUX[2]~0_combout\;
\FD|ROM|ALT_INV_memROM~7_combout\ <= NOT \FD|ROM|memROM~7_combout\;
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
\FD|ROM|ALT_INV_memROM~6_combout\ <= NOT \FD|ROM|memROM~6_combout\;
\FD|ROM|ALT_INV_memROM~5_combout\ <= NOT \FD|ROM|memROM~5_combout\;
\FD|bancoReg|ALT_INV_registrador~45_q\ <= NOT \FD|bancoReg|registrador~45_q\;
\FD|bancoReg|ALT_INV_registrador~35_q\ <= NOT \FD|bancoReg|registrador~35_q\;
\FD|bancoReg|ALT_INV_registrador~25_q\ <= NOT \FD|bancoReg|registrador~25_q\;
\FD|bancoReg|ALT_INV_registrador~15_q\ <= NOT \FD|bancoReg|registrador~15_q\;
\FD|ROM|ALT_INV_memROM~4_combout\ <= NOT \FD|ROM|memROM~4_combout\;
\FD|ROM|ALT_INV_memROM~3_combout\ <= NOT \FD|ROM|memROM~3_combout\;
\FD|ROM|ALT_INV_memROM~2_combout\ <= NOT \FD|ROM|memROM~2_combout\;
\FD|ROM|ALT_INV_memROM~1_combout\ <= NOT \FD|ROM|memROM~1_combout\;
\FD|PC|ALT_INV_DOUT\(4) <= NOT \FD|PC|DOUT\(4);
\FD|PC|ALT_INV_DOUT\(5) <= NOT \FD|PC|DOUT\(5);
\FD|PC|ALT_INV_DOUT\(6) <= NOT \FD|PC|DOUT\(6);
\FD|PC|ALT_INV_DOUT\(7) <= NOT \FD|PC|DOUT\(7);
\FD|ROM|ALT_INV_memROM~0_combout\ <= NOT \FD|ROM|memROM~0_combout\;
\FD|PC|ALT_INV_DOUT\(3) <= NOT \FD|PC|DOUT\(3);
\FD|PC|ALT_INV_DOUT\(2) <= NOT \FD|PC|DOUT\(2);
\FD|PC|ALT_INV_DOUT\(1) <= NOT \FD|PC|DOUT\(1);
\FD|PC|ALT_INV_DOUT\(0) <= NOT \FD|PC|DOUT\(0);
\FD|somaUm|ALT_INV_Add0~29_sumout\ <= NOT \FD|somaUm|Add0~29_sumout\;
\FD|somaUm|ALT_INV_Add0~25_sumout\ <= NOT \FD|somaUm|Add0~25_sumout\;
\FD|somaUm|ALT_INV_Add0~21_sumout\ <= NOT \FD|somaUm|Add0~21_sumout\;
\FD|somaUm|ALT_INV_Add0~17_sumout\ <= NOT \FD|somaUm|Add0~17_sumout\;
\FD|somaUm|ALT_INV_Add0~13_sumout\ <= NOT \FD|somaUm|Add0~13_sumout\;
\FD|somaUm|ALT_INV_Add0~9_sumout\ <= NOT \FD|somaUm|Add0~9_sumout\;
\FD|somaUm|ALT_INV_Add0~5_sumout\ <= NOT \FD|somaUm|Add0~5_sumout\;
\FD|somaUm|ALT_INV_Add0~1_sumout\ <= NOT \FD|somaUm|Add0~1_sumout\;

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N2
\decodificadorEnd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(6));

-- Location: IOOBUF_X12_Y0_N19
\decodificadorEnd[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(7));

-- Location: IOOBUF_X12_Y0_N53
\decodificadorEnd[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_decodificadorEnd(8));

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: FF_X13_Y2_N46
\FD|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N36
\FD|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~9_sumout\ = SUM(( \FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~6\ ))
-- \FD|somaUm|Add0~10\ = CARRY(( \FD|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~6\,
	sumout => \FD|somaUm|Add0~9_sumout\,
	cout => \FD|somaUm|Add0~10\);

-- Location: LABCELL_X12_Y2_N39
\FD|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~13_sumout\ = SUM(( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~10\ ))
-- \FD|somaUm|Add0~14\ = CARRY(( \FD|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~10\,
	sumout => \FD|somaUm|Add0~13_sumout\,
	cout => \FD|somaUm|Add0~14\);

-- Location: MLABCELL_X13_Y2_N24
\FD|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~3_combout\ = ( \FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & (!\FD|PC|DOUT\(0) $ (!\FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT\(0),
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~3_combout\);

-- Location: FF_X13_Y2_N43
\FD|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(3));

-- Location: FF_X13_Y2_N10
\FD|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(1));

-- Location: FF_X13_Y2_N4
\FD|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(2));

-- Location: LABCELL_X14_Y2_N51
\FD|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~8_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(0) & (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(1))) ) ) # ( !\FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(3) & \FD|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(0),
	datab => \FD|PC|ALT_INV_DOUT\(3),
	datac => \FD|PC|ALT_INV_DOUT\(1),
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|ROM|memROM~8_combout\);

-- Location: LABCELL_X14_Y2_N15
\FD|muxRAM_Imediato|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\ = ( !\FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|ROM|memROM~3_combout\ & \FD|ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \FD|ROM|ALT_INV_memROM~8_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X14_Y2_N21
\FD|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~11_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(0) & (!\FD|PC|DOUT\(1) & !\FD|PC|DOUT\(3))) ) ) # ( !\FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(0) & !\FD|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(0),
	datac => \FD|PC|ALT_INV_DOUT\(1),
	datad => \FD|PC|ALT_INV_DOUT\(3),
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|ROM|memROM~11_combout\);

-- Location: LABCELL_X14_Y2_N12
\FD|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = ( \FD|PC|DOUT\(1) & ( (!\FD|PC|DOUT\(2) & (!\FD|PC|DOUT\(0) & !\FD|PC|DOUT\(3))) ) ) # ( !\FD|PC|DOUT\(1) & ( (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(2) $ (!\FD|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(2),
	datac => \FD|PC|ALT_INV_DOUT\(0),
	datad => \FD|PC|ALT_INV_DOUT\(3),
	dataf => \FD|PC|ALT_INV_DOUT\(1),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: MLABCELL_X13_Y2_N39
\FD|bancoReg|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~178_combout\ = ( \FD|ROM|memROM~12_combout\ & ( !\FD|ROM|memROM~1_combout\ ) ) # ( !\FD|ROM|memROM~12_combout\ & ( (!\FD|ROM|memROM~1_combout\) # ((!\FD|ROM|memROM~0_combout\ & (!\FD|ROM|memROM~3_combout\ & 
-- !\FD|ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~3_combout\,
	datad => \FD|ROM|ALT_INV_memROM~11_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~12_combout\,
	combout => \FD|bancoReg|registrador~178_combout\);

-- Location: FF_X13_Y2_N41
\FD|bancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~15_q\);

-- Location: MLABCELL_X13_Y2_N21
\FD|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~4_combout\ = ( \FD|ROM|memROM~3_combout\ & ( \FD|ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|ROM|ALT_INV_memROM~1_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~3_combout\,
	combout => \FD|ROM|memROM~4_combout\);

-- Location: LABCELL_X14_Y2_N6
\FD|bancoReg|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~180_combout\ = ( \FD|ROM|memROM~12_combout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|ROM|memROM~3_combout\ & (!\FD|ROM|memROM~0_combout\ & !\FD|ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~3_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|ROM|ALT_INV_memROM~11_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~12_combout\,
	combout => \FD|bancoReg|registrador~180_combout\);

-- Location: FF_X14_Y2_N32
\FD|bancoReg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~35_q\);

-- Location: LABCELL_X14_Y2_N9
\FD|bancoReg|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~179_combout\ = ( !\FD|ROM|memROM~12_combout\ & ( (\FD|ROM|memROM~1_combout\ & (!\FD|ROM|memROM~3_combout\ & (!\FD|ROM|memROM~0_combout\ & \FD|ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~3_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	datad => \FD|ROM|ALT_INV_memROM~11_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~12_combout\,
	combout => \FD|bancoReg|registrador~179_combout\);

-- Location: FF_X14_Y2_N53
\FD|bancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~25_q\);

-- Location: LABCELL_X14_Y2_N3
\FD|bancoReg|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~181_combout\ = ( \FD|ROM|memROM~11_combout\ & ( !\FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~1_combout\ & (\FD|ROM|memROM~12_combout\ & !\FD|ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~12_combout\,
	datac => \FD|ROM|ALT_INV_memROM~3_combout\,
	datae => \FD|ROM|ALT_INV_memROM~11_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|bancoReg|registrador~181_combout\);

-- Location: FF_X14_Y2_N2
\FD|bancoReg|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~45_q\);

-- Location: FF_X13_Y2_N49
\FD|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(4));

-- Location: LABCELL_X12_Y2_N24
\FD|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~10_combout\ = ( \FD|PC|DOUT[1]~DUPLICATE_q\ & ( \FD|ROM|memROM~1_combout\ & ( (!\FD|PC|DOUT[2]~DUPLICATE_q\ & !\FD|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~1_combout\,
	combout => \FD|ROM|memROM~10_combout\);

-- Location: LABCELL_X14_Y2_N24
\FD|muxRAM_Imediato|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\ = ( \FD|ROM|memROM~10_combout\ & ( (!\FD|ROM|memROM~1_combout\) # ((!\FD|ROM|memROM~3_combout\ & !\FD|ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~3_combout\,
	datac => \FD|ROM|ALT_INV_memROM~0_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~10_combout\,
	combout => \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\);

-- Location: FF_X14_Y2_N35
\FD|bancoReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~37_q\);

-- Location: FF_X13_Y2_N23
\FD|bancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~17_q\);

-- Location: FF_X14_Y2_N44
\FD|bancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~27_q\);

-- Location: FF_X14_Y2_N41
\FD|bancoReg|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[2]~2_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~47_q\);

-- Location: LABCELL_X14_Y2_N48
\FD|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~6_combout\ = ( \FD|ROM|memROM~1_combout\ & ( (\FD|PC|DOUT\(0) & (!\FD|PC|DOUT\(3) & (\FD|PC|DOUT\(2) & !\FD|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(0),
	datab => \FD|PC|ALT_INV_DOUT\(3),
	datac => \FD|PC|ALT_INV_DOUT\(2),
	datad => \FD|PC|ALT_INV_DOUT\(1),
	dataf => \FD|ROM|ALT_INV_memROM~1_combout\,
	combout => \FD|ROM|memROM~6_combout\);

-- Location: LABCELL_X14_Y2_N39
\FD|bancoReg|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~177_combout\ = ( \FD|bancoReg|registrador~47_q\ & ( \FD|ROM|memROM~6_combout\ & ( (\FD|ROM|memROM~5_combout\) # (\FD|bancoReg|registrador~37_q\) ) ) ) # ( !\FD|bancoReg|registrador~47_q\ & ( \FD|ROM|memROM~6_combout\ & ( 
-- (\FD|bancoReg|registrador~37_q\ & !\FD|ROM|memROM~5_combout\) ) ) ) # ( \FD|bancoReg|registrador~47_q\ & ( !\FD|ROM|memROM~6_combout\ & ( (!\FD|ROM|memROM~5_combout\ & ((\FD|bancoReg|registrador~17_q\))) # (\FD|ROM|memROM~5_combout\ & 
-- (\FD|bancoReg|registrador~27_q\)) ) ) ) # ( !\FD|bancoReg|registrador~47_q\ & ( !\FD|ROM|memROM~6_combout\ & ( (!\FD|ROM|memROM~5_combout\ & ((\FD|bancoReg|registrador~17_q\))) # (\FD|ROM|memROM~5_combout\ & (\FD|bancoReg|registrador~27_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~37_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~27_q\,
	datac => \FD|ROM|ALT_INV_memROM~5_combout\,
	datad => \FD|bancoReg|ALT_INV_registrador~17_q\,
	datae => \FD|bancoReg|ALT_INV_registrador~47_q\,
	dataf => \FD|ROM|ALT_INV_memROM~6_combout\,
	combout => \FD|bancoReg|registrador~177_combout\);

-- Location: MLABCELL_X13_Y2_N12
\FD|MuxProxPC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[2]~1_combout\ = ( \FD|bancoReg|registrador~177_combout\ & ( (!\FD|ROM|memROM~2_combout\ & ((!\FD|ROM|memROM~7_combout\ & ((!\FD|bancoReg|registrador~17_q\))) # (\FD|ROM|memROM~7_combout\ & (!\FD|bancoReg|registrador~37_q\)))) ) ) # 
-- ( !\FD|bancoReg|registrador~177_combout\ & ( (!\FD|ROM|memROM~2_combout\ & ((!\FD|ROM|memROM~7_combout\ & ((\FD|bancoReg|registrador~17_q\))) # (\FD|ROM|memROM~7_combout\ & (\FD|bancoReg|registrador~37_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000011100000001000001110000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~37_q\,
	datab => \FD|ROM|ALT_INV_memROM~7_combout\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|bancoReg|ALT_INV_registrador~17_q\,
	dataf => \FD|bancoReg|ALT_INV_registrador~177_combout\,
	combout => \FD|MuxProxPC|saida_MUX[2]~1_combout\);

-- Location: FF_X13_Y2_N2
\FD|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N45
\FD|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~25_sumout\ = SUM(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))
-- \FD|somaUm|Add0~26\ = CARRY(( \FD|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~30\,
	sumout => \FD|somaUm|Add0~25_sumout\,
	cout => \FD|somaUm|Add0~26\);

-- Location: LABCELL_X12_Y2_N48
\FD|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~21_sumout\ = SUM(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))
-- \FD|somaUm|Add0~22\ = CARRY(( \FD|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~26\,
	sumout => \FD|somaUm|Add0~21_sumout\,
	cout => \FD|somaUm|Add0~22\);

-- Location: MLABCELL_X13_Y2_N33
\FD|MuxProxPC|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[6]~8_combout\ = ( \FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( \FD|somaUm|Add0~21_sumout\ ) ) # ( !\FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( (\FD|somaUm|Add0~21_sumout\ & ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # 
-- (\FD|MuxProxPC|saida_MUX[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \FD|somaUm|ALT_INV_Add0~21_sumout\,
	dataf => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \FD|MuxProxPC|saida_MUX[6]~8_combout\);

-- Location: FF_X13_Y2_N35
\FD|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N51
\FD|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~17_sumout\ = SUM(( \FD|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~22\,
	sumout => \FD|somaUm|Add0~17_sumout\);

-- Location: MLABCELL_X13_Y2_N0
\FD|MuxProxPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[7]~7_combout\ = ( \FD|somaUm|Add0~17_sumout\ & ( ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # (\FD|MuxProxPC|saida_MUX[2]~0_combout\)) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \FD|somaUm|ALT_INV_Add0~17_sumout\,
	combout => \FD|MuxProxPC|saida_MUX[7]~7_combout\);

-- Location: FF_X13_Y2_N1
\FD|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(7));

-- Location: FF_X13_Y2_N34
\FD|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(6));

-- Location: MLABCELL_X13_Y2_N15
\FD|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = ( \FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & !\FD|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\FD|PC|DOUT[1]~DUPLICATE_q\ & ( (!\FD|PC|DOUT[3]~DUPLICATE_q\ & \FD|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~13_combout\);

-- Location: LABCELL_X14_Y2_N45
\FD|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~5_combout\ = ( !\FD|PC|DOUT\(6) & ( \FD|ROM|memROM~13_combout\ & ( (!\FD|PC|DOUT[5]~DUPLICATE_q\ & (!\FD|PC|DOUT\(4) & (!\FD|PC|DOUT\(7) & \FD|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \FD|PC|ALT_INV_DOUT\(4),
	datac => \FD|PC|ALT_INV_DOUT\(7),
	datad => \FD|PC|ALT_INV_DOUT\(0),
	datae => \FD|PC|ALT_INV_DOUT\(6),
	dataf => \FD|ROM|ALT_INV_memROM~13_combout\,
	combout => \FD|ROM|memROM~5_combout\);

-- Location: LABCELL_X14_Y2_N33
\FD|bancoReg|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~175_combout\ = ( \FD|ROM|memROM~5_combout\ & ( \FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~45_q\ ) ) ) # ( !\FD|ROM|memROM~5_combout\ & ( \FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~35_q\ ) ) ) # ( 
-- \FD|ROM|memROM~5_combout\ & ( !\FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~25_q\ ) ) ) # ( !\FD|ROM|memROM~5_combout\ & ( !\FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~25_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~15_q\,
	datac => \FD|bancoReg|ALT_INV_registrador~35_q\,
	datad => \FD|bancoReg|ALT_INV_registrador~45_q\,
	datae => \FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~6_combout\,
	combout => \FD|bancoReg|registrador~175_combout\);

-- Location: MLABCELL_X13_Y2_N54
\FD|MuxProxPC|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[3]~2_combout\ = ( \FD|bancoReg|registrador~35_q\ & ( \FD|bancoReg|registrador~175_combout\ & ( (\FD|ROM|memROM~4_combout\ & (((\FD|ROM|memROM~2_combout\) # (\FD|bancoReg|registrador~15_q\)) # (\FD|ROM|memROM~7_combout\))) ) ) ) # ( 
-- !\FD|bancoReg|registrador~35_q\ & ( \FD|bancoReg|registrador~175_combout\ & ( (\FD|ROM|memROM~4_combout\ & (((!\FD|ROM|memROM~7_combout\ & \FD|bancoReg|registrador~15_q\)) # (\FD|ROM|memROM~2_combout\))) ) ) ) # ( \FD|bancoReg|registrador~35_q\ & ( 
-- !\FD|bancoReg|registrador~175_combout\ & ( (\FD|ROM|memROM~4_combout\ & (((!\FD|ROM|memROM~7_combout\ & !\FD|bancoReg|registrador~15_q\)) # (\FD|ROM|memROM~2_combout\))) ) ) ) # ( !\FD|bancoReg|registrador~35_q\ & ( !\FD|bancoReg|registrador~175_combout\ 
-- & ( (\FD|ROM|memROM~4_combout\ & (((!\FD|bancoReg|registrador~15_q\) # (\FD|ROM|memROM~2_combout\)) # (\FD|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001000111100000000001011110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~7_combout\,
	datab => \FD|bancoReg|ALT_INV_registrador~15_q\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|ROM|ALT_INV_memROM~4_combout\,
	datae => \FD|bancoReg|ALT_INV_registrador~35_q\,
	dataf => \FD|bancoReg|ALT_INV_registrador~175_combout\,
	combout => \FD|MuxProxPC|saida_MUX[3]~2_combout\);

-- Location: MLABCELL_X13_Y2_N42
\FD|MuxProxPC|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[3]~6_combout\ = ( \FD|MuxProxPC|saida_MUX[2]~1_combout\ & ( \FD|somaUm|Add0~13_sumout\ ) ) # ( !\FD|MuxProxPC|saida_MUX[2]~1_combout\ & ( (\FD|somaUm|Add0~13_sumout\ & ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # 
-- (\FD|MuxProxPC|saida_MUX[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|somaUm|ALT_INV_Add0~13_sumout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \FD|MuxProxPC|saida_MUX[3]~6_combout\);

-- Location: FF_X13_Y2_N44
\FD|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N42
\FD|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~29_sumout\ = SUM(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))
-- \FD|somaUm|Add0~30\ = CARRY(( \FD|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~14\,
	sumout => \FD|somaUm|Add0~29_sumout\,
	cout => \FD|somaUm|Add0~30\);

-- Location: MLABCELL_X13_Y2_N48
\FD|MuxProxPC|saida_MUX[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[4]~10_combout\ = ( \FD|MuxProxPC|saida_MUX[2]~1_combout\ & ( \FD|somaUm|Add0~29_sumout\ ) ) # ( !\FD|MuxProxPC|saida_MUX[2]~1_combout\ & ( (\FD|somaUm|Add0~29_sumout\ & ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # 
-- (\FD|MuxProxPC|saida_MUX[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|somaUm|ALT_INV_Add0~29_sumout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \FD|MuxProxPC|saida_MUX[4]~10_combout\);

-- Location: FF_X13_Y2_N50
\FD|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[4]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N45
\FD|MuxProxPC|saida_MUX[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[5]~9_combout\ = ( \FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( \FD|somaUm|Add0~25_sumout\ ) ) # ( !\FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( (\FD|somaUm|Add0~25_sumout\ & ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # 
-- (\FD|MuxProxPC|saida_MUX[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|somaUm|ALT_INV_Add0~25_sumout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \FD|MuxProxPC|saida_MUX[5]~9_combout\);

-- Location: FF_X13_Y2_N47
\FD|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(5));

-- Location: MLABCELL_X13_Y2_N30
\FD|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~1_combout\ = ( !\FD|PC|DOUT[6]~DUPLICATE_q\ & ( (!\FD|PC|DOUT\(5) & (!\FD|PC|DOUT[4]~DUPLICATE_q\ & !\FD|PC|DOUT[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(5),
	datac => \FD|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \FD|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~1_combout\);

-- Location: FF_X13_Y2_N8
\FD|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y2_N30
\FD|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~1_sumout\ = SUM(( \FD|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \FD|somaUm|Add0~2\ = CARRY(( \FD|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \FD|somaUm|Add0~1_sumout\,
	cout => \FD|somaUm|Add0~2\);

-- Location: MLABCELL_X13_Y2_N6
\FD|MuxProxPC|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[0]~3_combout\ = ( \FD|somaUm|Add0~1_sumout\ & ( \FD|ROM|memROM~8_combout\ & ( (((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\)) # (\FD|ROM|memROM~1_combout\)) # 
-- (\FD|MuxProxPC|saida_MUX[2]~0_combout\) ) ) ) # ( !\FD|somaUm|Add0~1_sumout\ & ( \FD|ROM|memROM~8_combout\ & ( (!\FD|MuxProxPC|saida_MUX[2]~0_combout\ & (\FD|ROM|memROM~1_combout\ & (\FD|MuxProxPC|saida_MUX[3]~2_combout\ & 
-- !\FD|MuxProxPC|saida_MUX[2]~1_combout\))) ) ) ) # ( \FD|somaUm|Add0~1_sumout\ & ( !\FD|ROM|memROM~8_combout\ & ( ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\)) # (\FD|MuxProxPC|saida_MUX[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datae => \FD|somaUm|ALT_INV_Add0~1_sumout\,
	dataf => \FD|ROM|ALT_INV_memROM~8_combout\,
	combout => \FD|MuxProxPC|saida_MUX[0]~3_combout\);

-- Location: FF_X13_Y2_N7
\FD|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT\(0));

-- Location: MLABCELL_X13_Y2_N27
\FD|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~7_combout\ = ( \FD|ROM|memROM~1_combout\ & ( (\FD|PC|DOUT\(0) & (!\FD|PC|DOUT[3]~DUPLICATE_q\ & (\FD|PC|DOUT[1]~DUPLICATE_q\ & !\FD|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT\(0),
	datab => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \FD|ROM|ALT_INV_memROM~1_combout\,
	combout => \FD|ROM|memROM~7_combout\);

-- Location: LABCELL_X14_Y2_N18
\FD|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~9_combout\ = ( \FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(3) & (!\FD|PC|DOUT\(1) & !\FD|PC|DOUT\(0))) ) ) # ( !\FD|PC|DOUT\(2) & ( (!\FD|PC|DOUT\(3) & !\FD|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|ALT_INV_DOUT\(3),
	datac => \FD|PC|ALT_INV_DOUT\(1),
	datad => \FD|PC|ALT_INV_DOUT\(0),
	dataf => \FD|PC|ALT_INV_DOUT\(2),
	combout => \FD|ROM|memROM~9_combout\);

-- Location: LABCELL_X14_Y2_N27
\FD|muxRAM_Imediato|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\ = ( \FD|ROM|memROM~0_combout\ & ( \FD|ROM|memROM~1_combout\ ) ) # ( !\FD|ROM|memROM~0_combout\ & ( (\FD|ROM|memROM~1_combout\ & ((\FD|ROM|memROM~9_combout\) # (\FD|ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~1_combout\,
	datab => \FD|ROM|ALT_INV_memROM~3_combout\,
	datac => \FD|ROM|ALT_INV_memROM~9_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~0_combout\,
	combout => \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\);

-- Location: FF_X14_Y2_N58
\FD|bancoReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~36_q\);

-- Location: FF_X13_Y2_N58
\FD|bancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~16_q\);

-- Location: FF_X14_Y2_N38
\FD|bancoReg|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\,
	sload => VCC,
	ena => \FD|bancoReg|registrador~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~46_q\);

-- Location: FF_X14_Y2_N28
\FD|bancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|muxRAM_Imediato|saida_MUX[1]~1_combout\,
	ena => \FD|bancoReg|registrador~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|bancoReg|registrador~26_q\);

-- Location: LABCELL_X14_Y2_N54
\FD|bancoReg|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|bancoReg|registrador~176_combout\ = ( \FD|ROM|memROM~5_combout\ & ( \FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~46_q\ ) ) ) # ( !\FD|ROM|memROM~5_combout\ & ( \FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~36_q\ ) ) ) # ( 
-- \FD|ROM|memROM~5_combout\ & ( !\FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~26_q\ ) ) ) # ( !\FD|ROM|memROM~5_combout\ & ( !\FD|ROM|memROM~6_combout\ & ( \FD|bancoReg|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|bancoReg|ALT_INV_registrador~36_q\,
	datab => \FD|bancoReg|ALT_INV_registrador~16_q\,
	datac => \FD|bancoReg|ALT_INV_registrador~46_q\,
	datad => \FD|bancoReg|ALT_INV_registrador~26_q\,
	datae => \FD|ROM|ALT_INV_memROM~5_combout\,
	dataf => \FD|ROM|ALT_INV_memROM~6_combout\,
	combout => \FD|bancoReg|registrador~176_combout\);

-- Location: MLABCELL_X13_Y2_N18
\FD|MuxProxPC|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[2]~0_combout\ = ( \FD|bancoReg|registrador~16_q\ & ( (!\FD|ROM|memROM~2_combout\ & (!\FD|bancoReg|registrador~176_combout\ $ (((\FD|ROM|memROM~7_combout\ & !\FD|bancoReg|registrador~36_q\))))) ) ) # ( 
-- !\FD|bancoReg|registrador~16_q\ & ( (!\FD|ROM|memROM~2_combout\ & (!\FD|bancoReg|registrador~176_combout\ $ (((!\FD|ROM|memROM~7_combout\) # (!\FD|bancoReg|registrador~36_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000010110000010000001011000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~7_combout\,
	datab => \FD|bancoReg|ALT_INV_registrador~36_q\,
	datac => \FD|ROM|ALT_INV_memROM~2_combout\,
	datad => \FD|bancoReg|ALT_INV_registrador~176_combout\,
	dataf => \FD|bancoReg|ALT_INV_registrador~16_q\,
	combout => \FD|MuxProxPC|saida_MUX[2]~0_combout\);

-- Location: LABCELL_X12_Y2_N33
\FD|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|somaUm|Add0~5_sumout\ = SUM(( \FD|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))
-- \FD|somaUm|Add0~6\ = CARRY(( \FD|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \FD|somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \FD|somaUm|Add0~2\,
	sumout => \FD|somaUm|Add0~5_sumout\,
	cout => \FD|somaUm|Add0~6\);

-- Location: MLABCELL_X13_Y2_N9
\FD|MuxProxPC|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[1]~4_combout\ = ( \FD|somaUm|Add0~5_sumout\ & ( \FD|ROM|memROM~9_combout\ & ( (((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\)) # (\FD|ROM|memROM~1_combout\)) # 
-- (\FD|MuxProxPC|saida_MUX[2]~0_combout\) ) ) ) # ( !\FD|somaUm|Add0~5_sumout\ & ( \FD|ROM|memROM~9_combout\ & ( (!\FD|MuxProxPC|saida_MUX[2]~0_combout\ & (\FD|ROM|memROM~1_combout\ & (!\FD|MuxProxPC|saida_MUX[2]~1_combout\ & 
-- \FD|MuxProxPC|saida_MUX[3]~2_combout\))) ) ) ) # ( \FD|somaUm|Add0~5_sumout\ & ( !\FD|ROM|memROM~9_combout\ & ( ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\)) # (\FD|MuxProxPC|saida_MUX[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101111100000000001000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	datac => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	datae => \FD|somaUm|ALT_INV_Add0~5_sumout\,
	dataf => \FD|ROM|ALT_INV_memROM~9_combout\,
	combout => \FD|MuxProxPC|saida_MUX[1]~4_combout\);

-- Location: FF_X13_Y2_N11
\FD|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N3
\FD|MuxProxPC|saida_MUX[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|saida_MUX[2]~5_combout\ = ( \FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( \FD|somaUm|Add0~9_sumout\ ) ) # ( !\FD|MuxProxPC|saida_MUX[2]~0_combout\ & ( (!\FD|MuxProxPC|saida_MUX[2]~1_combout\ & ((!\FD|MuxProxPC|saida_MUX[3]~2_combout\ & 
-- (\FD|somaUm|Add0~9_sumout\)) # (\FD|MuxProxPC|saida_MUX[3]~2_combout\ & ((\FD|ROM|memROM~10_combout\))))) # (\FD|MuxProxPC|saida_MUX[2]~1_combout\ & (\FD|somaUm|Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101010101010001110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|somaUm|ALT_INV_Add0~9_sumout\,
	datab => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \FD|ROM|ALT_INV_memROM~10_combout\,
	datad => \FD|MuxProxPC|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \FD|MuxProxPC|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \FD|MuxProxPC|saida_MUX[2]~5_combout\);

-- Location: FF_X13_Y2_N5
\FD|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|MuxProxPC|saida_MUX[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N51
\FD|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~0_combout\ = ( \FD|PC|DOUT[1]~DUPLICATE_q\ & ( (\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|PC|DOUT[3]~DUPLICATE_q\ & !\FD|PC|DOUT\(0))) ) ) # ( !\FD|PC|DOUT[1]~DUPLICATE_q\ & ( (\FD|PC|DOUT[2]~DUPLICATE_q\ & (!\FD|PC|DOUT[3]~DUPLICATE_q\ & 
-- \FD|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \FD|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \FD|PC|ALT_INV_DOUT\(0),
	dataf => \FD|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \FD|ROM|memROM~0_combout\);

-- Location: MLABCELL_X13_Y2_N36
\FD|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~2_combout\ = (\FD|ROM|memROM~0_combout\ & \FD|ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|ALT_INV_memROM~0_combout\,
	datab => \FD|ROM|ALT_INV_memROM~1_combout\,
	combout => \FD|ROM|memROM~2_combout\);

-- Location: IOIBUF_X16_Y45_N92
\entrada_dados[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(0),
	o => \entrada_dados[0]~input_o\);

-- Location: IOIBUF_X54_Y20_N55
\entrada_dados[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(1),
	o => \entrada_dados[1]~input_o\);

-- Location: IOIBUF_X42_Y45_N18
\entrada_dados[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(2),
	o => \entrada_dados[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\entrada_dados[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(3),
	o => \entrada_dados[3]~input_o\);

-- Location: IOIBUF_X32_Y45_N41
\entrada_dados[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(4),
	o => \entrada_dados[4]~input_o\);

-- Location: IOIBUF_X46_Y45_N92
\entrada_dados[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(5),
	o => \entrada_dados[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\entrada_dados[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(6),
	o => \entrada_dados[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\entrada_dados[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(7),
	o => \entrada_dados[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\entrada_dados[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(8),
	o => \entrada_dados[8]~input_o\);

-- Location: IOIBUF_X43_Y45_N1
\entrada_dados[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(9),
	o => \entrada_dados[9]~input_o\);

-- Location: MLABCELL_X45_Y22_N0
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


