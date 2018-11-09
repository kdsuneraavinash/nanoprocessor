----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2018 03:51:18 PM
-- Design Name: 
-- Module Name: FA - Behavioral
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


entity FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end FA;

architecture Behavioral of FA is
    component HA
         port (
         A: in std_logic;
         B: in std_logic;
         S: out std_logic;
         C: out std_logic);
     end component;
     
     signal HA0_S: std_logic;
     signal HA0_C: std_logic;
     signal HA1_S: std_logic;
     signal HA1_C: std_logic;

begin
    HA_0 : HA
         port map (
         A => A,
         B => B,
         S => HA0_S,
         C => HA0_C);
     HA_1 : HA
         port map (
         A => HA0_S,
         B => C_in,
         S => HA1_S,
         C => HA1_C);
     C_out <= HA0_C OR HA1_C;
     S <= HA1_S;


end Behavioral;
