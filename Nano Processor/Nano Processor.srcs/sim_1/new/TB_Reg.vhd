----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2018 10:52:12 PM
-- Design Name: 
-- Module Name: TB_Reg - Behavioral
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


entity TB_Reg is
--  Port ( );
end TB_Reg;

architecture Behavioral of TB_Reg is
component Reg
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
       EN : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal D : STD_LOGIC_VECTOR (7 downto 0):= "00000000";
    signal EN : STD_LOGIC := '0';
    signal Clk : STD_LOGIC:= '0';
    signal Q : STD_LOGIC_VECTOR (7 downto 0);

begin
    UUT: Reg port map(
        D=> D,
        EN => EN,
        Clk => Clk,
        Q => Q
    );
    
    process begin
            loop_a: for i in 0 to 4 loop
                CLK <= '1';
                wait for 50ns;
                CLK <= '0';
                wait for 50ns;
            end loop loop_a;
                    
            EN <= '1';
            D <= "10111101";
                    
            loop_c: for i in 0 to 4 loop
                CLK <= '1';
                wait for 50ns;
                CLK <= '0';
                wait for 50ns;
            end loop loop_c;
            
            wait;
                
    end process;
end Behavioral;
