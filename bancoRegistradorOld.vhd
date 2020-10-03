LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bancoRegistrador IS
  GENERIC (
    ADDR_WIDTH : NATURAL := 4;
    DATA_WIDTH : NATURAL := 10;
  );

  PORT (
    -- Input ports
    enable : IN std_logic;
    clk : IN std_logic;
    end_regA : IN std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    end_regB : IN std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    end_regC : IN std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);

    data_input : IN std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Output ports
    regA_out : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    regB_out : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
  );
END ENTITY;

SIGNAL reg0, reg1, reg2. reg3, reg4, reg5, reg6, reg7 : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
SIGNAL enable0, enable1, enable2, enable3, enable4, enable5, enable6, enable7 : std_logic;

ARCHITECTURE arch_name OF entity_name IS

BEGIN
  enable0 <= '1' WHEN (end_regC = "0000" AND enable = '1') ELSE
    '0';
  enable1 <= '1' WHEN (end_regC = "0001" AND enable = '1') ELSE
    '0';
  enable2 <= '1' WHEN (end_regC = "0010" AND enable = '1') ELSE
    '0';
  enable3 <= '1' WHEN (end_regC = "0011" AND enable = '1') ELSE
    '0';
  enable4 <= '1' WHEN (end_regC = "0100" AND enable = '1') ELSE
    '0';
  enable5 <= '1' WHEN (end_regC = "0101" AND enable = '1') ELSE
    '0';
  enable6 <= '1' WHEN (end_regC = "0110" AND enable = '1') ELSE
    '0';
  enable7 <= '1' WHEN (end_regC = "0111" AND enable = '1') ELSE
    '0';

  R0 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg0, ENABLE => enable0, CLK => clk, RST => '0');
  R1 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg1, ENABLE => enable1, CLK => clk, RST => '0');
  R2 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg2, ENABLE => enable2, CLK => clk, RST => '0');
  R3 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg3, ENABLE => enable3, CLK => clk, RST => '0');
  R4 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg4, ENABLE => enable4, CLK => clk, RST => '0');
  R5 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg5, ENABLE => enable5, CLK => clk, RST => '0');
  R6 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg6, ENABLE => enable6, CLK => clk, RST => '0');
  R7 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(DIN => data_input, DOUT => reg7, ENABLE => enable7, CLK => clk, RST => '0');

  regA_out <= reg0 WHEN end_regA = "000" ELSE
    reg1 WHEN end_regA = "001" ELSE
    reg2 WHEN end_regA = "010" ELSE
    reg3 WHEN end_regA = "011" ELSE
    reg4 WHEN end_regA = "011" ELSE
    reg5 WHEN end_regA = "100" ELSE
    reg6 WHEN end_regA = "101" ELSE
    reg6 WHEN end_regA = "110" ELSE
    reg7;

  regB_out <= reg0 WHEN end_regB = "000" ELSE
    reg1 WHEN end_regB = "001" ELSE
    reg2 WHEN end_regB = "010" ELSE
    reg3 WHEN end_regB = "011" ELSE
    reg4 WHEN end_regB = "011" ELSE
    reg5 WHEN end_regB = "100" ELSE
    reg6 WHEN end_regB = "101" ELSE
    reg6 WHEN end_regB = "110" ELSE
    reg7;

END ARCHITECTURE;