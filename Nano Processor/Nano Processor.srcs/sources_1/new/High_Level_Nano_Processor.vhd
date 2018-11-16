----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2018 03:22:33 PM
-- Design Name: 
-- Module Name: AU_7_Seg - Behavioral
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

entity High_Level_Nano_Processor is
    Port ( CLK : in STD_LOGIC;
            CLR : in STD_LOGIC;
            ZERO : out STD_LOGIC;
            CARRY : out STD_LOGIC;
            OVERFLOW : out STD_LOGIC;
            SIGN : out STD_LOGIC;
            R7 : out STD_LOGIC_VECTOR (7 downto 0);
            an: out STD_LOGIC_VECTOR (3 downto 0);
            SEG: out STD_LOGIC_VECTOR (6 downto 0)
           );
end High_Level_Nano_Processor;


architecture Behavioral of High_Level_Nano_Processor is
    component Nano_Processor
        Port ( CLK : in STD_LOGIC;
               CLR : in STD_LOGIC;
               ZERO : out STD_LOGIC;
               CARRY : out STD_LOGIC;
               OVERFLOW : out STD_LOGIC;
               SIGN : out STD_LOGIC;
               R0 : out STD_LOGIC_VECTOR (7 downto 0);
               R1 : out STD_LOGIC_VECTOR (7 downto 0);
               R2 : out STD_LOGIC_VECTOR (7 downto 0);
               R3 : out STD_LOGIC_VECTOR (7 downto 0);
               R4 : out STD_LOGIC_VECTOR (7 downto 0);
               R5 : out STD_LOGIC_VECTOR (7 downto 0);
               R6 : out STD_LOGIC_VECTOR (7 downto 0);
               R7 : out STD_LOGIC_VECTOR (7 downto 0);
               NEXT_IA: out STD_LOGIC_VECTOR (3 downto 0);
               CURR_IA: out STD_LOGIC_VECTOR (3 downto 0)
               );
    end component;
    
    component Slow_Clk
        Port ( Clk_in : in STD_LOGIC;
               Clk_out : out STD_LOGIC:='0');
    end component;
    
   component LUT_16_7
           Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
                  data : out STD_LOGIC_VECTOR (6 downto 0));
   end component;
   
    signal R0: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R1: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R2: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R3: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R4: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R5: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R6: STD_LOGIC_VECTOR (7 downto 0);
    signal T_R7: STD_LOGIC_VECTOR (7 downto 0);
    
    signal NEXT_IA: STD_LOGIC_VECTOR (3 downto 0);
    signal CURR_IA: STD_LOGIC_VECTOR (3 downto 0);
    
    signal SEG_A: STD_LOGIC_VECTOR (6 downto 0);
    signal SEG_B: STD_LOGIC_VECTOR (6 downto 0);
    
    signal Slowed_CLK: STD_LOGIC := '0';

begin
    Slow_Clk_0: Slow_Clk port map(
            Clk_in => CLK,
            Clk_out => Slowed_CLK
       );

   Nano_Processor_0: Nano_Processor
        port map (
            CLK => Slowed_CLK,
            CLR => CLR,
            ZERO => ZERO,
            CARRY => CARRY,
            OVERFLOW  => OVERFLOW,
            SIGN => SIGN,
            R0 => R0,
            R1 => T_R1,
            R2 => T_R2,
            R3 => T_R3,
            R4 => T_R4,
            R5 => T_R5,
            R6 => T_R6,
            R7 => T_R7,
            NEXT_IA => NEXT_IA,
            CURR_IA => CURR_IA
        );
        
    LUT_16_7_0: LUT_16_7
        port map (
            address => T_R7(3 downto 0),
            data => SEG_A(6 downto 0)
        );
        
    LUT_16_7_1: LUT_16_7
        port map (
            address => T_R7(7 downto 4),
            data => SEG_B(6 downto 0)
        );
        
    R7 <= T_R7;
    
    an(0) <= '1';
    an(1) <= '1';
    an(2) <= CLK;
    an(3) <= NOT CLK;
    
    SEG(0) <= (SEG_A(0) AND CLK) OR (SEG_B(0) AND NOT CLK);
    SEG(1) <= (SEG_A(1) AND CLK) OR (SEG_B(1) AND NOT CLK);
    SEG(2) <= (SEG_A(2) AND CLK) OR (SEG_B(2) AND NOT CLK);
    SEG(3) <= (SEG_A(3) AND CLK) OR (SEG_B(3) AND NOT CLK);
    SEG(4) <= (SEG_A(4) AND CLK) OR (SEG_B(4) AND NOT CLK);
    SEG(5) <= (SEG_A(5) AND CLK) OR (SEG_B(5) AND NOT CLK);
    SEG(6) <= (SEG_A(6) AND CLK) OR (SEG_B(6) AND NOT CLK);

end Behavioral;
