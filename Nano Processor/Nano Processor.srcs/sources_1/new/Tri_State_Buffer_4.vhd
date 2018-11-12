----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 06:52:51 PM
-- Design Name: 
-- Module Name: Tri_State_Buffer_8 - Behavioral
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

entity Tri_State_Buffer_4 is
    Port ( I  : in  STD_LOGIC_VECTOR (3 downto 0);
           EN  : in  STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0));
end Tri_State_Buffer_4;

architecture Behavioral of Tri_State_Buffer_4 is

begin
    O <= I when (EN = '1') else "0000";
end Behavioral;
