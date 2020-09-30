library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Unidade_Controle is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    CLK  :  in  std_logic;
	 opCode  :  in  std_logic_vector(3 downto 0);
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(8 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is
  alias selMuxProxPC : std_logic is palavraControle(8);
  alias selMuxImedRam : std_logic is palavraControle(7);
  alias selMuxULAImed : std_logic is palavraControle(6);
  alias HabEscritaReg : std_logic is palavraControle(5);
  alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
  alias habLeituraMEM : std_logic is palavraControle(1);
  alias habEscritaMEM : std_logic is palavraControle(0);

---------------INSTRUÇÕES---------------
----------------------------------------
-- leaw -----------------------------0000     leaw R3, 0 
-- add  -----------------------------0001     
-- cmp  -----------------------------0011
-- je   -----------------------------0100
-- jl   -----------------------------0101
-- jmp  -----------------------------0110
-- store-----------------------------0111
-- load -----------------------------1000
  
  begin
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

--  cmp 0011 ->
--  110 ULA  (op_and) ????????????
--  1 habEscritaRegistrador, selMuxULAImed

--  je 0100 ->

--  store 0111-> xxxxxxxxxxxxxxxxxxxx

--  load 1000 ->
--  0 selMuxImedRam, selMuxULAImed
--  1 habEscritaRegistrador
  

  selMuxImedRam <= '1' when opcode = "0000"  else '0';
  selMuxULAImed <= '1' when opcode = "0001"  or opcode = "0011" else 0;
  habEscritaRegistrador <= '1' when opcode = "0000" or  opcode = "0001" or  opcode = "0011" or  opcode = "1000" else 0;
  ULA <= "010" opcode = "0000" else
          "000" opcode = "0001" else
          "110" opcode = "0011" else "010";

  

  
 
  
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  selMucProxPC <= '1' when opCode = "1000" else '0';
  selMuxULAImed <= '0' when opCode = "0011" or opcode = "0101" else '1';
  selHabEscritaAcumulador <= '1' when opCode = "0011" or opcode = "0101" else '0';
  selOperacaoULA <= "000" when opcode = "0011" or opcode ="0100" else
						  "001" when opcode = "0101" or opcode = "0110" else
						  "010" when opcode ="" --NAO SEI EM Q CASOS CARREGAR O A 
						  "011" when opcode="0100" or opcode="0110" else --CARREGA B QUANDO SOMA/SUBTRAI COM A MEMORIA?
						  "100" when opcode = "0111" else "010";
  habLeituraMEM <= '1' when opCode = "0001" or opcode="0100" or opcode="0110" 
  else '0';
  
  habEscritaMEM <= '1' opcode="0010" else '0';
  



end architecture;