library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constantes.all;
entity memoriaROM is
    generic (
        dataWidth : natural := 8;
        addrWidth : natural := 3
    );
    port (
        Endereco : in std_logic_vector (addrWidth - 1 downto 0);
        Dado : out std_logic_vector (dataWidth - 1 downto 0)
    );
end entity;
---------------INSTRUÇÕES---------------
----------------------------------------
-- leaw -----------------------------0000                     OK
-- add  -----------------------------0001                     OK
-- rw--------------------------------0010 grava/escreve valor OK
-- inc  -----------------------------0011                     OK
-- je   -----------------------------0100                     OK
-- rd -------------------------------0101 carrega/le valor    OK
-- jmp  -----------------------------0110                     OK
-- nope -----------------------------0111
-- cl -------------------------------1000 limpa

--   Testar:
--   HEX            OK
--   RAM            OK
--   Base tempo

architecture assincrona of memoriaROM is

    type blocoMemoria is array(0 to 2 ** addrWidth - 1) of std_logic_vector(dataWidth - 1 downto 0);

    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin

        --        OPCODE  REGA  REGB  REGC    IMED/EndPerf
        tmp(0) := leaw & NOP & NOP & R01 & b"0000000011";
        tmp(1) := leaw & NOP & NOP & R02 & b"0000000000";
        tmp(2) := rd & NOP & NOP & R03 & b"0000000000";
        tmp(3) := cl & NOP & NOP & R03 & b"0000000000";
        tmp(4) := je & R02 & R03 & NOP & b"0000000010";
        tmp(5) := inc & R01 & NOP & R01 & b"0000000000";
        tmp(6) := wr & R01 & NOP & NOP & b"0000000010";
        tmp(7) := wr & R01 & NOP & NOP & b"0000000111";
        tmp(8) := jmp & NOP & NOP & NOP & b"0000000010";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;