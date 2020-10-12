------------------------ TODO: ------------------------------
-- fazer o hexInterface
-- implementar HEX e SW
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantes.all;

entity relogio is
      generic (
            DATA_WIDTH : natural := 8;
            DECODE_WIDTH : natural := 11;
            ROM_DATA_WIDTH : natural := 16;
            HEX_WIDTH : natural := 4;
            RAM_ADDR_WIDTH : natural := 6;
            ADDR_WIDTH : natural := 10
      );

      port (

            ---- inputs ---- 
            CLOCK_50 : in std_logic;
            SW : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            KEY : in std_logic_vector(3 downto 0);

            ---- outputs ----
            HEX0 : out std_logic_vector(6 downto 0);
            HEX1 : out std_logic_vector(6 downto 0);
            HEX2 : out std_logic_vector(6 downto 0);
            HEX3 : out std_logic_vector(6 downto 0);
            HEX4 : out std_logic_vector(6 downto 0);
            HEX5 : out std_logic_vector(6 downto 0);
            LEDR : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            decodeR : out std_logic_vector(DECODE_WIDTH -1 downto 0) 
      );
end entity;
architecture arch_name of relogio is

      -- SIGNAL enderecoRAM :
      signal muxOut : std_logic_vector(DATA_WIDTH - 1 downto 0);
      signal decode : std_logic_vector(DECODE_WIDTH - 1 downto 0);
      signal decodificadorControle : std_logic_vector(20 downto 0);
      signal CPUOut : std_logic_vector(DATA_WIDTH - 1 downto 0);

      signal baseTempoOut : std_logic;
      signal baseTempoFastOut : std_logic;
      signal tempoOut : std_logic_vector(1 downto 0);

      signal RAMOut : std_logic_vector(DATA_WIDTH - 1 downto 0);

      signal reg0Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      signal reg1Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      signal reg2Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      signal reg3Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      signal reg4Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
      signal reg5Out : std_logic_vector(HEX_WIDTH - 1 downto 0);
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

      alias endereco : std_logic_vector(6 downto 0) is CPUOut(6 downto 0);
      alias opcode : std_logic_vector(3 downto 0) is CPUOut(10 downto 7);

begin

      decodeR <= decode;

      CPU : entity work.CPU generic map(DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH, ROM_DATA_WIDTH => ROM_DATA_WIDTH)
            port map(clk => CLOCK_50, entrada_dados => muxOut, decodificadorEnd => decode, saida_dados => CPUOut);

      DEC : entity work.decodificador generic map (DECODE_WIDTH => DECODE_WIDTH)
            port map(entrada => decode, decodificadorControle => decodificadorControle);

      RAM : entity work.memoriaRAM generic map (dataWidth => DATA_WIDTH, addrWidth => RAM_ADDR_WIDTH)
            port map(addr => enderecoRAM, we => habEscritaRAM, dado_in => CPUOut, dado_out => RAMOut, clk => CLOCK_50);

      MUXTEMPO : entity work.mux2x1 generic map (larguraDados => 2)
      port map( entradaA_MUX => "0" & BaseTempoOut,entradaB_MUX => "0" &  baseTempoFastOut,
        seletor_MUX => selMUXtempo, saida_MUX => tempoOut);

      MUX : entity work.mux8x1 generic map (larguraDados => DATA_WIDTH)
            port map(entradaA_MUX => "000000" & tempoOut, entradaB_MUX => RAMOut, entradaC_MUX => SW, entradaD_MUX =>"0000" & KEY, 
             seletor_MUX => selMUX, saida_MUX => muxOut);
      
      BASEDETEMPO : entity work.divisorInterface generic map (TIME => 25000000)
            port map(clk => CLOCK_50, habilitaLeitura => habLeituraInterface, limpaLeitura => limpaLeituraInterface, leituraUmSegundo => baseTempoOut);
      
      BASEDETEMPOFAST : entity work.divisorInterface generic map (TIME => 1000000)
            port map(clk => CLOCK_50, habilitaLeitura => habLeituraInterface, limpaLeitura => limpaLeituraInterface, leituraUmSegundo => baseTempoFastOut);

      REG0 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg0Out, ENABLE => habReg0, CLK => CLOCK_50, RST => '0');
      HEX_0 : entity work.hex
            port map(dadoHEX => reg0Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX0);

      REG1 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg1Out, ENABLE => habReg1, CLK => CLOCK_50, RST => '0');
      HEX_1 : entity work.hex
            port map(dadoHEX => reg1Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX1);

      REG2 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg2Out, ENABLE => habReg2, CLK => CLOCK_50, RST => '0');
      HEX_2 : entity work.hex
            port map(dadoHEX => reg2Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX2);

      REG3 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg3Out, ENABLE => habReg3, CLK => CLOCK_50, RST => '0');
      HEX_3 : entity work.hex
            port map(dadoHEX => reg3Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX3);

      REG4 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg4Out, ENABLE => habReg4, CLK => CLOCK_50, RST => '0');
      HEX_4 : entity work.hex
            port map(dadoHEX => reg4Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX4);

      REG5 : entity work.registrador generic map (larguraDados => HEX_WIDTH)
            port map(DIN => CPUOut(3 downto 0), DOUT => reg5Out, ENABLE => habReg5, CLK => CLOCK_50, RST => '0');
      HEX_5 : entity work.hex
            port map(dadoHEX => reg5Out, apaga => '0', negativo => '0', overflow => '0', saida7seg => HEX5);

      REGLED : entity work.registrador generic map (larguraDados => DATA_WIDTH)
            port map(DIN => CPUOut, DOUT => LEDR, ENABLE => habRegLED, CLK => CLOCK_50, RST => '0');

end architecture;