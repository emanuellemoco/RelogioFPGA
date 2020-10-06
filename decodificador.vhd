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

    decodificadorControle : OUT std_logic_vector(18 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF decodificador IS

  ALIAS enderecoRAM : std_logic_vector(5 DOWNTO 0) IS decodificadorControle(5 DOWNTO 0);
  ALIAS selMUX : std_logic IS decodificadorControle(6);
  ALIAS habRegHEX : std_logic IS decodificadorControle(7);
  ALIAS habRegLED : std_logic IS decodificadorControle(8);
  ALIAS habLeituraRAM : std_logic IS decodificadorControle(9);
  ALIAS habEscritaRAM : std_logic IS decodificadorControle(10);
  ALIAS habLeituraInterface : std_logic IS decodificadorControle(11);
  ALIAS limpaLeituraInterface : std_logic IS decodificadorControle(12);
  ALIAS habReg0 : std_logic IS decodificadorControle(13);
  ALIAS habReg1 : std_logic IS decodificadorControle(14);
  ALIAS habReg2 : std_logic IS decodificadorControle(15);
  ALIAS habReg3 : std_logic IS decodificadorControle(16);
  ALIAS habReg4 : std_logic IS decodificadorControle(17);
  ALIAS habReg5 : std_logic IS decodificadorControle(18);
  



  ALIAS endereco : std_logic_vector(6 DOWNTO 0) IS entrada(6 DOWNTO 0);
  ALIAS opcode : std_logic_vector(3 DOWNTO 0) IS entrada(10 DOWNTO 7);

BEGIN

  -- -------------Endereçamento------------
  -- BASE TEMPO ------------------------[0]
  -- HEX -----------------------------[1~6]
  -- LED ------------------------------[7]
  -- RAM -----------------------------[8~63]

  selMux <= '1' WHEN unsigned(endereco) >= 8 ELSE
    '0';

  habRegHEX <= '1' WHEN (unsigned(endereco) >= 1 AND unsigned(endereco) <= 6) AND opcode = load ELSE
    '0';

  habRegLED <= '1' WHEN (unsigned(endereco) = 7) AND opcode = load ELSE
    '0';

  habLeituraRAM <= '1' WHEN (unsigned(endereco) >= 8 AND opcode = store) ELSE
    '0';

  habEscritaRAM <= '1' WHEN (unsigned(endereco) >= 8 AND opcode = load) ELSE
    '0';

  habLeituraInterface <= '1' WHEN (unsigned(endereco) = 0 AND opcode = store) ELSE
    '0';

  limpaLeituraInterface <= '1' WHEN (unsigned(endereco) = 0 AND opcode = store) ELSE
    '0';
  habReg0 <= '1' WHEN (unsigned(endereco) =1 AND opcode = store) ELSE
    '0';
  habReg1 <= '1' WHEN (unsigned(endereco) = 2 AND opcode = store) ELSE
    '0';
  habReg2 <= '1' WHEN (unsigned(endereco) = 3 AND opcode = store) ELSE
    '0';
  habReg3 <= '1' WHEN (unsigned(endereco) = 4 AND opcode = store) ELSE
    '0';
  habReg4 <= '1' WHEN (unsigned(endereco) = 5 AND opcode = store) ELSE
    '0';
  habReg5 <= '1' WHEN (unsigned(endereco) = 6 AND opcode = store) ELSE
    '0';
    


  --decodificador port map 
  -- interfaceTempo
  --RAM
  -- LED
END ARCHITECTURE;