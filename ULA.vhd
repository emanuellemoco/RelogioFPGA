library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Biblioteca IEEE para funções aritméticas

entity ULA is
  generic (
    larguraDados : natural := 8
  );
  port (
    entradaA, entradaB : in STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
    seletor : in STD_LOGIC_VECTOR(2 downto 0);
    saida : out STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
    flagZero : out std_logic
  );
end entity;

architecture comportamento of ULA is
  constant zero : std_logic_vector(larguraDados - 1 downto 0) := (others => '0');

  signal soma : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal sub : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal op_and : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal op_or : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal op_xor : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal op_not : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal op_inc : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);
  signal ULAout : STD_LOGIC_VECTOR((larguraDados - 1) downto 0);

begin
  soma <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
  sub <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
  op_and <= entradaA and entradaB;
  op_not <= NOT entradaA;

  --op_inc <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(entradaA)) + 1,10));

  op_inc <= STD_LOGIC_VECTOR(unsigned(entradaA) + 1);

  --equal     <= entradaA = entradaB;
  --     op_xor    <= entradaA xor entradaB;
  --      op_not    <= not entradaA;

  ULAout <= soma when (seletor = "000") else
    sub when (seletor = "001") else
    entradaA when (seletor = "010") else --entradaA WHEN (seletor = "010") ELSE
    entradaB when (seletor = "011") else
    op_inc when (seletor = "100") else
    op_not when (seletor = "101") else
    op_and when (seletor = "110") else

    entradaA; -- outra opcao: saida = entradaA

  flagZero <= '1' when (((seletor = "001") or (seletor = "011")) and (unsigned(entradaA) = unsigned(entradaB))) else
    '0';
  saida <= ULAout;

end architecture;