LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY ULA IS
  GENERIC (
    larguraDados : NATURAL := 8
  );
  PORT (
    entradaA, entradaB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
    seletor : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    saida : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
    flagZero : OUT std_logic
  );
END ENTITY;

ARCHITECTURE comportamento OF ULA IS
  CONSTANT zero : std_logic_vector(larguraDados - 1 DOWNTO 0) := (OTHERS => '0');

  SIGNAL soma : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL sub : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL op_and : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL op_or : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL op_xor : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL op_not : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL op_inc : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
  SIGNAL ULAout : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

      BEGIN
  soma <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
  sub <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
  op_and <= entradaA AND entradaB;
  op_or <= entradaA OR entradaB;
  op_inc <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(entradaA)) + 1,10));
 
  --equal     <= entradaA = entradaB;
  --     op_xor    <= entradaA xor entradaB;
  --      op_not    <= not entradaA;

  ULAout <= soma WHEN (seletor = "000") ELSE
    sub WHEN (seletor = "001") ELSE
    entradaA WHEN (seletor = "010") ELSE
    entradaB WHEN (seletor = "011") ELSE
    op_inc WHEN (seletor = "100") ELSE
    --          op_xor when   (seletor = "xxx") else
    --          op_not when   (seletor = "101") else
    op_and WHEN (seletor = "110") ELSE
    op_or WHEN (seletor = "111") ELSE

    entradaA; -- outra opcao: saida = entradaA

  flagZero <= '1' WHEN (seletor= "001") and (unsigned(ULAout) = unsigned(zero)) ELSE
    '0';
    saida <= ULAout;

END ARCHITECTURE;