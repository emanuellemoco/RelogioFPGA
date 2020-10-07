
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package constantes is

    constant REG_A_WIDTH : natural := 4;
    constant REG_B_WIDTH : natural := 4;
    constant REG_C_WIDTH : natural := 4;
    constant OPCODE_WIDTH : natural := 4;

    -- codigos das instrucoes do DLX:
    subtype opCode is std_logic_vector(OPCODE_WIDTH - 1 downto 0);
    subtype registradores is std_logic_vector(OPCODE_WIDTH - 1 downto 0);
    constant leaw : opCode := "0000";
    constant add : opCode := "0001";
    constant wr : opCode := "0010";
    constant inc : opCode := "0011";
    constant je : opCode := "0100";
    constant rd : opCode := "0101";
    constant jmp : opCode := "0110";
    constant NOP : opCode := "0000";
    constant nope : opCode := "0111";
    constant cl : opCode := "1000";

    constant R01 : registradores := "0001";
    constant R02 : registradores := "0010";
    constant R03 : registradores := "0011";
    constant R04 : registradores := "0100";
    constant R05 : registradores := "0101";
    constant R06 : registradores := "0110";
    constant R07 : registradores := "0111";
    constant R08 : registradores := "1000";
    constant R09 : registradores := "1001";
    constant R10 : registradores := "1010";
    constant R11 : registradores := "1011";
    constant R12 : registradores := "1100";
    constant R13 : registradores := "1101";
    constant R14 : registradores := "1110";
    constant R15 : registradores := "1111";

end package constantes;