----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2018 01:54:26 PM
-- Design Name: 
-- Module Name: TB_D_FF - Behavioral
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

entity TB_D_FF is
--  Port ( );
end TB_D_FF;

architecture Behavioral of TB_D_FF is
    component D_FF
    Port ( D : in STD_LOGIC_VECTOR(3 downto 0);
           EN: in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    signal D: STD_LOGIC_VECTOR(3 downto 0);
    signal EN: STD_LOGIC;
    signal Res: STD_LOGIC;
    signal Clk: STD_LOGIC := '0';
    signal Q: STD_LOGIC_VECTOR(3 downto 0);
    
begin
    UUT: D_FF port map(
            D => D,
            EN => EN,
            Res => Res,
            Clk => Clk,
            Q => Q
       );
       process begin
            EN <= '1';
            D <= "0001";
            Res <= '0';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "0010";
            Res <= '1';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "0100";
            Res <= '0';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "1000";
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            
            EN <= '0';
            D <= "0001";
            Res <= '0';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "0010";
            Res <= '1';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "0100";
            Res <= '0';
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait for 50 ns;
            D <= "1000";
            Clk <= '1';
            wait for 50 ns;
            Clk <= '0';
            wait;
       
       end process;

end Behavioral;
    
