------------------------ TODO: ------------------------------
-- fazer o hexInterface
-- implementar HEX e SW


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.constantes.ALL;

ENTITY relogio IS
  GENERIC (
  DATA_WIDTH : NATURAL := 10;  
  DECODE_WIDTH : NATURAL := 11;
  ROM_DATA_WIDTH : NATURAL := 26;

   ADDR_WIDTH : NATURAL := 8
  );

  PORT (
  
  CLOCK_50 : IN std_logic

  );
END ENTITY;
ARCHITECTURE arch_name OF relogio IS

  -- SIGNAL enderecoRAM :
  SIGNAL muxOut : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL decode : std_logic_vector(DECODE_WIDTH - 1 DOWNTO 0);
  SIGNAL decodificadorControle: std_logic_vector(12 downto 0 ); 
  SIGNAL CPUOut : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

  SIGNAL baseTempoOut : std_logic
  SIGNAL RAMOut : std_logic_vector(DATA_WIDTH -1 DOWNTO 0); 
  SIGNAL selMUX : std_logic;   
  
  ALIAS enderecoRAM             : std_logic_vector(5 DOWNTO 0) IS decodificadorControle(5 DOWNTO 0);
  ALIAS selMUX                  : std_logic IS decodificadorControle(6);
  ALIAS habRegHEX               : std_logic IS decodificadorControle(7);
  ALIAS habRegLED               : std_logic IS decodificadorControle(8);
  ALIAS habLeituraRAM           : std_logic IS decodificadorControle(9);
  ALIAS habEscritaRAM           : std_logic IS decodificadorControle(10);
  ALIAS habLeituraInterface     : std_logic IS decodificadorControle(11);
  ALIAS limpaLeituraInterface   : std_logic IS decodificadorControle(12);
  ALIAS endereco                : std_logic_vector(6 DOWNTO 0) IS entrada(6 DOWNTO 0);
  ALIAS opcode                  : std_logic_vector(3 DOWNTO 0) IS entrada(10 DOWNTO 7);

BEGIN

CPU: entity work.CPU generic map(DATA_WIDTH=> DATA_WIDTH, ADDR_WIDTH=>ADDR_WIDTH, ROM_DATA_WIDTH >= ROM_DATA_WIDTH )
      PORT MAP(clk=> CLOCK_50, entrada_dados => muxOut, decodificadorEnd=> decode, saida_dados=> CPUOut);

DEC: entity work.decodificador generic map (DECODE_WIDTH=> 11)
      PORT MAP(entrada => decode, decodificadorControle => decodificadorControle);

RAM: entity work.memoriaRAM   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH)
      port map (addr => enderecoRAM, we => habEscritaRAM, dado_in => CPUOut, dado_out => RAMOut, clk => CLOCK_50);

-- HEX :  fazer interface HEX



MUX : entity work.mux2x1 generic map (larguraDados => DATA_WIDTH)
      PORT MAP (entradaA_MUX => "0000000" & baseTempoOut, entradaB_MUX => RAMOut , seletor_MUX => selMUX, saida_MUX => muxOut);

BASEDETEMPO: entity work.divisorInterface 
      port map(clk =>CLOCK_50, habilitaLeitura => habLeituraInterface,limpaLeitura=> limpaLeituraInterface,  leituraUmSegundo =>baseTempoOut);
  
END ARCHITECTURE;