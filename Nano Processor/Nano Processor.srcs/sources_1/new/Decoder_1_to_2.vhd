----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2018 02:14:20 PM
-- Design Name: 
-- Module Name: Decoder_1_to_2 - Behavioral
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

entity Decoder_1_to_2 is
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(1 downto 0) );
end Decoder_1_to_2;

architecture Behavioral of Decoder_1_to_2 is

begin
    Y(0) <= (not I) and EN;
    Y(1) <= I and EN;
end Behavioral;
