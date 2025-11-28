----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       
-- 
-- Create Date:    
-- Design Name:    Practica 1b 
-- Module Name:    divisor - rtl
-- Project Name:   Practica 1b 
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Creacion de un reloj de 1 Hz a partir de un reloj de 100 MHz
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor is
  port (
    rst        : in  std_logic;         -- asynch reset
    clk_100mhz : in  std_logic;         -- 100 MHz input clock
    clk_1hz    : out std_logic;         -- 1 Hz output clock
    count1_en  : out std_logic;         -- enable 1 contador
    count2_en  : out std_logic          -- enable 2 contador
    );
end divisor;

architecture rtl of divisor is
  signal cntr_reg    : unsigned(24 downto 0);
  signal clk_1hz_reg : std_logic;
begin

  p_cntr : process(rst, clk_100mhz)
  begin
    if (rst = '1') then
      cntr_reg    <= (others => '0');
      clk_1hz_reg <= '0';
    elsif rising_edge(clk_100mhz) then
      if cntr_reg = (24 downto 0 => '1') then
        cntr_reg    <= (others => '0');
        clk_1hz_reg <= not clk_1hz_reg;
      else
        if cntr_reg(3 downto 0) = "1111" then --el primer contador cuanta siempre q este contador sea impar
            count1_en <= '1';
        else 
             count1_en <= '0';
        end if;
        
        if cntr_reg(3 downto 0) = "0000" then --el segundo contador cuenta cuando el numero acabe en 1011
            count2_en <= '1';
        else 
             count2_en <= '0';
        end if;
        cntr_reg    <= cntr_reg + 1;
        clk_1hz_reg <= clk_1hz_reg;
      end if;
    end if;
  end process p_cntr;

  output_clock : clk_1hz <= clk_1hz_reg;
  end rtl;
