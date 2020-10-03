LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Unidade_Controle IS
  GENERIC (
    DATA_WIDTH : NATURAL := 10;
    ADDR_WIDTH : NATURAL := 8
  );

  PORT (
    -- Input ports
    CLK : IN std_logic;
    opCode : IN std_logic_vector(3 DOWNTO 0);
    equal_ULA : IN std_logic;

    -- Output ports
    palavraControle : OUT std_logic_vector(8 DOWNTO 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF Unidade_Controle IS
  ALIAS selMuxProxPC : std_logic IS palavraControle(8);
  ALIAS selMuxImedRam : std_logic IS palavraControle(7);
  ALIAS selMuxULAImed : std_logic IS palavraControle(6);
  ALIAS HabEscritaReg : std_logic IS palavraControle(5);
  ALIAS selOperacaoULA : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
  ALIAS habLeituraMEM : std_logic IS palavraControle(1);
  ALIAS habEscritaMEM : std_logic IS palavraControle(0);

  ---------------INSTRUÇÕES---------------
  ----------------------------------------
  -- leaw -----------------------------0000     leaw R3, 0 
  -- add  -----------------------------0001     
  -- inc  -----------------------------0011
  -- je   -----------------------------0100
  -- load -----------------------------0101
  -- jmp  -----------------------------0110
  -- store-----------------------------0111
BEGIN
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst); 

  --  LEAW 0000 -> 
  --  1 selMuxImedRam, habEscritaRegistrador
  --  0 selMuxULAImed
  --  010 ULA (entrada_a)

  --  add 0001 ->
  --  000 ULA   (soma)
  --  1 selMuxULAImed, habEscritaRegistrador

  --  inc 0011 ->
  --  100 ULA   (inc)

  --  je 0100 ->    je R3, R4 => LB2
  --  001 ULA (sub)

  --  jmp 0110
  -- 1 selMuxPselMuxProxPCC

  --  store 0111->  xxxxxxx

  --  load 0101 ->
  --  0 selMuxImedRam, selMuxULAImed
  --  1 habEscritaRegistrador
  selMuxImedRam <= '1' WHEN opcode = "0000" ELSE
    '0';
  selMuxULAImed <= '1' WHEN opcode = "0001" ELSE
    '0';
  habEscritaRegistrador <= '1' WHEN opcode = "0000" OR opcode = "0001" OR opcode = "0101" ELSE
    0;
  ULA <= "010" opcode = "0000" ELSE
    "000" opcode = "0001" ELSE
    "100" opcode = "0011" ELSE
    "010";
  selMuxProxPC <= '1' WHEN opcode = "0110" OR (opCode = "0100" AND equal_ULA = '1') ELSE
    0;
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  --selMucProxPC <= '1' when opCode = "1000" else '0';
  --selMuxULAImed <= '0' when opcode = "0101" else '1';
  --selHabEscritaAcumulador <= '1' when opCode = "0011" or opcode = "0101" else '0';
  --selOperacaoULA <= "000" when opcode = "0011" or opcode ="0100" else
  --"001" when opcode = "0101" or opcode = "0110" else
  --"010" when opcode ="" --NAO SEI EM Q CASOS CARREGAR O A 
  --"011" when opcode="0100" or opcode="0110" else --CARREGA B QUANDO SOMA/SUBTRAI COM A MEMORIA?
  --"100" when opcode = "0111" else "010";
  --habLeituraMEM <= '1' when opCode = "0001" or opcode="0100" or opcode="0110" 
  --else '0';

  --habEscritaMEM <= '1' opcode="0010" else '0';
END ARCHITECTURE;