LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY flipFlop IS

    PORT (
        DIN : IN std_logic;
        DOUT : OUT std_logic;
        ENABLE : IN std_logic;
        CLK, RST : IN std_logic
    );
END ENTITY;

ARCHITECTURE comportamento OF flipFlop IS
BEGIN

    PROCESS (RST, CLK)
    BEGIN

        -- The asynchronous reset signal has the highest priority
        IF (RST = '1') THEN
            DOUT <= '0'; -- Código reconfigurável.
        ELSE
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            IF (rising_edge(CLK)) THEN
                IF (ENABLE = '1') THEN
                    DOUT <= DIN;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;