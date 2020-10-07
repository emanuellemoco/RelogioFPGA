library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
  generic (
    DATA_WIDTH : natural := 10;
    ADDR_WIDTH : natural := 8;
    ROM_DATA_WIDTH : natural := 26
  );

  port (
    -- Input ports
    clk : in std_logic;
    entrada_dados : in std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- Output ports
    decodificadorEnd : out std_logic_vector(10 downto 0);
    saida_dados : out std_logic_vector(DATA_WIDTH - 1 downto 0)
  );
end entity;
architecture arch_name of CPU is
  signal saidaReg : std_logic_vector(DATA_WIDTH - 1 downto 0);
  signal palavraControle : std_logic_vector(8 downto 0);
  signal opCode : std_logic_vector(3 downto 0);
  signal endPerif : std_logic_vector(6 downto 0);
  signal equal_ULA : std_logic;

begin
  FD : entity work.Fluxo_Dados generic map (DATA_WIDTH => DATA_WIDTH, ROM_DATA_WIDTH => ROM_DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
    port map(
      CLK => clk, palavraControle => palavraControle, entrada_dados => entrada_dados,
      opCode => opCode, endPerif => endPerif, data_out => saida_dados, equal_ULA => equal_ULA);

  UC : entity work.Unidade_Controle generic map (DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
    port map(CLK => clk, opCode => opCode, equal_ULA => equal_ULA, palavraControle => palavraControle);

  decodificadorEnd <= opcode & endPerif;

end architecture;