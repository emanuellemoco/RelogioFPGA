LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY divisorTempo IS
    GENERIC (divisor : NATURAL := 8);
    PORT (
        clk : IN std_logic;
        saida_clk : OUT std_logic
    );
END ENTITY;

-- Nao usa o valor do divisor. So divide por 2.

ARCHITECTURE divPor2 OF divisorTempo IS
    SIGNAL tick : std_logic;
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            tick <= NOT tick;
        END IF;
    END PROCESS;
    saida_clk <= tick;
END ARCHITECTURE divPor2;

-- O valor "n" do divisor, define a divisao por 2^(n+1).
-- Ou seja, 2^n é metade do período da frequência de saída.

ARCHITECTURE divPotenciaDe2 OF divisorTempo IS
    SIGNAL contador : std_logic_vector(divisor DOWNTO 0);
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            contador <= std_logic_vector(unsigned(contador) + 1);
        END IF;
    END PROCESS;
    saida_clk <= contador(divisor);
END ARCHITECTURE divPotenciaDe2;

-- O valor "n" do divisor, define a divisao por "2n".
-- Ou seja, n é metade do período da frequência de saída.

ARCHITECTURE divInteiro OF divisorTempo IS
    SIGNAL tick : std_logic := '0';
    SIGNAL contador : INTEGER RANGE 0 TO divisor + 1 := 0;
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF contador = divisor THEN
                contador <= 0;
                tick <= NOT tick;
            ELSE
                contador <= contador + 1;
            END IF;
        END IF;
    END PROCESS;
    saida_clk <= tick;
END ARCHITECTURE divInteiro;