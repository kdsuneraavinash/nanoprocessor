----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 06:56:48 PM
-- Design Name: 
-- Module Name: TSB_Set_8_to_8 - Behavioral
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

entity TSB_Set_2_to_4 is
        Port(
            JMP: in STD_LOGIC;
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            Q: out STD_LOGIC_VECTOR(3 downto 0));
end TSB_Set_2_to_4;

architecture Behavioral of TSB_Set_2_to_4 is
    component Decoder_1_to_2
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(1 downto 0) );
    end component;
    
    component Tri_State_Buffer_4
        Port ( I  : in  STD_LOGIC_VECTOR (3 downto 0);
               EN  : in  STD_LOGIC;
               O : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal EN_TSB: std_logic_vector(1 downto 0);
    signal VA: STD_LOGIC_VECTOR (3 downto 0);
    signal VB: STD_LOGIC_VECTOR (3 downto 0);
    
begin
    Decoder_1_to_2_0: Decoder_1_to_2
        port map(
            I  => JMP,
            EN => '1',
            Y  => EN_TSB(1 downto 0)
        );
        
    Tri_State_Buffer_4_0: Tri_State_Buffer_4
        port map(
            I  => A (3 downto 0),
            EN => EN_TSB(0),
            O  => VA
        );
                  
    Tri_State_Buffer_4_1: Tri_State_Buffer_4
      port map(
          I  => B (3 downto 0),
          EN => EN_TSB(1),
          O  => VB
      );

    Q <= VA OR VB;
      
end Behavioral;
