----------------------------------------------------------------------------------
-- Create Date: 10/04/2018 01:30:04 PM
-- Design Name: 2 to 4 Decoder
-- Module Name: Decoder_2_to_4 - Behavioral
-- Project Name: Nano Processor
-- Description: 2 to 4 Decoder which flips only one lane as per input
-- Dependencies: None
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_2_to_4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_to_4;


architecture Behavioral of Decoder_2_to_4 is
begin

    Y(0) <= (NOT I(0)) AND (NOT I(1)) AND EN;
    Y(1) <= I(0) AND (NOT I(1)) AND EN;
    Y(2) <= (NOT I(0)) AND I(1) AND EN;
    Y(3) <= I(0) AND I(1) AND EN;

end Behavioral;
