----------------------------------------------------------------------------------
-- Create Date: 10/18/2018 01:56:55 PM
-- Design Name: Register
-- Module Name: Reg - Behavioral
-- Project Name: Nano Processor
-- Description: Register that can hold 8 bits
-- Dependencies: None
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC := '0';
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end Reg;

architecture Behavioral of Reg is
    signal Stored_Value: STD_LOGIC_VECTOR(7 downto 0) :="00000000";
    
begin
    
    process (Clk) begin
        if (rising_edge(Clk)) then -- respond when clock rises
                if EN = '1' then
                    -- If enable is set input the value to the register
                    Stored_Value <= D;
                end if;
                Q <= Stored_Value;
        end if;
       
    end process;

end Behavioral;
