----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2023 20:38:23
-- Design Name: 
-- Module Name: tb_TRAGAPERRAS - RTL
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_TRAGAPERRAS is
end tb_TRAGAPERRAS;

architecture RTL of tb_TRAGAPERRAS is

component top_tragaperras is
    Port (
    start, fin, clk, rst: in std_logic; 
    display: out std_logic_vector(6 downto 0);
    display_enable:out  STD_LOGIC_VECTOR (3 downto 0);
    done: out std_logic_vector(15 downto 0)
    );
end component top_tragaperras;

signal clk,rst,fin,start: std_logic;
signal display: std_logic_vector(6 downto 0);
signal display_e: std_logic_vector(3 downto 0);
signal done: std_logic_vector(15 downto 0);

begin
 
  dut_top: top_tragaperras port map(
    start => start, fin => fin, clk => clk, rst => rst,
    display => display,
    display_enable => display_e,
    done => done
  );
    
   
   prueb: process
      begin 
       rst <= '0';
        start<= '0';
   
        fin<= '0';
        
        wait for 10ns;
        start <= '1';
        wait for 5ns;
        start <= '0';
  
         wait for 100ns;
         fin<= '1';
         wait for 10ns;
         rst <= '1';
   end process prueb;
         
   p_clk: process
     constant clk_period : time := 20 ns; 
     begin 
        clk <= '1';
        wait for clk_period/2;
        clk <= '0';
        wait for clk_period/2;
  end process;

end RTL;
