----------------------------------------------------------------------------------
-- Adds one always to input in a clock cycle
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Add_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Add_4;

architecture Behavioral of Add_4 is
    component HA
         port (
         A: in std_logic;
         B: in std_logic;
         S: out std_logic;
         C: out std_logic);
     end component;
     
      signal CARRY_0 ,CARRY_1, CARRY_2, CARRY_3 : std_logic;
begin
    -- Implemented using Half Adders since it ould use less gates than using full adders
    -- and the task is just to add 1, not to add 2 4-bit binary numbers
    HA_0 : HA
         port map (
         A => A(0),
         B => '1',
         S => S(0),
         C => CARRY_0);
     HA_1 : HA
          port map (
          A => A(1),
          B => CARRY_0,
          S => S(1),
          C => CARRY_1);
      HA_2 : HA
           port map (
           A => A(2),
           B => CARRY_1,
           S => S(2),
           C => CARRY_2);
       HA_3 : HA
            port map (
            A => A(3),
            B => CARRY_2,
            S => S(3),
            C => CARRY_3);

end Behavioral;
