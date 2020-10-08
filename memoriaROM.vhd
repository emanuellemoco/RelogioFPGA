library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantes.all;
entity memoriaROM is
    generic (
        dataWidth : natural := 8;
        addrWidth : natural := 3
    );
    port (
        Endereco : in std_logic_vector (addrWidth - 1 downto 0);
        Dado : out std_logic_vector (dataWidth - 1 downto 0)
    );
end entity;
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


  -- -------------Endereçamento------------
  -- BASE TEMPO ------------------------[0]
  -- HEX -----------------------------[1~6]
  -- LED ------------------------------[7]
  -- SW  ------------------------------[8]
  -- KEY ------------------------------[9]
  -- RAM -----------------------------[10~63]


architecture assincrona of memoriaROM is

    type blocoMemoria is array(0 to 2 ** addrWidth - 1) of std_logic_vector(dataWidth - 1 downto 0);

    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin

        --      OPCODE  REGA  REGB  REGC    IMED/EndPerf
        tmp(0)  := leaw & NOP & NOP & R01 & b"1111111000"; --carrega no R01 
        tmp(1)  := wr   & R01 & NOP & NOP & b"0000111100"; --escreve na RAM 60
        tmp(2)  := leaw & NOP & NOP & R05 & b"0000000000";
        tmp(3)  := rd   & NOP & NOP & R06 & b"0000001000";
        tmp(4)  := je   & R06 & R05 & NOP & b"0000000011";
        tmp(5)  := leaw & NOP & NOP & R03 & b"0000001111"; --
        tmp(6)  := rd   & NOP & NOP & R02 & b"0000001001";
        tmp(7)  := je   & R02 & R03 & NOP & b"0000000110";
        tmp(8)  := rd   & NOP & NOP & R04 & b"0000111100";
        tmp(9)  := wr   & R04 & NOP & NOP & b"0000000111";
        tmp(10) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(11) := wr   & R07 & NOP & NOP & b"0000000001";
        tmp(12) := inc  & R07 & NOP & R07 & b"0000000000";
        
        tmp(13) := wr   & R07 & NOP & NOP & b"0000000010";
        tmp(14) := inc  & R07 & NOP & R07 & b"0000000000";
        
        tmp(15) := wr   & R07 & NOP & NOP & b"0000000011";
        tmp(16) := inc  & R07 & NOP & R07 & b"0000000000";

        tmp(17) := wr   & R07 & NOP & NOP & b"0000000100";
        tmp(18) := inc  & R07 & NOP & R07 & b"0000000000";        

        tmp(19) := wr   & R07 & NOP & NOP & b"0000000101";
        tmp(20) := inc  & R07 & NOP & R07 & b"0000000000";        

        tmp(21) := wr   & R07 & NOP & NOP & b"0000000110";
        tmp(22) := inc  & R07 & NOP & R07 & b"0000000000";        

        
        
        --tmp(0) := leaw & NOP & NOP & R01 & b"0000000011";
        --tmp(1) := leaw & NOP & NOP & R02 & b"0000000000";
        --tmp(2) := rd & NOP & NOP & R03 & b"0000000000";
        --tmp(3) := cl & NOP & NOP & R03 & b"0000000000";
        --tmp(4) := je & R02 & R03 & NOP & b"0000000010";
        --tmp(5) := inc & R01 & NOP & R01 & b"0000000000";
        --tmp(6) := wr & R01 & NOP & NOP & b"0000000010";
        --tmp(7) := wr & R01 & NOP & NOP & b"0000000111";
        --tmp(8) := jmp & NOP & NOP & NOP & b"0000000010";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;