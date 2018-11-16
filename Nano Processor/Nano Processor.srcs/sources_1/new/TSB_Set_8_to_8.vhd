----------------------------------------------------------------------------------
-- Tri State Buffer instead of Arithmatic Unit Muliplexer
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

    signal EN_TSB: STD_LOGIC_VECTOR(7 downto 0);
    
begin
    -- choose correct register
    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I  => S,
            EN => '1',
            Y  => EN_TSB
        );
        
    -- send each byte with tri state buffers
    Tri_State_Buffer_8_0: Tri_State_Buffer_8
        port map(
            I  => R0,
            EN => EN_TSB(0),
            O  => Q
        );
                  
    Tri_State_Buffer_8_1: Tri_State_Buffer_8
      port map(
          I  => R1,
          EN => EN_TSB(1),
          O  => Q
      );
              
    Tri_State_Buffer_8_2: Tri_State_Buffer_8
      port map(
          I  => R2,
          EN => EN_TSB(2),
          O  => Q
      );
                  
    Tri_State_Buffer_8_3: Tri_State_Buffer_8
      port map(
          I  => R3,
          EN => EN_TSB(3),
          O  => Q
      );
                  
    Tri_State_Buffer_8_4: Tri_State_Buffer_8
      port map(
          I  => R4,
          EN => EN_TSB(4),
          O  => Q
      );
                          
    Tri_State_Buffer_8_5: Tri_State_Buffer_8
      port map(
          I  => R5,
          EN => EN_TSB(5),
          O  => Q
      );
                  
    Tri_State_Buffer_8_6: Tri_State_Buffer_8
      port map(
          I  => R6,
          EN => EN_TSB(6),
          O  => Q
      );
                  
    Tri_State_Buffer_8_7: Tri_State_Buffer_8
      port map(
          I  => R7,
          EN => EN_TSB(7),
          O  => Q
      );
      
end Behavioral;
