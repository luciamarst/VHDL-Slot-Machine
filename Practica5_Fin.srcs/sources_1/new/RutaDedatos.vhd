----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2023 18:19:59
-- Design Name: 
-- Module Name: RutaDedatos - Behavioral
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

entity RutaDedatos is
    Port ( clk :in std_logic;
      rst       :in  std_logic;
      control: in std_logic_vector(6 downto 0);
      c1,c2,cont3: out std_logic_vector(3 downto 0);
      leds: out std_logic_vector(15 downto 0));
end RutaDedatos;

architecture Behavioral of RutaDedatos is

COMPONENT pr5_mem_dig0
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
  );
END COMPONENT;

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
  );
END COMPONENT;
component contadorMod10 port (
 rst, clk, enable, capacitacion: in std_logic;
 salida: out std_logic_vector(3 downto 0)
 ); end component;

 component divisor port (
    rst        : in  std_logic;         -- asynch reset
    clk_100mhz : in  std_logic;         -- 100 MHz input clock
    clk_1hz    : out std_logic;         -- 1 Hz output clock
    count1_en  : out std_logic;         -- enable 1 contador
    count2_en  : out std_logic          -- enable 2 contador
 ); end component;

component GeneradorSecuencias is
    Port (
          clk,rst: in std_logic;
          sec:in std_logic_vector( 2 downto 0);
          secuencia: out std_logic_vector(15 downto 0)
    );
end component;

 -- Vector de control para los enables de los contadores y el multiplexor del generador de efectos.
 signal control_aux: std_logic_vector (6 downto 0);
 alias enable_contador_5seg: std_logic is control_aux(0);
 alias enable_contador_display1: std_logic is control_aux(1);
 alias enable_contador_display2: std_logic is control_aux(2);
 alias mux_leds: std_logic_vector (2 downto 0) is control_aux(5 downto 3);
 alias muestra_0: std_logic is control_aux(6);

 -- Vector para los capacitadores de los contadores.
 signal clk_2Hz: STD_LOGIC;
 signal clk_display1: STD_LOGIC;
 signal clk_display2: STD_LOGIC;

--Señales memoria
signal co1, co2: std_logic_vector(3 downto 0);
signal co3: std_logic_vector(3 downto 0):= "0000";
signal cnt1,cnt2: std_logic_vector(5 downto 0);
signal salidaMem1, salidaMem2: std_logic_vector(3 downto 0);

 begin
 control_aux <= control;
 -- Divisor de frecuencias.
   c1<= "0000" when control(6) = '0' else salidaMem1;
   c2 <="0000" when control(6) = '0' else salidaMem2;
   cont3<= "0000" when control(6)= '0' else co3; 
   
 
   
 MOD_DIVISOR: divisor port map (
     rst       => rst ,        -- asynch reset
     clk_100mhz => clk,        -- 100 MHz input clock
    clk_1hz    => clk_2Hz,         -- 1 Hz output clock
    count1_en  => clk_display1 ,     -- enable 1 contador
    count2_en  => clk_display2         -- enable 2 contador
    );
 -- Contador de 2Hz.
 MOD_CONT_2HZ: contadorMod10 port map (
        rst => rst,
        clk => clk_2Hz, 
        enable => enable_contador_5seg,
        capacitacion => '1', 
        salida => co3
        );
 -- Contadores de display.
 MOD_CONT_DISPLAY1: contadorMod10 port map (
    rst => rst, 
    clk => clk_display1,
    enable => enable_contador_display1,
    capacitacion => clk_display1, 
    salida =>co1
    );
 MOD_CONT_DISPLAY2: contadorMod10 port map (
    rst =>rst, 
    clk => clk,
    enable=> enable_contador_display2, 
    capacitacion => clk_display2, 
    salida =>co2
    );
  --Generador de efectos.
 MOD_GENERADOR_EFECTOS: GeneradorSecuencias port map (
    clk => clk_2Hz,
    rst => rst,
    sec => mux_leds,
    secuencia => leds
    );

    cnt1 <= "00" & co1;
    cnt2 <= "00" & co2;
mem_Uno : pr5_mem_dig0
  PORT MAP (
    clka => clk,
    wea => "0",
    addra => cnt1,
    dina => "0000",
    douta => salidaMem1
  );
  
 mem_Dos : blk_mem_gen_0
  PORT MAP (
    clka => clk,
    wea => "0",
    addra => cnt2,
    dina => "0000",
    douta => salidaMem2
  );
end Behavioral;
