----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2018 02:58:44 PM
-- Design Name: 
-- Module Name: TB_LUT_16_7 - Behavioral
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

entity TB_LUT_16_7 is
    --  Port ( );
end TB_LUT_16_7;

architecture Behavioral of TB_LUT_16_7 is
    component LUT_16_7
            Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
                   data : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    signal address: STD_LOGIC_VECTOR (3 downto 0);
    signal data: STD_LOGIC_VECTOR (6 downto 0);

begin
    UUT: LUT_16_7 port map(
        address => address,
        data => data
        );
    
    process begin
    
        -- testing all possible values
        test_loop : for i in 0 to 15 loop
            address <= std_logic_vector(to_unsigned(i, 4));
            wait for 62ns;
        end loop test_loop;
        wait;
        
    end process;


end Behavioral;
