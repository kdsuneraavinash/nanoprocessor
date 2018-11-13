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
           Reset: in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end Reg;

architecture Behavioral of Reg is
    signal is_start: boolean := true;
    
begin
    
    process (Clk) begin
        if is_start then
            is_start <= false;
            Q <= "00000000";
        end if;
    
        if (falling_edge(Clk)) then -- respond when clock rises
                if EN = '1' then
                    -- If enable is set input the value to the register
                    Q(0) <= D(0) and (not Reset);
                    Q(1) <= D(1) and (not Reset);
                    Q(2) <= D(2) and (not Reset);
                    Q(3) <= D(3) and (not Reset);
                    Q(4) <= D(4) and (not Reset);
                    Q(5) <= D(5) and (not Reset);
                    Q(6) <= D(6) and (not Reset);
                    Q(7) <= D(7) and (not Reset);
                end if;
        end if;
       
    end process;

end Behavioral;
