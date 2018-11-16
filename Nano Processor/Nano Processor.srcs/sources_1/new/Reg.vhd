----------------------------------------------------------------------------------
-- Basic memory unit that can hold 8 bits
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg is
    Port ( D : in STD_LOGIC_VECTOR(7 downto 0);
           Reset : in STD_LOGIC;
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(7 downto 0));
end Reg;

architecture Behavioral of Reg is
    component D_Flip_Flop
        Port ( D : in STD_LOGIC;
               Res : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Q : out STD_LOGIC);
    end component;

    signal Clk_With_Enabled : STD_LOGIC :='0';
begin

    Clk_With_Enabled <= Clk and En;

    D_Flip_Flop_0: D_Flip_Flop
        port map(
            D => D(0),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(0));

    D_Flip_Flop_1: D_Flip_Flop
        port map(
            D => D(1),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(1));
                        
    D_Flip_Flop_2: D_Flip_Flop
        port map(
            D => D(2),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(2));
            
    D_Flip_Flop_3: D_Flip_Flop
        port map(
            D => D(3),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(3));

    D_Flip_Flop_4: D_Flip_Flop
        port map(
            D => D(4),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(4));

    D_Flip_Flop_5: D_Flip_Flop
        port map(
            D => D(5),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(5));
                        
    D_Flip_Flop_6: D_Flip_Flop
        port map(
            D => D(6),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(6));
            
    D_Flip_Flop_7: D_Flip_Flop
        port map(
            D => D(7),
            Res => Reset,
            Clk => Clk_With_Enabled,
            Q => Q(7));
end Behavioral;
