LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY CPU IS
  GENERIC (
    DATA_WIDTH : NATURAL := 10;
    ADDR_WIDTH : NATURAL := 12;
    ROM_DATA_WIDTH : NATURAL := 26
  );

  PORT (
    -- Input ports
    CLOCK_50 : IN std_logic;
    entrada_dados : IN std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Output ports
    decodificadorEnd : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    saida_dados : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF CPU IS
  SIGNAL progCount : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
  SIGNAL saidaReg : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL palavraControle : std_logic_vector(8 DOWNTO 0);
  SIGNAL opCode : std_logic_vector(3 DOWNTO 0);
  SIGNAL equal_ULA : std_logic;

BEGIN
  FD : ENTITY work.Fluxo_Dados GENERIC MAP (DATA_WIDTH => DATA_WIDTH, ROM_DATA_WIDTH => ROM_DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
    PORT MAP(
      CLK => CLOCK_50, palavraControle => palavraControle, entrada_dados => "0000000010",
      opCode => opCode, data_out => saida_dados, programCounter => progCount, equal_ULA => equal_ULA);

  UC : ENTITY work.Unidade_Controle GENERIC MAP (DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
    PORT MAP(CLK => CLOCK_50, opCode => opCode, equal_ULA => equal_ULA, palavraControle => palavraControle);

    decodificadorEnd <= opcode & "000000";
END ARCHITECTURE;