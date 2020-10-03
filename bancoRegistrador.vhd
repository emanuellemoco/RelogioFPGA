LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bancoRegistrador IS
    GENERIC (
        larguraDados : NATURAL := 8;
        larguraEndBancoRegs : NATURAL := 4 --Resulta em 2^5=32 posicoes
    );
    -- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    PORT (
        clk : IN std_logic;
        enderecoA : IN std_logic_vector((larguraEndBancoRegs - 1) DOWNTO 0);
        enderecoB : IN std_logic_vector((larguraEndBancoRegs - 1) DOWNTO 0);
        enderecoC : IN std_logic_vector((larguraEndBancoRegs - 1) DOWNTO 0);
        dadoEscritaC : IN std_logic_vector((larguraDados - 1) DOWNTO 0);
        escreveC : IN std_logic := '0';

        saidaA : OUT std_logic_vector((larguraDados - 1) DOWNTO 0);
        saidaB : OUT std_logic_vector((larguraDados - 1) DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF bancoRegistrador IS

    SUBTYPE palavra_t IS std_logic_vector((larguraDados - 1) DOWNTO 0);
    TYPE memoria_t IS ARRAY(2 ** larguraEndBancoRegs - 1 DOWNTO 0) OF palavra_t;

    -- Declaracao dos registradores:
    SHARED VARIABLE registrador : memoria_t;

BEGIN
    PROCESS (clk) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (escreveC = '1') THEN
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            END IF;
        END IF;
    END PROCESS;
    saidaA <= registrador(to_integer(unsigned(enderecoA)));
    saidaB <= registrador(to_integer(unsigned(enderecoB)));
END ARCHITECTURE;