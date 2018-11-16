----------------------------------------------------------------------------------
-- Tri State Buffer to hold 4bits
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
    O <= I when (EN = '1') else "ZZZZ";
end Behavioral;
