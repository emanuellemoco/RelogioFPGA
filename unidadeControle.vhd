library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantes.all;

entity Unidade_Controle is
  generic (
    DATA_WIDTH : natural := 8;
    ADDR_WIDTH : natural := 8
  );

  port (
    -- Input ports
    CLK : in std_logic;
    opCode : in std_logic_vector(3 downto 0);
    equal_ULA : in std_logic;

    -- Output ports
    palavraControle : out std_logic_vector(8 downto 0)
  );
end entity;
architecture arch_name of Unidade_Controle is
  alias selMuxProxPC : std_logic is palavraControle(8);
  alias selMuxImedRam : std_logic is palavraControle(7);
  alias selMuxULAImed : std_logic is palavraControle(6);
  alias HabEscritaReg : std_logic is palavraControle(5);
  alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
  alias habLeituraMEM : std_logic is palavraControle(1);
  alias habEscritaMEM : std_logic is palavraControle(0);

  ---------------INSTRUÇÕES---------------
  ----------------------------------------
  -- leaw -----------------------------0000                     OK
  -- add  -----------------------------0001                     OK
  -- store-----------------------------0010 grava valor         OK
  -- inc  -----------------------------0011                     OK
  -- je   -----------------------------0100                     OK
  -- load -----------------------------0101 carrega valor       OK
  -- jmp  -----------------------------0110                     OK

begin

  selMuxImedRam <= '1' when opcode = leaw else
    '0';
  selMuxULAImed <= '1' when opcode = add or opcode = inc or opcode = andw or opcode = notw or opcode = sub else
    '0';
  HabEscritaReg <= '1' when opcode = leaw or opcode = add or opcode = rd or opcode = inc or opcode = andw or opcode = notw or opcode = sub else
    '0';
  selOperacaoULA <= "010" when opcode = leaw else
    "000" when opcode = add else
    "001" when opcode = sub else 
    "100" when opcode = inc else
    "001" when opcode = je else
    "101" when opcode = notw else
    "110" when opcode = andw else
    "010";
  selMuxProxPC <= '1' when opcode = jmp or (opCode = je and equal_ULA = '1') else
    '0';

end architecture;