----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2023 12:09:59
-- Design Name: 
-- Module Name: UC - Behavioral
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

entity UC is
    Port (clk, rst, start, fin:in std_logic; 
          c1,c2,cont3: in std_logic_vector(3 downto 0);
          control: out std_logic_vector(6 downto 0)
        );
end UC;

architecture Behavioral of UC is
type state is (s0, s1, s2,s3);
   signal estado_actual, estado_siguiente: state;
   
   signal control_aux: std_logic_vector(6 downto 0);
   alias enable_contador_10seg: std_logic is control_aux(0);
   alias enable_contador_display1: std_logic is control_aux(1);
   alias enable_contador_display2: std_logic is control_aux(2);
   alias mux_leds: std_logic_vector(2 downto 0) is control_aux(5 downto 3);
   alias start_signal :std_logic is control_aux(6);
begin
    control<= control_aux;
    pr_regEstActual: process(clk, rst)
      begin 
         if rst = '1' then 
            estado_actual <= s0;
         elsif rising_edge(clk) then
            estado_actual <= estado_siguiente;
         end if;
   end process pr_regEstActual;
   
   pr_estSigComb: process (estado_actual, start)
      begin 
         case estado_actual is
            when s0 =>
                enable_contador_display1 <= '0';
                enable_contador_display2 <= '0';
                enable_contador_10seg<= '0';
                mux_leds<= "100";
                start_signal <= '0';
               if start = '1' then 
                  estado_siguiente <= s1;
               else 
                  estado_siguiente <= s0;
               end if;
               
            when s1 => 
                start_signal <= '1';
                enable_contador_display1 <= '1';
                enable_contador_display2 <= '1';
                enable_contador_10seg<= '0';
                mux_leds<= "000";
              if fin = '1' then
                    if c1 = c2 then
                        
                        estado_siguiente <= s2;
                    else 
                        estado_siguiente<= s3;
                    end if;
              else 
                estado_siguiente <= s1;
              end if;
            
            when s2 => 
             start_signal <= '1';
             enable_contador_10seg<= '1';
             enable_contador_display1 <= '0';
             enable_contador_display2 <= '0';
              mux_leds<= "010";
              if cont3 = "1001" then
                    estado_siguiente <= s0;
              else 
                    estado_siguiente <= s2;
              end if;
               
            when s3=> 
                start_signal <= '1';
                enable_contador_10seg<= '1';
                enable_contador_display1 <= '0';
                enable_contador_display2 <= '0';
                mux_leds <= "011";
                if cont3 = "1001" then
                    estado_siguiente <= s0;
                else
                    estado_siguiente <= s3;
                end if;
            
         end case;
   end process pr_estSigComb;

end Behavioral;
