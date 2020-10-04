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
  -- store-----------------------------0010 grava valor         OK
  -- inc  -----------------------------0011                     OK
  -- je   -----------------------------0100                     OK
  -- load -----------------------------0101 carrega valor       OK
  -- jmp  -----------------------------0110                     OK


ARCHITECTURE assincrona OF memoriaROM IS

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF std_logic_vector(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        
        --        OPCODE  REGA  REGB  REGC    IMED/EndPerf
        tmp(0) := leaw  & NOP & NOP & R01 & b"0000000010" ; --carregando 2 no RegC 0001                uwuwuwuwuwuuwuwuwuwuwuwuwuwuw
        tmp(1) := leaw  & NOP & NOP & R02 & b"0000000010" ; --carregando 2 no RegC 0010
        tmp(2) := leaw  & NOP & NOP & R03 & b"0000000101" ; --carregando 5 no RegC 0011
        tmp(3) := je    & R01 & R02 & NOP & b"0000000101" ; --compara se 2 =2 pula para o temp 5
        tmp(4) := leaw  & NOP & NOP & R03 & b"0000000011" ; -- se nao igual grava 3
        tmp(5) := store & R03 & NOP & NOP & b"0000000000" ; -- se igual grava 5
        tmp(6) := jmp   & NOP & NOP & NOP & b"0000000000" ;


        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;