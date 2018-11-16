----------------------------------------------------------------------------------
-- Simulation Source for Decoder_3_to_8
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;


architecture Behavioral of TB_Decoder_3_to_8 is
    component Decoder_3_to_8
        Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
               EN : in STD_LOGIC;
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    signal I: STD_LOGIC_VECTOR (2 downto 0);
    signal EN: STD_LOGIC;
    signal Y: STD_LOGIC_VECTOR (7 downto 0);

begin
    UUT: Decoder_3_to_8 port map(
        I=> I,
        EN => EN,
        Y => Y
    );
    
    process begin
            EN <= '1';
            
            -- Test every possible input with EN = 1
            enabled_loop: for iter in 0 to 7 loop
                I <= STD_LOGIC_VECTOR(to_unsigned(iter, 3));
                wait for 50 ns;
            end loop enabled_loop;
            
            EN <= '0';
            
            -- Test every possible input with EN = 0
            disabled_loop: for iter in 0 to 7 loop
                I <= STD_LOGIC_VECTOR(to_unsigned(iter, 3));
                wait for 50 ns;
            end loop disabled_loop;
            
            wait;
            
    end process;

end Behavioral;
