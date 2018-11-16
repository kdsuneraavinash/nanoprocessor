----------------------------------------------------------------------------------
-- Register bank to store values
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg_Bank is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
            I : in STD_LOGIC_VECTOR (2 downto 0);
            CLK : in STD_LOGIC;
            CLR : in STD_LOGIC;
            R0 : out STD_LOGIC_VECTOR (7 downto 0);
            R1 : out STD_LOGIC_VECTOR (7 downto 0);
            R2 : out STD_LOGIC_VECTOR (7 downto 0);
            R3 : out STD_LOGIC_VECTOR (7 downto 0);
            R4 : out STD_LOGIC_VECTOR (7 downto 0);
            R5 : out STD_LOGIC_VECTOR (7 downto 0);
            R6 : out STD_LOGIC_VECTOR (7 downto 0);
            R7 : out STD_LOGIC_VECTOR (7 downto 0));
end Reg_Bank;

architecture Behavioral of Reg_Bank is
    -- Defining 3 to 4 Decoder which will select the correct register
    component Decoder_3_to_8
    port (
        I : in STD_LOGIC_VECTOR(2 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
    end component;
    
    -- Defining Register Component
    component Reg
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
            En : in STD_LOGIC;
           Reset: in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0)
     );
               
    end component;
    
    signal Reg_Sel: STD_LOGIC_VECTOR (7 downto 0);
    signal Reg_Store_Val: STD_LOGIC_VECTOR (7 downto 0);
    
begin
    -- taking the correct register to choose
    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I  => I,
            EN => '1',
            Y => Reg_Sel
        );
        
    -- Hardcoding R0 to reduce complexity when selecting registers
    R0 <= "00000000";
    
    -- All other registers
    Reg_1: Reg
        port map(
            D  => D,
            EN => Reg_Sel(1),
            Reset => CLR,
            Clk => Clk,
            Q => R1
        );
    
    Reg_2: Reg
        port map(
            D  => D,
            EN => Reg_Sel(2),
            Reset => CLR,
            Clk => Clk,
            Q => R2
        );
    
    Reg_3: Reg
        port map(
            D  => D,
            EN => Reg_Sel(3),
            Reset => CLR,
            Clk => Clk,
            Q => R3
        );
                
    Reg_4: Reg
        port map(
            D  => D,
            EN => Reg_Sel(4),
            Reset => CLR,
            Clk => Clk,
            Q => R4
        );
    
    Reg_5: Reg
        port map(
            D  => D,
            EN => Reg_Sel(5),
            Reset => CLR,
            Clk => Clk,
            Q => R5
        );
    
    Reg_6: Reg
        port map(
            D  => D,
            EN => Reg_Sel(6),
            Reset => CLR,
            Clk => Clk,
            Q => R6
        );
    
    Reg_7: Reg
        port map(
            D  => D,
            EN => Reg_Sel(7),
            Reset => CLR,
            Clk => Clk,
            Q => R7
        );
        
end Behavioral;
