


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2018 10:15:07 PM
-- Design Name: 
-- Module Name: TB_Reg_Bank - Behavioral
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

entity TB_Register_Bank is
--  Port ( );
end TB_Register_Bank;

architecture Behavioral of TB_Register_Bank is
    component Reg_Bank
        Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
                I : in STD_LOGIC_VECTOR (2 downto 0);
                CLK : in STD_LOGIC;
                CLR : in STD_LOGIC;
                R0 : out STD_LOGIC_VECTOR (7 downto 0);
                R1 : out STD_LOGIC_VECTOR (7 downto 0);
                R2 : out STD_LOGIC_VECTOR (7 downto 0);
                R3 : out STD_LOGIC_VECTOR (7 downto 0);
                R4 : out STD_LOGIC_VECTOR (7 downto 0);
                R5 : out STD_LOGIC_VECTOR (7 downto 0);
                R6 : out STD_LOGIC_VECTOR (7 downto 0);
                R7 : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal D : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal I : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal CLK : STD_LOGIC := '0';
    signal CLR : STD_LOGIC := '0';
    signal R0 : STD_LOGIC_VECTOR (7 downto 0);
    signal R1 : STD_LOGIC_VECTOR (7 downto 0);
    signal R2 : STD_LOGIC_VECTOR (7 downto 0);
    signal R3 : STD_LOGIC_VECTOR (7 downto 0);
    signal R4 : STD_LOGIC_VECTOR (7 downto 0);
    signal R5 : STD_LOGIC_VECTOR (7 downto 0);
    signal R6 : STD_LOGIC_VECTOR (7 downto 0);
    signal R7 : STD_LOGIC_VECTOR (7 downto 0);
    
begin
    UUT: Reg_Bank port map(
            D => D,
            I => I, 
            CLK => CLK, 
            CLR => CLR,
            R0 => R0,
            R1 => R1,
            R2 => R2,
            R3 => R3,
            R4 => R4,
            R5 => R5,
            R6 => R6,
            R7 => R7
       );
            
    CLK <= not CLK after 50ns;
       
    process begin
            wait for 150ns;
            D <= "00010000";
            I <= "010"; 
            
            wait for 150ns;
            D <= "00011110";
            I <= "011"; 
                        
            wait for 150ns;
            CLR <= '1';
          wait;
          
    end process;

end Behavioral;

