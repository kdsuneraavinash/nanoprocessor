----------------------------------------------------------------------------------
-- Tri State Buffer set with 2 8 bit buffers to select one 8 bit buffer
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TSB_Set_2_to_8 is
        Port(
            S: in STD_LOGIC;
            R0 : in STD_LOGIC_VECTOR (7 downto 0);
            R1 : in STD_LOGIC_VECTOR (7 downto 0);
            Q: out STD_LOGIC_VECTOR(7 downto 0));
end TSB_Set_2_to_8;

architecture Behavioral of TSB_Set_2_to_8 is
    component Decoder_1_to_2
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(1 downto 0) );
    end component;
    
    component Tri_State_Buffer_8
        Port ( I  : in  STD_LOGIC_VECTOR (7 downto 0);
               EN  : in  STD_LOGIC;
               O : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal EN_TSB: std_logic_vector(1 downto 0);
    
begin
    -- select from 2 buffers
    Decoder_1_to_2_0: Decoder_1_to_2
        port map(
            I  => S,
            EN => '1',
            Y  => EN_TSB(1 downto 0)
        );
        
    -- tri state buffers
    Tri_State_Buffer_8_0: Tri_State_Buffer_8
        port map(
            I  => R0 (7 downto 0),
            EN => EN_TSB(0),
            O  => Q
        );
                  
    Tri_State_Buffer_8_1: Tri_State_Buffer_8
      port map(
          I  => R1 (7 downto 0),
          EN => EN_TSB(1),
          O  => Q
      );
      
end Behavioral;
