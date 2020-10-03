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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/03/2020 18:58:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL decodificadorEnd : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL entrada_dados : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL saida_dados : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT CPU
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	decodificadorEnd : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	entrada_dados : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	saida_dados : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	decodificadorEnd => decodificadorEnd,
	entrada_dados => entrada_dados,
	saida_dados => saida_dados
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 20000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- entrada_dados[9]
t_prcs_entrada_dados_9: PROCESS
BEGIN
	entrada_dados(9) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_9;
-- entrada_dados[8]
t_prcs_entrada_dados_8: PROCESS
BEGIN
	entrada_dados(8) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_8;
-- entrada_dados[7]
t_prcs_entrada_dados_7: PROCESS
BEGIN
	entrada_dados(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_7;
-- entrada_dados[6]
t_prcs_entrada_dados_6: PROCESS
BEGIN
	entrada_dados(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_6;
-- entrada_dados[5]
t_prcs_entrada_dados_5: PROCESS
BEGIN
	entrada_dados(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_5;
-- entrada_dados[4]
t_prcs_entrada_dados_4: PROCESS
BEGIN
	entrada_dados(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_4;
-- entrada_dados[3]
t_prcs_entrada_dados_3: PROCESS
BEGIN
	entrada_dados(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_3;
-- entrada_dados[2]
t_prcs_entrada_dados_2: PROCESS
BEGIN
	entrada_dados(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_2;
-- entrada_dados[1]
t_prcs_entrada_dados_1: PROCESS
BEGIN
	entrada_dados(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_1;
-- entrada_dados[0]
t_prcs_entrada_dados_0: PROCESS
BEGIN
	entrada_dados(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_dados_0;
END CPU_arch;
