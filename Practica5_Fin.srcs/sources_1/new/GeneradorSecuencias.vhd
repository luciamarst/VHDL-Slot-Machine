----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2023 12:24:34
-- Design Name: 
-- Module Name: GeneradorSecuencias - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity GeneradorSecuencias is
    Port (
          clk,rst: in std_logic;
          sec:in std_logic_vector(2 downto 0);
          secuencia: out std_logic_vector(15 downto 0)
    );
end GeneradorSecuencias;

architecture rtl of GeneradorSecuencias is
    signal apagado: std_logic_vector(15 downto 0):= (others => '0');
    signal encendido: std_logic_vector(15 downto 0):= (others => '1');
    signal parpadear: std_logic_vector(15 downto 0):= (others =>'0');
    signal alternar: std_logic_vector(15 downto 0):=  "1010101010101010";
    signal barraProgreso: std_logic_vector(31 downto 0):= "11111111111111110000000000000000";
    
    signal cuenta: std_Logic_vector(25 downto 0);
begin
    with sec select
        secuencia <= apagado    when "000",
                    encendido when "001",
                    parpadear when "010",
                    alternar when "011",
                    barraProgreso(15 downto 0) when "100",
                    apagado when others;
     
  
    pr_secuencia: process(rst, clk)
    begin
        IF RISING_EDGE(clk) then
           if rst = '1' then 
            apagado <= (others => '0');
            encendido <= (others => '1');
            parpadear <= (others => '0');
            alternar <= "1010101010101010";
            barraProgreso <="11111111111111110000000000000000";
            cuenta <= (others => '0');
        elsif cuenta = "1111111111111111111111111" then
            parpadear <= not(parpadear);
            alternar <= not(alternar);
            barraProgreso <= barraProgreso(0) & barraProgreso(31 downto 1);
            cuenta <= (others => '0');
        else
            cuenta <= cuenta + '1';
       end if;
    end if;
  end process pr_secuencia;
end rtl;
