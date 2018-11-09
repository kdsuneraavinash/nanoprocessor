----------------------------------------------------------------------------------
-- Simulation Source for Slow_Clk
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Slow_Clk is
--  Port ( );
end TB_Slow_Clk;

architecture Behavioral of TB_Slow_Clk is
    component Slow_Clk
        Port ( Clk_in : in STD_LOGIC;
              Clk_out : out STD_LOGIC);
    end component;
    
    signal Clk_in: STD_LOGIC := '0';
    signal Clk_out: STD_LOGIC := '0';
    signal clk: STD_LOGIC := '0';
    
begin
    UUT: Slow_Clk port map(
            Clk_in => Clk_in,
            Clk_out => Clk_out
       );
       
   clk <= not clk after 10 ns;  -- flip clock for testing purposes to simulate clock
   Clk_in <= clk;
   
end Behavioral;
