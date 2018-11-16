----------------------------------------------------------------------------------
-- ROM to store instruction
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity ROM_16_17 is
    Port ( 
            -- 16 instructions can be stored
            address: in STD_LOGIC_VECTOR (3 downto 0);
            -- each instrunction is 17 bits long
           data: out STD_LOGIC_VECTOR (16 downto 0));
end ROM_16_17;

architecture Behavioral of ROM_16_17 is
    type rom_type is array (0 to 15) of std_logic_vector(16 downto 0);
    signal instruction_ROM : rom_type := (
            "01000100000000101",
            "01001000000001010",
            "01001100000000000",
            "11000110000000000",
            "01010100000000001",
            "00001101000000000",
            "11011101100000000",
            "10010010100000000",
            "11011110000000000",
            "01110000000001011",
            "01100000000000101",
            "11001111100000000",
            "11100000000000000",
            "11100000000000000",
            "11100000000000000",
            "11100000000000000"
     );
        
begin
    data <= instruction_ROM(to_integer(unsigned(address)));

end Behavioral;
