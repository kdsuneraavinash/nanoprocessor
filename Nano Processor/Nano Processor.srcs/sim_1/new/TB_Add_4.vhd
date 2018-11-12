----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 08:20:41 PM
-- Design Name: 
-- Module Name: TB_Add_4 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity TB_Add_4 is
--  Port ( );
end TB_Add_4;

architecture Behavioral of TB_Add_4 is
    component Add_4
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal A : STD_LOGIC_VECTOR (3 downto 0);
    signal S : STD_LOGIC_VECTOR (3 downto 0);
begin
    UUT: Add_4 port map(
            A => A,
            S => S
       );
       
       process begin
           loop_test: for iter in 0 to 15 loop
               A <= std_logic_vector(to_unsigned(iter, 4));
               wait for 50 ns;
           end loop loop_test;
           
        wait;
       end process;


end Behavioral;
