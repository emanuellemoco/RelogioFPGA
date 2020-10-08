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
        tmp(129) := leaw & NOP & NOP & R09 & b"0000001101"; --key 1 - segundo 
        tmp(130) := je   & R08 & R09 & NOP & b"0011001000"; --goto tmp(200) 
        tmp(131) := leaw & NOP & NOP & R09 & b"0000001011"; --key 2 - minuto
        tmp(132) := je   & R08 & R09 & NOP & b"0011110101"; --goto tmp(245)         
        tmp(133) := leaw & NOP & NOP & R09 & b"0000000111"; --key 3 - hora
        tmp(134) := je   & R08 & R09 & NOP & b"0100001001"; --goto tmp(265)
        tmp(135) := leaw & NOP & NOP & R09 & b"0000001110"; --key 0 - reseta
        tmp(136) := je   & R08 & R09 & NOP & b"0010010110"; --goto tmp(150)
        tmp(137) := leaw & NOP & NOP & R09 & b"0000000000"; --key 0 - reseta
        tmp(138) := rd   & NOP & NOP & R08 & b"0000001000";  --********* -- 8 - SW   
        tmp(139) := je   & R08 & R09 & NOP & b"0000000110"; --goto tmp(06)
        tmp(140) := jmp  & NOP & NOP & NOP & b"0010000000"; --goto tmp(128) 
        
        -- Zerando o horario
        tmp(150) := leaw & NOP & NOP & R01 & b"0000000000";
        tmp(151) := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(152) := leaw & NOP & NOP & R03 & b"0000000000";
        tmp(153) := leaw & NOP & NOP & R04 & b"0000000000";
        tmp(154) := leaw & NOP & NOP & R05 & b"0000000000";
        tmp(155) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(156) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(157) := wr   & R02 & NOP & NOP & b"0000000010";
        tmp(158) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(159) := wr   & R04 & NOP & NOP & b"0000000100";
        tmp(160) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(161) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(162) := jmp  & NOP & NOP & NOP & b"0011001100"; --goto tmp(204)


        
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

        ---------- se for mais que 59 segundos zera 
        tmp(240) := leaw & NOP & NOP & R01 & b"0000000000"; --*********
        tmp(241) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(242) := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(243) := wr   & R02 & NOP & NOP & b"0000000010";
        tmp(244) := jmp  & NOP & NOP & NOP & b"0011001100"; --goto tmp(204)
    


        --Checar se o minuto é == 9
        tmp(245) := leaw & NOP & NOP & R09 & b"0000001001";  --********* -- carrega 9
        tmp(246) := je   & R09 & R03 & NOP & b"0011111100"; --goto tmp(252) --se R1 == 9
        tmp(247) := inc  & R03 & NOP & R03 & b"0000000000";
        tmp(248) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(249) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(250) := leaw & NOP & NOP & R10 & b"0000000000";
        tmp(251) := jmp  & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)

        --Zera unidade de minuto e soma 01 na dezena do minuto
        tmp(252) := leaw & NOP & NOP & R03 & b"0000000000"; --*********
        ------- ver dezena do minuto se é 5
        tmp(253) := leaw & NOP & NOP & R07 & b"0000000101";
        tmp(254) := je   & R04 & R07 & NOP & b"0100000100"; --goto tmp(260) 
        tmp(255) := inc  & R04 & NOP & R04 & b"0000000000";
        tmp(256) := wr   & R04 & NOP & NOP & b"0000000100";
        tmp(257) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(258) := jmp  & NOP & NOP & NOP & b"0011111001"; --goto tmp(249)

        ---------- se for mais que 59 minutos zera 
        tmp(260) := leaw & NOP & NOP & R03 & b"0000000000"; --*********
        tmp(261) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(262) := leaw & NOP & NOP & R04 & b"0000000000";
        tmp(263) := wr   & R04 & NOP & NOP & b"0000000100";
        tmp(264) := jmp  & NOP & NOP & NOP & b"0011111001"; --goto tmp(249)


    
        ------- ver dezena do hora  é 2 ************
        tmp(265) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(266) := je   & R06 & R07 & NOP & b"0100001100"; --goto tmp(268) 
        tmp(267) := jmp  & NOP & NOP & NOP & b"0100010100"; --goto tmp(276)

        ----------Checa se unidade da hora for 3 e zera
        tmp(268) := leaw & NOP & NOP & R07 & b"0000000011"; --*********
        tmp(269) := je   & R05 & R07 & NOP & b"0100001111"; --goto tmp(271)
        tmp(270) := jmp  & NOP & NOP & NOP & b"0100010100"; --goto tmp(276)

        -- Zera
        tmp(271) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(272) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(273) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(274) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(275) := jmp  & NOP & NOP & NOP & b"0100011000"; --goto tmp(280)
        
        --Checar se a unidade da hora é == 9
        tmp(276) := leaw & NOP & NOP & R09 & b"0000001001";  --********* -- carrega 9
        tmp(277) := je   & R09 & R05 & NOP & b"0100011011"; --goto tmp(283) --se R1 == 9
        tmp(278) := inc  & R05 & NOP & R05 & b"0000000000";
        tmp(279) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(280) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(281) := leaw & NOP & NOP & R10 & b"0000000000";
        tmp(282) := jmp  & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)
        
        --Zera a unidade hora e +1 no dezena
        tmp(283) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(284) := inc  & R06 & NOP & R06 & b"0000000000";
        tmp(285) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(286) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(287) := jmp  & NOP & NOP & NOP & b"0100011000"; --goto tmp(280)




                                    
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;