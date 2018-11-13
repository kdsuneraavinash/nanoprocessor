----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2018 03:59:26 AM
-- Design Name: 
-- Module Name: TB_Nano_Processor - Behavioral
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

entity TB_Nano_Processor is
--  Port ( );
end TB_Nano_Processor;

architecture Behavioral of TB_Nano_Processor is
    component Nano_Processor
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           ZERO : out STD_LOGIC;
           CARRY : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC;
           SIGN : out STD_LOGIC;
           R0 : out STD_LOGIC_VECTOR (7 downto 0);
           R1 : out STD_LOGIC_VECTOR (7 downto 0);
           R2 : out STD_LOGIC_VECTOR (7 downto 0);
           R3 : out STD_LOGIC_VECTOR (7 downto 0);
           R4 : out STD_LOGIC_VECTOR (7 downto 0);
           R5 : out STD_LOGIC_VECTOR (7 downto 0);
           R6 : out STD_LOGIC_VECTOR (7 downto 0);
           R7 : out STD_LOGIC_VECTOR (7 downto 0)
           );
    end component;
    
    signal R7 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R6 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R5 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R4 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R3 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal R0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal CLK : STD_LOGIC := '0';
    signal CLR : STD_LOGIC:= '0';
    signal ZERO : STD_LOGIC := '0';
    signal CARRY : STD_LOGIC := '0';
    signal OVERFLOW : STD_LOGIC := '0';
    signal SIGN : STD_LOGIC := '0';
begin
    UUT: Nano_Processor port map(
            R7 => R7,
            R6 => R6,
            R5 => R5,
            R4 => R4,
            R3 => R3,
            R2 => R2,
            R1 => R1,
            R0 => R0,
            CLK  => CLK,
            CLR => CLR,
            ZERO => ZERO,
            CARRY => CARRY,
            OVERFLOW => OVERFLOW,
            SIGN => SIGN
       );  
       
       CLK <= not CLK after 5ns;
                  
end Behavioral;   
                  
