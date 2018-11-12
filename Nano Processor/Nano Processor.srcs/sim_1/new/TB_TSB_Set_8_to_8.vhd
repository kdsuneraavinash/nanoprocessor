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


entity TB_TSB_Set_8_to_8 is
--  Port ( );
end TB_TSB_Set_8_to_8;

architecture Behavioral of TB_TSB_Set_8_to_8 is
    component TSB_Set_8_to_8
        Port(
            S: in STD_LOGIC_VECTOR(2 downto 0);
            R0 : in STD_LOGIC_VECTOR (7 downto 0);
            R1 : in STD_LOGIC_VECTOR (7 downto 0);
            R2 : in STD_LOGIC_VECTOR (7 downto 0);
            R3 : in STD_LOGIC_VECTOR (7 downto 0);
            R4 : in STD_LOGIC_VECTOR (7 downto 0);
            R5 : in STD_LOGIC_VECTOR (7 downto 0);
            R6 : in STD_LOGIC_VECTOR (7 downto 0);
            R7 : in STD_LOGIC_VECTOR (7 downto 0);
            Q: out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    signal R0 : STD_LOGIC_VECTOR (7 downto 0);
    signal R1 : STD_LOGIC_VECTOR (7 downto 0);
    signal R2 : STD_LOGIC_VECTOR (7 downto 0);
    signal R3 : STD_LOGIC_VECTOR (7 downto 0);
    signal R4 : STD_LOGIC_VECTOR (7 downto 0);
    signal R5 : STD_LOGIC_VECTOR (7 downto 0);
    signal R6 : STD_LOGIC_VECTOR (7 downto 0);
    signal R7 : STD_LOGIC_VECTOR (7 downto 0);
    
    signal S : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal Q : STD_LOGIC_VECTOR (7 downto 0);
    
begin
    UUT: TSB_Set_8_to_8 port map(
            S => S,
            R0 => R0,
            R1 => R1,
            R2 => R2,
            R3 => R3,
            R4 => R4,
            R5 => R5,
            R6 => R6,
            R7 => R7,
            Q => Q);
            
    process begin
        R0 <= "00000000";
        R1 <= "00000001";
        R2 <= "00000010";
        R3 <= "00000011";
        R4 <= "00000100";
        R5 <= "00000101";
        R6 <= "00000110";
        R7 <= "00000111";
        
        test_loop: for iter in 0 to 7 loop
            S <= std_logic_vector(to_unsigned(iter, 3));
            wait for 50 ns;
        end loop test_loop;
         wait;
                 
     end process;


end Behavioral;
