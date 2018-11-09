----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2018 12:55:01 AM
-- Design Name: 
-- Module Name: TB_Add_Sub - Behavioral
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


entity TB_Add_Sub is
--  Port ( );
end TB_Add_Sub;

architecture Behavioral of TB_Add_Sub is
    COMPONENT Add_Sub
        Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
               B : in STD_LOGIC_VECTOR(7 downto 0);
               AS : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR(7 downto 0);
               CARRY_FLAG : out STD_LOGIC;
               ZERO_FLAG : out STD_LOGIC;
              SIGN_FLAG: out STD_LOGIC;
              OVERFLOW_FLAG : out STD_LOGIC);
     END COMPONENT;
     
     SIGNAL AS, CARRY_FLAG, ZERO_FLAG, SIGN_FLAG, OVERFLOW_FLAG : STD_LOGIC;
      SIGNAL A, B,  S : STD_LOGIC_VECTOR(7 downto 0);
     
begin
    UUT: Add_Sub PORT MAP(
        A => A,
        B => B,
        AS => AS,
        S => S,
        CARRY_FLAG => CARRY_FLAG,
        ZERO_FLAG => ZERO_FLAG,
        SIGN_FLAG => SIGN_FLAG,
        OVERFLOW_FLAG => OVERFLOW_FLAG
        );
        
        process
        begin
            A <= "01111100";
            B <= "00000001";
            AS <= '0';          -- Positive number + 1
            wait for 100ns;
            
            A <= "01111100";
            B <= "00000001";
            AS <= '1';          -- Positive Number - 1
            wait for 100ns;
            
            A <= "11111100";
            B <= "00000001";
            AS <= '0';          -- Negative number + 1
            wait for 100ns;
            
            A <= "11111100";
            B <= "00000001";
            AS <= '1';          -- Negative number - 1
            wait for 100ns;
            
            
            A <= "01111100";
            B <= "00000111";
            AS <= '0';          -- Positive overflow
            wait for 100ns;
            
            A <= "10000001";
            B <= "10000001";
            AS <= '0';          -- Nagative Overflow
            wait for 100ns;
            
            A <= "01111100";
            B <= "01111100";
            AS <= '1';          -- Zero
            wait for 100ns;
            
            
            wait;
        end process;

end Behavioral;
