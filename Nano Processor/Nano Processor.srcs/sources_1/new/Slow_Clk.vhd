----------------------------------------------------------------------------------
-- Create Date: 10/11/2018 02:19:27 PM
-- Design Name: Slowed Down Clock
-- Module Name: Slow_Clk - Behavioral
-- Project Name: Nano Processor
-- Description: Clock which is slowed down
-- Dependencies: None
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Slow_Clk is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk;

architecture Behavioral of Slow_Clk is

signal count: integer := 1;
signal clk_status: std_logic := '1';
signal is_begin: std_logic := '1';

begin    
    -- for 100MHz input clock this generates 1Hz clock
    process (Clk_in) begin
        if (rising_edge(Clk_in)) then           -- if signal is in rising edge
            count <= count +1;
            if (count >= 2) then                -- show down by this much -- 25000000
                clk_status <= not clk_status;   -- flip clk_status
                Clk_out<= clk_status;               -- output reset count
                count <= 1;                     -- reset count
            end if;
        end if;
    end process;

end Behavioral;
