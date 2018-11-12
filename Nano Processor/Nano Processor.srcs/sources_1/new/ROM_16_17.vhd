----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 09:11:09 PM
-- Design Name: 
-- Module Name: ROM_16_17 - Behavioral
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
                "01000100000001010",
                "01001000011110101",
                "00000101000000000",
                "10101000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000",
                "11100000000000000"
         );
        
        
        
begin
    data <= instruction_ROM(to_integer(unsigned(address)));

end Behavioral;
