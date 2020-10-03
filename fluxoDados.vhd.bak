LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Fluxo_Dados IS
  GENERIC (
    DATA_WIDTH : NATURAL := 10;
    ROM_DATA_WIDTH : NATURAL := 26;
    ADDR_WIDTH : NATURAL := 8
  );
  --OPCODE   REGA REGB REGC IMEDIATO/ENDEREÇO
  --0000    0000 0000 0000    0000000000
  --25      21   17   13      9

  PORT (
    CLK : std_logic;
    palavraControle : IN std_logic_vector(8 DOWNTO 0);
    entrada_dados : IN std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    -- Output ports
    opCode : OUT std_logic_vector(3 DOWNTO 0);
    data_out : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    programCounter : OUT std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
    equal_ULA : OUT std_logic
  );
END ENTITY;
ARCHITECTURE arch_name OF Fluxo_Dados IS
  --signal  : std_logic;
  SIGNAL PC_ROM : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
  SIGNAL SomaUm_MuxProxPC : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
  SIGNAL MuxProxPC_PC : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
  SIGNAL saida_muxULAImed : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL Instrucao : std_logic_vector(ROM_DATA_WIDTH - 1 DOWNTO 0); -- ??????????????????
  SIGNAL Acumulador_ULA_A : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL saidaULA : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL DadoLidoRAM_ULA_B : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL saidaExtSinal_muxULAImed_0 : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL muxRamImed : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL regA : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL regB : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
  ALIAS enderecoJUMP : std_logic_vector(ADDR_WIDTH - 1 DOWNTO 0);
  ALIAS selMuxProxPC : std_logic IS palavraControle(8);
  ALIAS selMuxImedRam : std_logic IS palavraControle(7);
  ALIAS selMuxULAImed : std_logic IS palavraControle(6);
  ALIAS HabEscritaReg : std_logic IS palavraControle(5);
  ALIAS selOperacaoULA : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
  ALIAS habLeituraMEM : std_logic IS palavraControle(1);
  ALIAS habEscritaMEM : std_logic IS palavraControle(0);

  CONSTANT INCREMENTO : NATURAL := 1;
BEGIN

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => ADDR_WIDTH)
    PORT MAP(DIN => MuxProxPC_PC, DOUT => PC_ROM, ENABLE => '1', CLK => clk, RST => '0');

  MuxProxPC : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => ADDR_WIDTH)
    PORT MAP(
      entradaA_MUX => SomaUm_MuxProxPC, entradaB_MUX => enderecoJUMP,
      seletor_MUX => selMuxProxPC, saida_MUX => MuxProxPC_PC);
  seletor_MUX => selMuxProxPC, saida_MUX => MuxProxPC_PC);

  muxRAM_Imediato : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(
      entradaA_MUX => entrada_dados, entradaB_MUX => Instrucao(9 DOWNTO 0),
      seletor_MUX => selMuxImedRam, saida_MUX => muxRamImed);
  seletor_MUX => selMuxImedRam, saida_MUX => muxRamImed);
  muxULA_Imediato : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(
      entradaA_MUX => muxRamImed, entradaB_MUX => saidaULA,
      seletor_MUX => selMuxULAImed, saida_MUX => saida_muxULAImed);
  seletor_MUX => selMuxULAImed, saida_MUX => saida_muxULAImed);

  somaUm : ENTITY work.somaConstante GENERIC MAP (larguraDados => ADDR_WIDTH, constante => INCREMENTO)
    PORT MAP(entrada => PC_ROM, saida => SomaUm_MuxProxPC);

  ROM : ENTITY work.memoriaROM GENERIC MAP (dataWidth => ROM_DATA_WIDTH, addrWidth => ADDR_WIDTH)
    PORT MAP(Endereco => PC_ROM, Dado => Instrucao);

  -- RAM: entity work.memoriaRAM   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH)
  --        port map (addr => enderecoRAM, we => habEscritaMEM, dado_in => Acumulador_ULA_A, dado_out => DadoLidoRAM_ULA_B, clk => clk);
  bancoReg : ENTITY work.bancoRegistrador GENERIC MAP (ADDR_WIDTH => 4, DATA_WIDTH => DATA_WIDTH)
    PORT MAP(
      CLK => clk, enderecoA => Instrucao(21 DOWNTO 18), enderecoB => Instrucao(17 DOWNTO 14), enderecoC =>
      Instrucao(13 DOWNTO 10), dadoEscritaC => saidaULA, escreveC => HabEscritaReg, saidaA => regA, saidaB => regB);
  Instrucao(13 DOWNTO 10), dadoEscritaC => saidaULA, escreveC => HabEscritaReg, saidaA => regA, saidaB => regB);

  -- old:port map (enable => HabEscritaReg , CLK=> clk,  end_regA => Instrucao(21 downto 18), end_regB =>Instrucao(17 downto 14) , data_input => saidaULA , regA_out => regA , regB_out => regB);

  ULA : ENTITY work.ULA GENERIC MAP (larguraDados => DATA_WIDTH)
    PORT MAP(
      entradaA => regA, entradaB => regB,
      saida => saidaULA, seletor => selOperacaoULA, flagZero => OPEN);
  saida => saidaULA, seletor => selOperacaoULA, flagZero => OPEN);

  -- estendeSinal:  entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 12, larguraDadoSaida => DATA_WIDTH)
  --         port map (estendeSinal_IN => imediato_entradaExtSinal, estendeSinal_OUT => saidaExtSinal_muxULAImed_0);