----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2018 01:36:48 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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

entity D_FF is
    Port ( D : in STD_LOGIC_VECTOR(3 downto 0);
           EN: in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end D_FF;

architecture Behavioral of D_FF is

begin

    process (Clk) begin
        if (EN = '1' and rising_edge(Clk)) then -- if rising edge of pulse
            if Res = '1' then      -- clear output if reset is high
                Q <= "0000";
            else
                Q <= D;      
            end if;
        end if;
    end process;

end Behavioral;
