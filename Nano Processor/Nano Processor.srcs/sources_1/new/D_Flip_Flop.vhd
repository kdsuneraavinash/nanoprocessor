----------------------------------------------------------------------------------
-- Simple D FLip Flop to hold 1 bit
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Flip_Flop is
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC :='0');
end D_Flip_Flop;

architecture Behavioral of D_Flip_Flop is
begin

    process (Clk) begin        
        if (falling_edge(Clk)) then -- if falling edge of pulse
            if Res = '1' then       -- clear output if reset is high
                Q <= '0';
            else
                Q <= D;      
            end if;
        end if;
    end process;

end Behavioral;
