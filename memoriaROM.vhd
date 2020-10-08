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



    -- Arrumar horario: 
    -- SW0 p cima 
    -- Cada KEY(3-1) adiciona +1
    -- KEY0 zera tudo
    -- KEY3 ---- KEY2 ----- KEY1 ----- KEY0
    --  h  ----  m  -----  s  ----- ok

    --- H  H ---- M   M  --- S  S
    --- R6 R5 --- R4  R3 --- R2 R1

        --      OPCODE  REGA  REGB  REGC    IMED/EndPerf   
        
        -- LAÇO PRINCPAL: checa os segundos e os sw
        
        -- Zera os registradores do HEX
        tmp(0)  := leaw & NOP & NOP & R01 & b"0000000000";
        tmp(1)  := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(2)  := leaw & NOP & NOP & R03 & b"0000000000";
        tmp(3)  := leaw & NOP & NOP & R04 & b"0000000000";
        tmp(4)  := leaw & NOP & NOP & R05 & b"0000000000";
        tmp(5)  := leaw & NOP & NOP & R06 & b"0000000000";
        --Checa se 01 segundo passou
        tmp(6)  := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(7)  := rd   & NOP & NOP & R08 & b"0000000000"; --*********
        tmp(8)  := je   & R07 & R08 & NOP & b"0001000000"; --goto tmp(64)         
        -- Checa se o input do sw mudou 
        tmp(9)  := rd   & NOP & NOP & R08 & b"0000001000"; --8 - SW
        tmp(10) := je   & R07 & R08 & NOP & b"0010000000"; --goto tmp(128)

        tmp(11) := jmp  & NOP & NOP & NOP & b"0000000110"; --goto tmp(6) 

        --Atualiza o segundo nos HEX!!!ii
        tmp(64) := cl   & NOP & NOP & NOP & b"0000000000"; --*********
        tmp(65) := inc  & R01 & NOP & R01 & b"0000000000"; -----
        tmp(66) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(67) := jmp  & NOP & NOP & NOP & b"0000000110"; --goto tmp(6)

        --Setta o horário 
        tmp(128) := rd   & NOP & NOP & R08 & b"0000001001";  --********* -- 9 - KEY    "0000001111"
        tmp(129) := leaw & NOP & NOP & R09 & b"0000001101"; --key 1 
        tmp(130) := je   & R08 & R09 & NOP & b"0011001000"; --goto tmp(200) --se apertou fazer +1 > antes IFs do tempo 
        tmp(131) := jmp  & NOP & NOP & NOP & b"0010000000"; --goto tmp(128) 
        
        --Checar se o segundo é == 9
        tmp(200) := leaw & NOP & NOP & R09 & b"0000001001";  --********* -- carrega 9
        tmp(201) := je   & R09 & R01 & NOP & b"0011010010"; --goto tmp(210) --se R1 == 9
        tmp(202) := inc  & R01 & NOP & R01 & b"0000000000";
        tmp(203) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(204) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(205) := leaw & NOP & NOP & R10 & b"0000000000";
        tmp(206) := jmp  & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)

        --Zera unidade de segundo e soma 01 na dezena do segundo
        tmp(210) := leaw & NOP & NOP & R01 & b"0000000000"; --*********
        ------- ver dezena do segundo se é 5
        tmp(211) := leaw & NOP & NOP & R07 & b"0000000101";
        tmp(212) := je   & R02 & R07 & NOP & b"0011110000"; --goto tmp(240) 
        tmp(213) := inc  & R02 & NOP & R02 & b"0000000000";
        tmp(214) := wr   & R02 & NOP & NOP & b"0000000010";
        tmp(215) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(216) := jmp  & NOP & NOP & NOP & b"0011001100"; --goto tmp(204)

        ---------- se for mais que 59 segundos zera 
        tmp(240) := leaw & NOP & NOP & R01 & b"0000000000"; --*********
        tmp(241) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(242) := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(243) := wr   & R02 & NOP & NOP & b"0000000010";
        tmp(244) := jmp  & NOP & NOP & NOP & b"0011001100"; --goto tmp(204)
        
        ---------------QUEIMA CLOCK 1
        tmp(220) := leaw & NOP & NOP & R07 & b"1111111111"; --*********
        tmp(221) := leaw & NOP & NOP & R08 & b"0000000000";
        tmp(222) := je   & R07 & R08 & NOP & b"0011100110";  --********* --goto tmp(230)
        tmp(223) := inc  & R08 & NOP & R08 & b"0000000000";
        tmp(224) := jmp  & NOP & NOP & NOP & b"0011011110"; --goto tmp(222)

        ---------------QUEIMA CLOCK 2
        tmp(230) := je   & R07 & R09 & NOP & b"0011101011";  --********* --goto tmp(235)
        tmp(231) := inc  & R09 & NOP & R09 & b"0000000000";
        tmp(232) := leaw & NOP & NOP & R08 & b"0000000000";
        tmp(234) := jmp  & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)

        ---------------QUEIMA CLOCK 3
        tmp(235) := leaw & NOP & NOP & R11 & b"0000000100"; --********* 
        tmp(236) := je   & R11 & R10 & NOP & b"0010000000"; --********* --goto tmp(128)
        tmp(237) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(238) := inc  & R10 & NOP & R10 & b"0000000000";
        tmp(239) := jmp  & NOP & NOP & NOP & b"0011100110"; --goto tmp(230)








                                    
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;