----------------------------------------------------------------------------------
-- Tri State Buffer to emit 8 bits
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Tri_State_Buffer_8 is
    Port ( I  : in  STD_LOGIC_VECTOR (7 downto 0);
           EN  : in  STD_LOGIC;
           O : out STD_LOGIC_VECTOR (7 downto 0));
end Tri_State_Buffer_8;

architecture Behavioral of Tri_State_Buffer_8 is

begin
    O <= I when (EN = '1') else "ZZZZZZZZ";
end Behavioral;
