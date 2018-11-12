----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 07:08:19 PM
-- Design Name: 
-- Module Name: TB_TSB_Set_8_to_8 - Behavioral
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


entity TB_TSB_Set_2_to_8 is
--  Port ( );
end TB_TSB_Set_2_to_8;

architecture Behavioral of TB_TSB_Set_2_to_8 is
    component TSB_Set_2_to_8
        Port(
            S: in STD_LOGIC;
            R0 : in STD_LOGIC_VECTOR (7 downto 0);
            R1 : in STD_LOGIC_VECTOR (7 downto 0);
            Q: out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    signal R0 : STD_LOGIC_VECTOR (7 downto 0);
    signal R1 : STD_LOGIC_VECTOR (7 downto 0);
    signal S : STD_LOGIC := '0';
    signal Q : STD_LOGIC_VECTOR (7 downto 0);
    
begin
    UUT: TSB_Set_2_to_8 port map(
            S => S,
            R0 => R0,
            R1 => R1,
            Q => Q);
            
    process begin
        R0 <= "00000001";
        R1 <= "10000000";
        
         S <= '0';
         wait for 200ns;
         S <= '1';
         wait;
                 
     end process;


end Behavioral;
