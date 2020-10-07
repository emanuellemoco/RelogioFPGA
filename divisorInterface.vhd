library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisorInterface is
   port (
      clk : in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
      leituraUmSegundo : out std_logic
   );
end entity;

architecture interface of divisorInterface is
   signal sinalUmSegundo : std_logic;
   signal saidaclk_reg1seg : std_logic;
begin

   baseTempo : entity work.divisor
      generic map(divisor => 25000000) --25000000
      port map(clk => clk, saida_clk => saidaclk_reg1seg);

   registraUmSegundo : entity work.flipFlop
      port map(
         DIN => '1', DOUT => sinalUmSegundo,
         ENABLE => '1', CLK => saidaclk_reg1seg,
         RST => limpaLeitura);

   -- Faz o tristate de saida:
   leituraUmSegundo <= sinalUmSegundo when habilitaLeitura = '1' else
      '0';
	
end architecture;