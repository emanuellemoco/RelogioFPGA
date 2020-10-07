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
            HEX_WIDTH : NATURAL := 4;
            RAM_ADDR_WIDTH : NATURAL :=6;
            ADDR_WIDTH : NATURAL := 8
      );

      PORT (

            CLOCK_50 : IN std_logic;
            SW : IN std_logic_vector(DATA_WIDTH-1 DOWNTO 0);
            HEX0 : OUT std_logic_vector(6 DOWNTO 0);
            HEX1 : OUT std_logic_vector(6 DOWNTO 0);
            HEX2 : OUT std_logic_vector(6 DOWNTO 0);
            HEX3 : OUT std_logic_vector(6 DOWNTO 0);
            HEX4 : OUT std_logic_vector(6 DOWNTO 0);
            HEX5 : OUT std_logic_vector(6 DOWNTO 0);
            LEDR : OUT std_logic_vector(DATA_WIDTH-1 downto 0)


      );
END ENTITY;
ARCHITECTURE arch_name OF relogio IS

      -- SIGNAL enderecoRAM :
      SIGNAL muxOut : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
      SIGNAL decode : std_logic_vector(DECODE_WIDTH - 1 DOWNTO 0);
      SIGNAL decodificadorControle : std_logic_vector(18 DOWNTO 0);
      SIGNAL CPUOut : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

      SIGNAL baseTempoOut : std_logic;
      SIGNAL RAMOut : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
      
      SIGNAL reg0Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      SIGNAL reg1Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      SIGNAL reg2Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      SIGNAL reg3Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      SIGNAL reg4Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      SIGNAL reg5Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
     
      
      ALIAS enderecoRAM : std_logic_vector(5 DOWNTO 0) IS decodificadorControle(5 DOWNTO 0);
      ALIAS selMUX : std_logic IS decodificadorControle(7 downto 6);
      ALIAS habRegHEX : std_logic IS decodificadorControle(8);
      ALIAS habRegLED : std_logic IS decodificadorControle(9);
      ALIAS habLeituraRAM : std_logic IS decodificadorControle(10);
      ALIAS habEscritaRAM : std_logic IS decodificadorControle(11);
      ALIAS habLeituraInterface : std_logic IS decodificadorControle(12);
      ALIAS limpaLeituraInterface : std_logic IS decodificadorControle(13);
      ALIAS habReg0 : std_logic IS decodificadorControle(14);
      ALIAS habReg1 : std_logic IS decodificadorControle(15);
      ALIAS habReg2 : std_logic IS decodificadorControle(16);
      ALIAS habReg3 : std_logic IS decodificadorControle(17);
      ALIAS habReg4 : std_logic IS decodificadorControle(18);
      ALIAS habReg5 : std_logic IS decodificadorControle(19);

      

      ALIAS endereco : std_logic_vector(6 DOWNTO 0) IS CPUOut(6 DOWNTO 0);
      ALIAS opcode : std_logic_vector(3 DOWNTO 0) IS CPUOut(10 DOWNTO 7);

BEGIN

      CPU : ENTITY work.CPU GENERIC MAP(DATA_WIDTH =>DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH, ROM_DATA_WIDTH => ROM_DATA_WIDTH)
            PORT MAP(clk => CLOCK_50, entrada_dados => muxOut, decodificadorEnd => decode, saida_dados => CPUOut);

      DEC : ENTITY work.decodificador GENERIC MAP (DECODE_WIDTH => DECODE_WIDTH)
            PORT MAP(entrada => decode, decodificadorControle => decodificadorControle);

      RAM : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => DATA_WIDTH, addrWidth => RAM_ADDR_WIDTH)
            PORT MAP(addr => enderecoRAM, we => habEscritaRAM, dado_in => CPUOut, dado_out => RAMOut, clk => CLOCK_50);

      -- HEX :  fazer interface HEX

      MUX : ENTITY work.mux3x1 GENERIC MAP (larguraDados => DATA_WIDTH)
            PORT MAP(entradaA_MUX => "000000000" & baseTempoOut, entradaB_MUX => RAMOut, seletor_MUX => selMUX, saida_MUX => muxOut);


      BASEDETEMPO : ENTITY work.divisorInterface
            PORT MAP(clk => CLOCK_50, habilitaLeitura => habLeituraInterface, limpaLeitura => limpaLeituraInterface, leituraUmSegundo => baseTempoOut);

      REG0 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN =>CPUOut(3 downto 0), DOUT =>reg0Out, ENABLE =>habReg0, CLK => CLOCK_50, RST =>'0');
      HEX_0: ENTITY work.hex
            PORT MAP(dadoHEX => reg0Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX0);
            
      REG1 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN => CPUOut(3 downto 0), DOUT => reg1Out, ENABLE =>habReg1, CLK => CLOCK_50, RST =>'0');
      HEX_1: ENTITY work.hex
            PORT MAP(dadoHEX => reg1Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX1);     
        
      REG2 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN =>CPUOut(3 downto 0), DOUT =>reg2Out, ENABLE =>habReg2, CLK => CLOCK_50, RST =>'0');
      HEX_2: ENTITY work.hex
            PORT MAP(dadoHEX => reg2Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX2);  

      REG3 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN =>CPUOut(3 downto 0), DOUT =>reg3Out, ENABLE =>habReg3, CLK => CLOCK_50, RST =>'0');
      HEX_3: ENTITY work.hex
            PORT MAP(dadoHEX => reg3Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX3);     
      
      REG4 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN =>CPUOut(3 downto 0), DOUT =>reg4Out, ENABLE =>habReg4, CLK => CLOCK_50, RST =>'0');
      HEX_4: ENTITY work.hex
            PORT MAP(dadoHEX => reg4Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX4);     
      
      REG5 : ENTITY work.registrador GENERIC MAP (larguraDados => HEX_WIDTH)
            PORT MAP(DIN =>CPUOut(3 downto 0), DOUT =>reg5Out, ENABLE =>habReg5, CLK => CLOCK_50, RST =>'0');
      HEX_5: ENTITY work.hex
            PORT MAP(dadoHEX => reg5Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX5);
      
      REGLED : ENTITY work.registrador GENERIC MAP (larguraDados => DATA_WIDTH)
            PORT MAP(DIN =>CPUOut, DOUT =>LEDR, ENABLE =>habRegLED, CLK => CLOCK_50, RST =>'0');

      REGHEX : ENTITY work.registrador GENERIC MAP (larguraDados => DATA_WIDTH)
            PORT MAP(DIN =>CPUOut, DOUT =>LEDR, ENABLE =>habRegLED, CLK => CLOCK_50, RST =>'0');
   
END ARCHITECTURE;


        
   