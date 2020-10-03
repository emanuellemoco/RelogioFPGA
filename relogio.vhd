LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY relogio IS
  GENERIC (
    DATA_WIDTH : NATURAL := 8;
    ADDR_WIDTH : NATURAL := 8
  );

  PORT (

  );
END ENTITY;
ARCHITECTURE arch_name OF relogio IS

  -- Declarations (optional):
  -- signal <name> : std_logic;
  -- signal <name> : std_logic_vector(<msb_index> downto <lsb_index>);
  -- constant FUNCT_WIDTH : natural := 6;
  -- subtype funct_t  is  std_logic_vector(FUNCT_WIDTH-1 downto 0);
  -- constant functADD   : funct_t := "100000";
  -- constant functSUB   : funct_t := "100010";
  -- alias memWRsignal: std_logic is controlWord(0);
  -- alias ulaOPvalue:  std_logic_vector(1 downto 0) is controlWord(5 downto 4);

BEGIN

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

END ARCHITECTURE;