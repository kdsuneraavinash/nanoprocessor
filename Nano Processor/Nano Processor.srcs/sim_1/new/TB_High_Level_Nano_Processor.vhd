----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2018 09:41:49 PM
-- Design Name: 
-- Module Name: TB_High_Level_Nano_Processor - Behavioral
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

entity TB_High_Level_Nano_Processor is
--  Port ( );
end TB_High_Level_Nano_Processor;

architecture Behavioral of TB_High_Level_Nano_Processor is
    component High_Level_Nano_Processor is
        Port ( CLK : in STD_LOGIC;
                CLR : in STD_LOGIC;
                ZERO : out STD_LOGIC;
                CARRY : out STD_LOGIC;
                OVERFLOW : out STD_LOGIC;
                SIGN : out STD_LOGIC;
                R7 : out STD_LOGIC_VECTOR (7 downto 0);
                an: out STD_LOGIC_VECTOR (3 downto 0);
                SEG: out STD_LOGIC_VECTOR (6 downto 0)
               );
    end component;
        
    signal CLK : STD_LOGIC := '0';
    signal CLR : STD_LOGIC := '0';
    signal ZERO : STD_LOGIC;
    signal CARRY : STD_LOGIC;
    signal OVERFLOW : STD_LOGIC;
    signal SIGN : STD_LOGIC;
    signal R7 : STD_LOGIC_VECTOR (7 downto 0);
    signal an: STD_LOGIC_VECTOR (3 downto 0);
    signal SEG: STD_LOGIC_VECTOR (6 downto 0);
begin
    UUT: High_Level_Nano_Processor port map(
        R7 => R7,
        CLK  => CLK,
        CLR => CLR,
        ZERO => ZERO,
        CARRY => CARRY,
        OVERFLOW => OVERFLOW,
        SIGN => SIGN,
        an => an,
        SEG => SEG
   );  
   
   CLK <= not CLK after 9ns;

end Behavioral;
