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
       Reset: in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal D : STD_LOGIC_VECTOR (7 downto 0):= "00000000";
    signal EN : STD_LOGIC := '0';
    signal Clk : STD_LOGIC:= '0';
    signal Q : STD_LOGIC_VECTOR (7 downto 0);
    signal Reset: STD_LOGIC;

begin
    UUT: Reg port map(
        D=> D,
        EN => EN,
        Reset => Reset,
        Clk => Clk,
        Q => Q
    );
    
    CLK <= not CLK after 50ns;
    
    process begin
            Reset <= '0';
            EN <= '1';
            D <= "10111101";
                    
            wait for 100ns;
            EN <= '1';
            D <= "10110001";
            wait;
                
    end process;
end Behavioral;
