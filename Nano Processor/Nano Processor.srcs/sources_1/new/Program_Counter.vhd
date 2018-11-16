----------------------------------------------------------------------------------
-- Simple PC Register
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Program_Counter is
    Port ( CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Program_Counter;

architecture Behavioral of Program_Counter is
    component D_Flip_Flop
        Port ( D : in STD_LOGIC;
               Res : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Q : out STD_LOGIC);
    end component;
    
begin
    D_Flip_Flop_0: D_Flip_Flop
        port map(
            D => D(0),
            Res => CLR,
            Clk => CLK,
            Q => Q(0));
    
    D_Flip_Flop_1: D_Flip_Flop
        port map(
            D => D(1),
            Res => CLR,
            Clk => CLK,
            Q => Q(1));
                        
    D_Flip_Flop_2: D_Flip_Flop
        port map(
            D => D(2),
            Res => CLR,
            Clk => CLK,
            Q => Q(2));
            
    D_Flip_Flop_3: D_Flip_Flop
        port map(
            D => D(3),
            Res => CLR,
            Clk => CLK,
            Q => Q(3));

end Behavioral;
