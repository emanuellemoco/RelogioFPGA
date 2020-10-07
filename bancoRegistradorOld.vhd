library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradorOld is
  generic (
    ADDR_WIDTH : natural := 4;
    DATA_WIDTH : natural := 10
  );

  port (
    -- Input ports
    enable : in std_logic;
    clk : in std_logic;
    end_regA : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
    end_regB : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
    end_regC : in std_logic_vector(ADDR_WIDTH - 1 downto 0);

    data_input : in std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- Output ports
    regA_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
    regB_out : out std_logic_vector(DATA_WIDTH - 1 downto 0)
  );
end entity;

architecture arch_name of bancoRegistradorOld is

  signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : std_logic_vector(DATA_WIDTH - 1 downto 0);
  signal enable0, enable1, enable2, enable3, enable4, enable5, enable6, enable7 : std_logic;

begin
  enable0 <= '1' when (end_regC = "0000" and enable = '1') else
    '0';
  enable1 <= '1' when (end_regC = "0001" and enable = '1') else
    '0';
  enable2 <= '1' when (end_regC = "0010" and enable = '1') else
    '0';
  enable3 <= '1' when (end_regC = "0011" and enable = '1') else
    '0';
  enable4 <= '1' when (end_regC = "0100" and enable = '1') else
    '0';
  enable5 <= '1' when (end_regC = "0101" and enable = '1') else
    '0';
  enable6 <= '1' when (end_regC = "0110" and enable = '1') else
    '0';
  enable7 <= '1' when (end_regC = "0111" and enable = '1') else
    '0';

  R0 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg0, ENABLE => enable0, CLK => clk, RST => '0');
  R1 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg1, ENABLE => enable1, CLK => clk, RST => '0');
  R2 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg2, ENABLE => enable2, CLK => clk, RST => '0');
  R3 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg3, ENABLE => enable3, CLK => clk, RST => '0');
  R4 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg4, ENABLE => enable4, CLK => clk, RST => '0');
  R5 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg5, ENABLE => enable5, CLK => clk, RST => '0');
  R6 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg6, ENABLE => enable6, CLK => clk, RST => '0');
  R7 : entity work.registrador generic map (larguraDados => DATA_WIDTH)
    port map(DIN => data_input, DOUT => reg7, ENABLE => enable7, CLK => clk, RST => '0');

  regA_out <= reg0 when end_regA = "000" else
    reg1 when end_regA = "001" else
    reg2 when end_regA = "010" else
    reg3 when end_regA = "011" else
    reg4 when end_regA = "011" else
    reg5 when end_regA = "100" else
    reg6 when end_regA = "101" else
    reg6 when end_regA = "110" else
    reg7;

  regB_out <= reg0 when end_regB = "000" else
    reg1 when end_regB = "001" else
    reg2 when end_regB = "010" else
    reg3 when end_regB = "011" else
    reg4 when end_regB = "011" else
    reg5 when end_regB = "100" else
    reg6 when end_regB = "101" else
    reg6 when end_regB = "110" else
    reg7;

end architecture;