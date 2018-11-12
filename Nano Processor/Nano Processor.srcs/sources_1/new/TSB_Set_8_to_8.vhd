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

entity TSB_Set_8_to_8 is
        Port(
            S: in STD_LOGIC_VECTOR(2 downto 0);
            R0 : in STD_LOGIC_VECTOR (7 downto 0);
            R1 : in STD_LOGIC_VECTOR (7 downto 0);
            R2 : in STD_LOGIC_VECTOR (7 downto 0);
            R3 : in STD_LOGIC_VECTOR (7 downto 0);
            R4 : in STD_LOGIC_VECTOR (7 downto 0);
            R5 : in STD_LOGIC_VECTOR (7 downto 0);
            R6 : in STD_LOGIC_VECTOR (7 downto 0);
            R7 : in STD_LOGIC_VECTOR (7 downto 0);
            Q: out STD_LOGIC_VECTOR(7 downto 0));
end TSB_Set_8_to_8;

architecture Behavioral of TSB_Set_8_to_8 is
    component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component Tri_State_Buffer_8
        Port ( I  : in  STD_LOGIC_VECTOR (7 downto 0);
               EN  : in  STD_LOGIC;
               O : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal EN_TSB: std_logic_vector(7 downto 0);
    signal V0: STD_LOGIC_VECTOR (7 downto 0);
    signal V1: STD_LOGIC_VECTOR (7 downto 0);
    signal V2: STD_LOGIC_VECTOR (7 downto 0);
    signal V3: STD_LOGIC_VECTOR (7 downto 0);
    signal V4: STD_LOGIC_VECTOR (7 downto 0);
    signal V5: STD_LOGIC_VECTOR (7 downto 0);
    signal V6: STD_LOGIC_VECTOR (7 downto 0);
    signal V7: STD_LOGIC_VECTOR (7 downto 0);
    
begin
    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I  => S (2 downto 0),
            EN => '1',
            Y  => EN_TSB(7 downto 0)
        );
        
    Tri_State_Buffer_8_0: Tri_State_Buffer_8
        port map(
            I  => R0 (7 downto 0),
            EN => EN_TSB(0),
            O  => V0
        );
                  
    Tri_State_Buffer_8_1: Tri_State_Buffer_8
      port map(
          I  => R1 (7 downto 0),
          EN => EN_TSB(1),
          O  => V1
      );
              
    Tri_State_Buffer_8_2: Tri_State_Buffer_8
      port map(
          I  => R2 (7 downto 0),
          EN => EN_TSB(2),
          O  => V2
      );
                  
    Tri_State_Buffer_8_3: Tri_State_Buffer_8
      port map(
          I  => R3 (7 downto 0),
          EN => EN_TSB(3),
          O  => V3
      );
                  
    Tri_State_Buffer_8_4: Tri_State_Buffer_8
      port map(
          I  => R4 (7 downto 0),
          EN => EN_TSB(4),
          O  => V4
      );
                          
    Tri_State_Buffer_8_5: Tri_State_Buffer_8
      port map(
          I  => R5 (7 downto 0),
          EN => EN_TSB(5),
          O  => V5
      );
                  
    Tri_State_Buffer_8_6: Tri_State_Buffer_8
      port map(
          I  => R6 (7 downto 0),
          EN => EN_TSB(6),
          O  => V6
      );
                  
    Tri_State_Buffer_8_7: Tri_State_Buffer_8
      port map(
          I  => R7 (7 downto 0),
          EN => EN_TSB(7),
          O  => V7
      );

    Q <= V0 OR V1 OR V2 OR V3 OR V4 OR V5 OR V6 OR V7;
      
end Behavioral;
