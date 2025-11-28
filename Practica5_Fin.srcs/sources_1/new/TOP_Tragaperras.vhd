----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2023 18:20:30
-- Design Name: 
-- Module Name: TOP_Tragaperras - rtl
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

entity TOP_Tragaperras is
  Port (
    start, fin, clk, rst: in std_logic; 
    display: out std_logic_vector(6 downto 0);
    display_enable:out  STD_LOGIC_VECTOR (3 downto 0);
    done: out std_logic_vector(15 downto 0)
    );
end TOP_Tragaperras;

architecture rtl of TOP_Tragaperras is

component debouncer is
  port (
    rst             : in  std_logic;
    clk             : in  std_logic;
    x               : in  std_logic;
    xDeb            : out std_logic;
    xDebFallingEdge : out std_logic;
    xDebRisingEdge  : out std_logic
    );
end component debouncer;

component displays is
    Port ( 
        rst : in STD_LOGIC;
        clk : in STD_LOGIC;       
        digito_0 : in  STD_LOGIC_VECTOR (3 downto 0);
        digito_1 : in  STD_LOGIC_VECTOR (3 downto 0);
        digito_2 : in  STD_LOGIC_VECTOR (3 downto 0);
        digito_3 : in  STD_LOGIC_VECTOR (3 downto 0);
        display : out  STD_LOGIC_VECTOR (6 downto 0);
        display_enable : out  STD_LOGIC_VECTOR (3 downto 0)
     );
end component displays;

component UC is
    Port (clk, rst, start, fin:in std_logic; 
          c1,c2,cont3: in std_logic_vector(3 downto 0);
          control: out std_logic_vector(6 downto 0)
        );
end component UC;

component RutaDedatos is
    Port ( clk :in std_logic;
      rst       :in  std_logic;
      control: in std_logic_vector(6 downto 0);
      c1,c2,cont3: out std_logic_vector(3 downto 0);
      leds: out std_logic_vector(15 downto 0));
end component RutaDedatos;


signal dStart, dFin: std_logic;
signal contador1, contador2,contador3: std_logic_vector(3 downto 0);
signal c: std_logic_vector(6 downto 0);

-- Señales auxiliares para los contadores.

begin
   
    dut_debouncerStart: debouncer port map(
        rst        => rst,     
        clk        => clk,     
        x          => start,  
        xDebRisingEdge  => dStart
    );
    
    dut_debouncerFin: debouncer port map(
        rst        => rst,     
        clk        => clk,     
        x          => fin,  
        xDebRisingEdge  => dFin
    );
    
    dut_displays: displays port map( 
        rst => rst,
        clk => clk,       
        digito_0 => contador1,
        digito_1 => contador2,
        digito_2 => "0000",
        digito_3 => contador3,
        display => display,
        display_enable =>display_enable
     );

    dut_rutaDeDatos: RutaDeDatos port map( 
          clk => clk,
          rst => rst,
          control => c,
          c1 => contador1,
          c2 => contador2,
          cont3 => contador3,
          leds  =>done
     );
     
     dut_unidadDeControl: UC port map(
            clk => clk,
            rst => rst, 
            start => dStart,
            fin => dFin, 
            c1=> contador1,
            c2 => contador2,
            cont3 => contador3,
            control => c
        );
        
end rtl;
