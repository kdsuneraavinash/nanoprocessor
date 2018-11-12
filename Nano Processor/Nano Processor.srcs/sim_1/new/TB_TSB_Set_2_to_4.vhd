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


entity TB_TSB_Set_2_to_4 is
--  Port ( );
end TB_TSB_Set_2_to_4;

architecture Behavioral of TB_TSB_Set_2_to_4 is
    component TSB_Set_2_to_4
        Port(
            JMP: in STD_LOGIC;
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            Q: out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    signal A : STD_LOGIC_VECTOR (3 downto 0);
    signal B : STD_LOGIC_VECTOR (3 downto 0);
    signal JMP : STD_LOGIC := '0';
    signal Q : STD_LOGIC_VECTOR (3 downto 0);
    
begin
    UUT: TSB_Set_2_to_4 port map(
            JMP => JMP,
            A => A,
            B => B,
            Q => Q);
            
    process begin
        A <= "0001";
        B <= "1000";
        
         JMP <= '0';
         wait for 200ns;
         JMP <= '1';
         wait;
                 
     end process;


end Behavioral;
