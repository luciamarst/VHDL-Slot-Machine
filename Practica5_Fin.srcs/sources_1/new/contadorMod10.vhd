----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2023 15:54:41
-- Design Name: 
-- Module Name: contadorMod10 - Behavioral
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

 entity contadorMod10 is
    Port (
     rst, clk, enable, capacitacion: in std_logic;
    salida: out std_logic_vector(3 downto 0)
 );
 end contadorMod10;

 architecture Behavioral of contadorMod10 is
    signal salida_aux: std_logic_vector(3 downto 0):= "0000";
begin
    process(rst, clk)
        begin
         if (rst = '1') then
            salida_aux <= "0000";
         elsif (rising_edge(clk)) then
         
            if (capacitacion = '1' AND enable = '1') then
                if (salida_aux = "1001") then
                    salida_aux <= "0000";
                else
                    salida_aux <= salida_aux + '1';
                end if;
            end if;
        end if;
 end process;
    salida <= salida_aux;
 end Behavioral;
