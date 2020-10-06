LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constantes.ALL;
ENTITY memoriaROM IS
    GENERIC (
        dataWidth : NATURAL := 8;
        addrWidth : NATURAL := 3
    );
    PORT (
        Endereco : IN std_logic_vector (addrWidth - 1 DOWNTO 0);
        Dado : OUT std_logic_vector (dataWidth - 1 DOWNTO 0)
    );
END ENTITY;
  ---------------INSTRUÇÕES---------------
  ----------------------------------------
  -- leaw -----------------------------0000                     OK
  -- add  -----------------------------0001                     OK
  -- rw--------------------------------0010 grava/escreve valor OK
  -- inc  -----------------------------0011                     OK
  -- je   -----------------------------0100                     OK
  -- rd -------------------------------0101 carrega/le valor    OK
  -- jmp  -----------------------------0110                     OK
  -- nope -----------------------------0111
  -- cl -------------------------------1000 limpa

--   Testar:
--   HEX            OK
--   RAM            OK
--   Base tempo

ARCHITECTURE assincrona OF memoriaROM IS

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF std_logic_vector(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        
        --        OPCODE  REGA  REGB  REGC    IMED/EndPerf
        tmp(0) := leaw  & NOP & NOP & R01 & b"0000000011" ;
        tmp(1) := leaw  & NOP & NOP & R02 & b"0000000000" ;
        tmp(2) := rd    & NOP & NOP & R03 & b"0000000000" ;
        tmp(3) := cl    & NOP & NOP & R03 & b"0000000000" ;
        tmp(4) := je    & R02 & R03 & NOP & b"0000000010" ;
        tmp(5) := inc   & R01 & NOP & R01 & b"0000000000" ;
        tmp(6) := wr    & R01 & NOP & NOP & b"0000000010" ;
        tmp(7) := jmp   & NOP & NOP & NOP & b"0000000010" ;







    
        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;