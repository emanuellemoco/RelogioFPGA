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
-- leaw -----------------------------0000                     
-- add  -----------------------------0001                     
-- rw--------------------------------0010 
-- inc  -----------------------------0011                     
-- je   -----------------------------0100                     
-- rd -------------------------------0101    
-- jmp  -----------------------------0110                     
-- nope -----------------------------0111
-- cl -------------------------------1000
-- andw -----------------------------1001
-- notw -----------------------------1010
-- sub  -----------------------------1011
-- func -----------------------------1100
-- ret  -----------------------------1101


  -- ------------Endereçamento------------
  -- BASE TEMPO -----------------------[0]
  -- HEX ----------------------------[1~6]
  -- LED ------------------------------[7]
  -- SW  ------------------------------[8]
  -- KEY ------------------------------[9]
  -- BASE FAST -----------------------[10]
  -- RAM --------------------------[11~63]

architecture assincrona of memoriaROM is

    type blocoMemoria is array(0 to 2 ** addrWidth - 1) of std_logic_vector(dataWidth - 1 downto 0);

    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin
        
        
        -- LAÇO PRINCPAL: checa os segundos e os sw
        
        -- Zera os registradores do HEX e o LED AM/PM
        tmp(0)  := leaw & NOP & NOP & R15 & b"0000000000";
        tmp(1)  := leaw & NOP & NOP & R14 & b"0000000000"; 
        tmp(2)  := leaw & NOP & NOP & R01 & b"0000000000";
        tmp(3)  := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(4)  := leaw & NOP & NOP & R03 & b"0000000000";
        tmp(5)  := leaw & NOP & NOP & R04 & b"0000000000";
        tmp(6)  := leaw & NOP & NOP & R05 & b"0000000000";
        tmp(7)  := leaw & NOP & NOP & R06 & b"0000000000";
        --Checa se o SW do Fast está ligado                                                 
        tmp(8)  := leaw & NOP & NOP & R07 & b"0000000100";                              
        tmp(9)  := rd   & NOP & NOP & R08 & b"0000001000"; --8 - SW                     
        tmp(10) := andw & R07 & R08 & R09 & b"0000000000"; 
        tmp(11) := je   & R09 & R07 & NOP & b"0000011010"; --goto tmp(26)         
        --Checa se 01 segundo passou
        tmp(12) := leaw & NOP & NOP & R07 & b"0000000001"; 
        tmp(13) := rd   & NOP & NOP & R08 & b"0000000000";
        tmp(14) := je   & R07 & R08 & NOP & b"0001000000"; --goto tmp(64)         
        -- Checa se o input do SET TIME mudou 
        tmp(15) := leaw & NOP & NOP & R07 & b"0000000001"; 
        tmp(16) := rd   & NOP & NOP & R08 & b"0000001000"; --8 - SW 
        tmp(17) := je   & R07 & R08 & NOP & b"0010000000"; --goto tmp(128)
        ------Checa se mostra a hora em AM/PM ou 24h
        tmp(19) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(20) := rd   & NOP & NOP & R08 & b"0000001000";
        tmp(21) := andw & R07 & R08 & R09 & b"0000000000";
        tmp(22) := je   & R09 & R07 & NOP & b"0000101000"; --goto tmp(40)
        tmp(23) := leaw & NOP & NOP & R07 & b"0011111111"; 
        tmp(24) := je   & R07 & R14 & NOP & b"0101001010"; --goto tmp(330)
        tmp(25) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)

        
        
        --Checa se 01 segundo FAST passou
        tmp(26) := leaw & NOP & NOP & R07 & b"0000000001"; --*********
        tmp(27) := rd   & NOP & NOP & R08 & b"0000001010"; -- SW 10 - muda base tempo
        tmp(28) := je   & R07 & R08 & NOP & b"0001000000"; --goto tmp(64)
        tmp(29) := jmp  & NOP & NOP & NOP & b"0000001111"; --goto tmp(15) 

       
        -- Checa se mudou de  24h para AM/PM  
        tmp(40) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(41) := je   & R07 & R14 & NOP & b"0101111100"; --goto tmp(380) vai para o convert de 24h pra AM/PM
        tmp(42) := leaw & NOP & NOP & R14 & b"0011111111";
        tmp(43) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  -- Se n, continua o laço normal


        
        -------------- ATUALIZA HORARIO NO HEX -------------------------------
        -- Checa se a unidade do segundo é 9
        tmp(64) := cl   & NOP & NOP & NOP & b"0000000000"; --*********
        tmp(65) := leaw & NOP & NOP & R07 & b"0000001001";  --********* -- carrega 9
        tmp(66) := je   & R01 & R07 & NOP & b"0001000110"; --goto tmp(70)        
        tmp(67) := inc  & R01 & NOP & R01 & b"0000000000"; 
        tmp(68) := wr   & R01 & NOP & NOP & b"0000000001";
        tmp(69) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8) 
        -- Checa se a dezena do segundo é 5
        tmp(70) := leaw & NOP & NOP & R01 & b"0000000000";  
        tmp(71) := wr   & R01 & NOP & NOP & b"0000000001";  
        tmp(72) := leaw & NOP & NOP & R07 & b"0000000101";  --********* -- carrega 5
        tmp(73) := je   & R02 & R07 & NOP & b"0001001101"; --goto tmp(77)
        tmp(74) := inc  & R02 & NOP & R02 & b"0000000010"; 
        tmp(75) := wr   & R02 & NOP & NOP & b"0000000010";
        tmp(76) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  
        -- Checa se a unidade da minuto é 9  
        tmp(77) := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(78) := wr   & R02 & NOP & NOP & b"0000000010";    
        tmp(79) := leaw & NOP & NOP & R07 & b"0000001001";  --********* -- carrega 9
        tmp(80) := je   & R03 & R07 & NOP & b"0001010100"; --goto tmp(84)
        tmp(81) := inc  & R03 & NOP & R03 & b"0000000000"; 
        tmp(82) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(83) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  

        -- Checa se a dezena da minuto é 5
        tmp(84) := leaw & NOP & NOP & R03 & b"0000000000";
        tmp(85) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(86) := leaw & NOP & NOP & R07 & b"0000000101"; --********* -- carrega 5
        tmp(87) := je   & R04 & R07 & NOP & b"0001011011"; --goto tmp(91)
        tmp(88) := inc  & R04 & NOP & R04 & b"0000000000"; 
        tmp(89) := wr   & R04 & NOP & NOP & b"0000000100";
        tmp(90) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  

        ----- Limpa a dezena do minuto
        tmp(91) := leaw & NOP & NOP & R04 & b"0000000000";
        tmp(92) := wr   & R04 & NOP & NOP & b"0000000100";
        ------Checa se mostra a hora em AM/PM ou 24h
        tmp(93) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(94) := rd   & NOP & NOP & R08 & b"0000001000";
        tmp(95) := andw & R07 & R08 & R09 & b"0000000000";
        tmp(96) := je   & R09 & R07 & NOP & b"0100101100"; --goto tmp(300)



        -- MUDA A PARTIR DAQUI
        ------- ver dezena da hora  é 2    
        tmp(99)  := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(100) := je   & R06 & R07 & NOP & b"0001100110"; --goto tmp(102) 
        tmp(101) := jmp  & NOP & NOP & NOP & b"0001101110"; --goto tmp(110)

        ----------Checa se unidade da hora for 3 e zera
        tmp(102) := leaw & NOP & NOP & R07 & b"0000000011"; --*********
        tmp(103) := je   & R05 & R07 & NOP & b"0001101001"; --goto tmp(105)
        tmp(104) := jmp  & NOP & NOP & NOP & b"0001101110"; --goto tmp(110)

        -- Zera
        tmp(105) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(106) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(107) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(108) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(109) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  
        
        --Checar se a unidade da hora é == 9
        tmp(110) := leaw & NOP & NOP & R09 & b"0000001001"; --********* -- carrega 9
        tmp(111) := je   & R09 & R05 & NOP & b"0001110011"; --goto tmp(115) 
        tmp(112) := inc  & R05 & NOP & R05 & b"0000000000";
        tmp(113) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(114) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  
        
        --Zera a unidade hora e +1 no dezena
        tmp(115) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(116) := inc  & R06 & NOP & R06 & b"0000000000";
        tmp(117) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(118) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(119) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  
        

        ------------------------SETTA HORARIO---------------------------
        --Setta o horário 
        tmp(128) := rd   & NOP & NOP & R08 & b"0000001001"; --********* -- 9 - KEY    "0000001111"
        tmp(129) := leaw & NOP & NOP & R09 & b"0000001101"; --key 1 - segundo 
        tmp(130) := je   & R08 & R09 & NOP & b"0011001000"; --goto tmp(200) 
        tmp(131) := leaw & NOP & NOP & R09 & b"0000001011"; --key 2 - minuto
        tmp(132) := je   & R08 & R09 & NOP & b"0011110101"; --goto tmp(245)         
        tmp(133) := leaw & NOP & NOP & R09 & b"0000000111"; --key 3 - hora
        tmp(134) := je   & R08 & R09 & NOP & b"0100001001"; --goto tmp(265)
        tmp(135) := leaw & NOP & NOP & R09 & b"0000001110"; --key 0 - reseta
        tmp(136) := je   & R08 & R09 & NOP & b"0010010110"; --goto tmp(150)
        tmp(137) := leaw & NOP & NOP & R09 & b"0000000001"; --key 0 - reseta
        tmp(138) := rd   & NOP & NOP & R08 & b"0000001000"; --8 - SW
        tmp(139) := andw & R08 & R09 & R10 & b"0000000000"; 
        tmp(140) := je   & R09 & R10 & NOP & b"0010000000"; --goto tmp(128)
        tmp(141) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)   
        
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
        tmp(206) := func & NOP & NOP & NOP & b"0011011100"; 
        tmp(207) := jmp  & NOP & NOP & NOP &  b"0010000000"; --goto tmp(128)

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
        tmp(235) := leaw & NOP & NOP & R11 & b"0001000000"; --********* 
        tmp(236) := ret  & R11 & R10 & NOP & b"0010000000"; --********* --goto tmp(128)
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
        tmp(246) := je   & R09 & R03 & NOP & b"0011111101"; --goto tmp(253) --se R1 == 9
        tmp(247) := inc  & R03 & NOP & R03 & b"0000000000";
        tmp(248) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(249) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(250) := leaw & NOP & NOP & R10 & b"0000000000";
        tmp(251) := func & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)
        tmp(252) := jmp  & NOP & NOP & NOP & b"0010000000"; --goto tmp(128)


        --Zera unidade de minuto e soma 01 na dezena do minuto
        tmp(253) := leaw & NOP & NOP & R03 & b"0000000000"; --*********
        ------- ver dezena do minuto se é 5
        tmp(254) := leaw & NOP & NOP & R07 & b"0000000101";
        tmp(255) := je   & R04 & R07 & NOP & b"0100000100"; --goto tmp(260) 
        tmp(256) := inc  & R04 & NOP & R04 & b"0000000000";
        tmp(257) := wr   & R04 & NOP & NOP & b"0000000100";
        tmp(258) := wr   & R03 & NOP & NOP & b"0000000011";
        tmp(259) := jmp  & NOP & NOP & NOP & b"0011111001"; --goto tmp(249)

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
        tmp(277) := je   & R09 & R05 & NOP & b"0100011100"; --goto tmp(284) --se R1 == 9
        tmp(278) := inc  & R05 & NOP & R05 & b"0000000000";
        tmp(279) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(280) := leaw & NOP & NOP & R09 & b"0000000000";
        tmp(281) := leaw & NOP & NOP & R10 & b"0000000000";
        tmp(282) := func & NOP & NOP & NOP & b"0011011100"; --goto tmp(220)
        tmp(283) := jmp  & NOP & NOP & NOP & b"0010000000"; --goto tmp(128)
        
        
        --Zera a unidade hora e +1 no dezena
        tmp(284) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(285) := inc  & R06 & NOP & R06 & b"0000000000";
        tmp(286) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(287) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(288) := jmp  & NOP & NOP & NOP & b"0100011000"; --goto tmp(280)

        --------------------fim SETTA HORARIO---------------------------
        
        
        ----Checa se a dezena da hora é 1
        tmp(300) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(301) := je   & R06 & R07 & NOP & b"0100101111"; --goto tmp(303) 
        tmp(302) := jmp  & NOP & NOP & NOP & b"0001101110"; --goto tmp(110)

        --Checa se a unidade da hora for 1 e muda AM/PM
        tmp(303) := leaw & NOP & NOP & R07 & b"0000000001"; --*********
        tmp(304) := je   & R05 & R07 & NOP & b"0101000011"; --goto tmp(323)
        ----------Checa se unidade da hora for 2 e zera
        tmp(305) := leaw & NOP & NOP & R07 & b"0000000010"; --*********
        tmp(306) := je   & R05 & R07 & NOP & b"0100110100"; --goto tmp(310)
        tmp(307) := jmp  & NOP & NOP & NOP & b"0100111001"; --goto tmp(313)

        -- Zera
        tmp(308) := leaw & NOP & NOP & R05 & b"0000000001"; 
        tmp(309) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(310) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(311) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(312) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  

        --Checar se a unidade da hora é == 9
        tmp(313) := leaw & NOP & NOP & R09 & b"0000001001"; --********* -- carrega 9
        tmp(314) := je   & R09 & R05 & NOP & b"0100111110"; --goto tmp(318) 
        tmp(315) := inc  & R05 & NOP & R05 & b"0000000000";
        tmp(316) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(317) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)  

        --Zera a unidade hora e +1 no dezena
        tmp(318) := leaw & NOP & NOP & R05 & b"0000000000"; 
        tmp(319) := inc  & R06 & NOP & R06 & b"0000000000";
        tmp(320) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(321) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(322) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8) 

        -- Inverte o LED
        tmp(323) := notw & R15 & NOP & R15 & b"0000000000"; 
        tmp(324) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(325) := jmp  & NOP & NOP & NOP & b"0100111001"; --goto tmp(313)

        --------------------------------------------------------------
        ----------- Se mudou de AM/PM para 24 horas -------------------
        -- Checa se é AM ou PM
        -- tmp(328) := leaw & NOP & NOP & R15 & b"0000000000";
        -- tmp(329) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(330) := notw & R14 & NOP & R14 & b"0000000000"; 
        tmp(331) := leaw & NOP & NOP & R07 & b"0000000000"; 
        tmp(332) := je   & R07 & R15 & NOP & b"0101101101"; --goto tmp(365) 
        -- Se for PM

       ----- Checa se a dezena da hora é 0
       tmp(333) := leaw & NOP & NOP & R07 & b"0000000000";
       tmp(334) := je   & R07 & R06 & NOP & b"0101010000"; --goto tmp(336)
       tmp(335) := jmp  & NOP & NOP & NOP & b"0101100001"; --goto tmp(353) 

       -------- Checa se a unidade da hora é 8 -> horario é 20 
       tmp(336) := leaw & NOP & NOP & R07 & b"0000001000";
       tmp(337) := je   & R07 & R05 & NOP & b"0101010110"; --goto tmp(342)
       tmp(338) := jmp  & NOP & NOP & NOP & b"0101010011"; --goto tmp(339)
       

       -------- Checa se a unidade da hora é 9 -> horario é 21 
       tmp(339) := leaw & NOP & NOP & R07 & b"0000001001";
       tmp(340) := je   & R07 & R05 & NOP & b"0101011011"; --goto tmp(347) 
       tmp(341) := jmp  & NOP & NOP & NOP & b"0101100001"; --goto tmp(353)
       

       ---- 8 pm vira 20
       tmp(342) := leaw & NOP & NOP & R06 & b"0000000010";
       tmp(343) := leaw & NOP & NOP & R05 & b"0000000000";
       tmp(344) := wr   & R05 & NOP & NOP & b"0000000101";
       tmp(345) := wr   & R06 & NOP & NOP & b"0000000110";
       tmp(346) := jmp  & NOP & NOP & NOP & b"0101110111"; --goto tmp(375)

       ---- 9 pm vira 21
       tmp(347) := leaw & NOP & NOP & R06 & b"0000000010";
       tmp(348) := leaw & NOP & NOP & R05 & b"0000000001";
       tmp(349) := wr   & R05 & NOP & NOP & b"0000000101";
       tmp(350) := wr   & R06 & NOP & NOP & b"0000000110";
       tmp(351) := jmp  & NOP & NOP & NOP & b"0101110111"; --goto tmp(375)

        ----- Checa se a dezena da hora é 1
        tmp(353) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(354) := je   & R07 & R06 & NOP & b"0101100100"; --goto tmp(356) 
        tmp(355) := jmp  & NOP & NOP & NOP & b"0101100110"; --goto tmp(358)

       ----- Checa se a unidade da hora é 2
        tmp(356) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(357) := je   & R07 & R05 & NOP & b"0101110111"; --goto tmp(375)
        --Else (somar 12 menos quando for 12)
        tmp(358) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(359) := add  & R06 & R07 & R06 & b"0000000000";
        tmp(360) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(361) := add  & R05 & R07 & R05 & b"0000000000";
        tmp(362) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(363) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(364) := jmp  & NOP & NOP & NOP & b"0101110111"; --goto tmp(375)

        -- Se for AM (se for 12 vira 00)
        --- Checa se a dezena da hora é 1
        tmp(365) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(366) := je   & R07 & R06 & NOP & b"0101110000"; --goto tmp(368) 
        tmp(367) := jmp  & NOP & NOP & NOP & b"0101110111"; --goto tmp(375)
        ----- Checa se a unidade da hora é 2
        tmp(368) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(369) := je   & R07 & R05 & NOP & b"0101110011"; --goto tmp(371)
        tmp(370) := jmp  & NOP & NOP & NOP & b"0101110111"; --goto tmp(375)
        ----- zera hora (00)
        tmp(371) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(372) := leaw & NOP & NOP & R05 & b"0000000000";
        tmp(373) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(374) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(375) := leaw & NOP & NOP & R15 & b"0000000000";
        tmp(376) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(377) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)
        ----------- FIM Se mudou de AM/PM para 24 horas -------------------

        

        ----------- Se mudou de 24 horas para AM/PM  -------------------
        -- Checa se a dezena da hora é 2
        tmp(380) := notw & R14 & NOP & R14 & b"0000000000";
        tmp(381) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(382) := je   & R07 & R06 & NOP & b"0110011111"; --goto tmp(415)


        --- Checa se a dezena da hora é = 0     
        tmp(383) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(384) := je   & R07 & R06 & NOP & b"0110000010"; --goto tmp(386)
        tmp(385) := jmp  & NOP & NOP & NOP & b"0110010011"; --goto tmp(403)

        --- Checa se a unidade da hora é = 0     
        tmp(386) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(387) := je   & R07 & R05 & NOP & b"0110000101"; --goto tmp(389)
        tmp(388) := jmp  & NOP & NOP & NOP & b"0110010011"; --goto tmp(403)

        ---- Se é 00 no 24 vira 12 AMPM e desliga o led 
        tmp(389) := leaw & NOP & NOP & R06 & b"0000000001";
        tmp(390) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(391) := leaw & NOP & NOP & R05 & b"0000000010";
        tmp(392) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(393) := leaw & NOP & NOP & R15 & b"0000000000";
        tmp(394) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(395) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)


        --- Checa se a dezena da hora é = 1     
        tmp(403) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(404) := je   & R07 & R06 & NOP & b"0110011000"; --goto tmp(408)
        ----- Hora < 1 então apaga os LEDS
        tmp(405) := leaw & NOP & NOP & R15 & b"0000000000";
        tmp(406) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(407) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)

        ---- Checa se a unidade da hora > 1 (ou seja, nao é 0, nem 1)
        tmp(408) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(409) := je   & R07 & R05 & NOP & b"0110010101"; --goto tmp(405) 
        tmp(410) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(411) := je   & R07 & R05 & NOP & b"0110010101"; --goto tmp(405) 
        tmp(412) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(413) := je   & R07 & R05 & NOP & b"0110100111"; --goto tmp(423) 
        tmp(414) := jmp  & NOP & NOP & NOP & b"0110100011"; --goto tmp(419)

        --- Checa se é 20 ou 21 hrs
        tmp(415) := leaw & NOP & NOP & R07 & b"0000000000";
        tmp(416) := je   & R07 & R05 & NOP & b"0110101100"; --goto tmp(428) 
        tmp(417) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(418) := je   & R07 & R05 & NOP & b"0110110001"; --goto tmp(433) 

        ----- Subtrai 12 
        tmp(419) := leaw & NOP & NOP & R07 & b"0000000001";
        tmp(420) := subw & R06 & R07 & R06 & b"0000000000";
        tmp(421) := leaw & NOP & NOP & R07 & b"0000000010";
        tmp(422) := subw & R05 & R07 & R05 & b"0000000000";
        tmp(423) := leaw & NOP & NOP & R15 & b"0011111111";
        ---------- liga LED
        tmp(424) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(425) := wr   & R05 & NOP & NOP & b"0000000101";
        tmp(426) := wr   & R06 & NOP & NOP & b"0000000110";
        tmp(427) := jmp  & NOP & NOP & NOP & b"0000001000"; --goto tmp(8)

        ---- 20 horas vira 8 pm e liga o led
        tmp(428) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(429) := leaw & NOP & NOP & R05 & b"0000001000";
        tmp(430) := leaw & NOP & NOP & R15 & b"0011111111";
        tmp(431) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(432) := jmp  & NOP & NOP & NOP & b"0110101000"; --goto tmp(424)

        ---- 21 horas vira 9 pm e liga o led
        tmp(433) := leaw & NOP & NOP & R06 & b"0000000000";
        tmp(434) := leaw & NOP & NOP & R05 & b"0000001001";
        tmp(435) := leaw & NOP & NOP & R15 & b"0011111111";
        tmp(436) := wr   & R15 & NOP & NOP & b"0000000111";
        tmp(437) := jmp  & NOP & NOP & NOP & b"0110101000"; --goto tmp(424)
        ----------- FIM Se mudou de 24 horas para AM/PM  -------------------

                
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;