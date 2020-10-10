LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constantes.ALL;

ENTITY decodificador IS
  GENERIC (
    DECODE_WIDTH : NATURAL := 11
  );
  --4 bits OpCode e 7 bits end periferico

  --6 bits enderecoRAM
  --1 bit selMUX
  --1 bit habRegHEX
  --1 bit habRegLED
  --1 bit habLeituraRAM
  --1 bit habEscritaRAM
  --1 bit habilitaLeitura
  --1 bit limpaLeitura
  --13 BITS TOTAIS >.> UWU

  PORT (

    entrada : IN std_logic_vector(DECODE_WIDTH - 1 DOWNTO 0);

    decodificadorControle : OUT std_logic_vector(20 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF decodificador IS

alias enderecoRAM : std_logic_vector(5 downto 0) is decodificadorControle(5 downto 0);
alias selMUX : std_logic_vector is decodificadorControle(7 downto 6);
alias selMUXtempo : std_logic is decodificadorControle(8);
alias habRegHEX : std_logic is decodificadorControle(9);
alias habRegLED : std_logic is decodificadorControle(10);
alias habLeituraRAM : std_logic is decodificadorControle(11);
alias habEscritaRAM : std_logic is decodificadorControle(12);
alias habLeituraInterface : std_logic is decodificadorControle(13);
alias limpaLeituraInterface : std_logic is decodificadorControle(14);
alias habReg0 : std_logic is decodificadorControle(15);
alias habReg1 : std_logic is decodificadorControle(16);
alias habReg2 : std_logic is decodificadorControle(17);
alias habReg3 : std_logic is decodificadorControle(18);
alias habReg4 : std_logic is decodificadorControle(19);
alias habReg5 : std_logic is decodificadorControle(20);



  ALIAS endereco : std_logic_vector(6 DOWNTO 0) IS entrada(6 DOWNTO 0);
  ALIAS opcode : std_logic_vector(3 DOWNTO 0) IS entrada(10 DOWNTO 7);

BEGIN

  -- -------------Endereçamento------------
  -- BASE TEMPO ------------------------[0]
  -- HEX -----------------------------[1~6]
  -- LED ------------------------------[7]
  -- SW  ------------------------------[8]
  -- KEY ------------------------------[9]
  -- BASE F ---------------------------[10]
  -- RAM -----------------------------[11~63]

  selMux <= "01" WHEN (unsigned(endereco) >= 11) ELSE
            "10" WHEN (unsigned(endereco) = 8) ELSE
            "11" WHEN (unsigned(endereco) = 9)  ELSE 
    "00";

  selMUXtempo <= '1' WHEN (unsigned(endereco) = 10) ELSE '0';
  

  habRegHEX <= '1' WHEN (unsigned(endereco) >= 1 AND unsigned(endereco) <= 6) AND opcode = wr ELSE
    '0';

  habRegLED <= '1' WHEN (unsigned(endereco) = 7) AND opcode = wr ELSE
    '0';

  habLeituraRAM <= '1' WHEN (unsigned(endereco) >= 11 AND opcode = rd) ELSE
    '0';

  habEscritaRAM <= '1' WHEN (unsigned(endereco) >= 11 AND opcode = wr) ELSE
    '0';

  habLeituraInterface <= '1' WHEN (unsigned(endereco) = 0 AND opcode = rd) or (unsigned(endereco) = 10 AND opcode = rd)  ELSE
    '0';

  limpaLeituraInterface <= '1' WHEN (unsigned(endereco) = 0 AND opcode = cl) or (unsigned(endereco) = 10 AND opcode = cl) ELSE
    '0';
  habReg0 <= '1' WHEN (unsigned(endereco) =1 AND opcode = wr) ELSE
    '0';
  habReg1 <= '1' WHEN (unsigned(endereco) = 2 AND opcode = wr) ELSE
    '0';
  habReg2 <= '1' WHEN (unsigned(endereco) = 3 AND opcode = wr) ELSE
    '0';
  habReg3 <= '1' WHEN (unsigned(endereco) = 4 AND opcode = wr) ELSE
    '0';
  habReg4 <= '1' WHEN (unsigned(endereco) = 5 AND opcode = wr) ELSE
    '0';
  habReg5 <= '1' WHEN (unsigned(endereco) = 6 AND opcode = wr) ELSE
    '0';
  



  --decodificador port map 
  -- interfaceTempo
  --RAM
  -- LED
END ARCHITECTURE;