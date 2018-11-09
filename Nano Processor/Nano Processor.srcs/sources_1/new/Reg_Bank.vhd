----------------------------------------------------------------------------------
-- Create Date: 11/09/2018 09:33:12 PM
-- Design Name: Register Bank
-- Module Name: Reg_Bank - Behavioral
-- Project Name: Nano Processor
-- Description: Register Bamk which will handle input and output of all registers
-- Dependencies: Decoder_3_to_8, Reg
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
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (7 downto 0)
     );
               
    end component;
    
    signal Reg_Sel: STD_LOGIC_VECTOR (7 downto 0);
    signal Reg_Store_Val: STD_LOGIC_VECTOR (7 downto 0);
    
begin

    -- Real value which will be stored in the register
    -- 0 if CLR is set
    Reg_Store_Val(0) <= D(0) AND (NOT CLR);
    Reg_Store_Val(1) <= D(1) AND (NOT CLR);
    Reg_Store_Val(2) <= D(2) AND (NOT CLR);
    Reg_Store_Val(3) <= D(3) AND (NOT CLR);
    Reg_Store_Val(4) <= D(4) AND (NOT CLR);
    Reg_Store_Val(5) <= D(5) AND (NOT CLR);
    Reg_Store_Val(6) <= D(6) AND (NOT CLR);
    Reg_Store_Val(7) <= D(7) AND (NOT CLR);

    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I  => I (2 downto 0),
            EN => '1',
            Y => Reg_Sel(7 downto 0)
        );
        
    -- Hardcoding R0 to reduce complexity when selecting registers
    R0 <= "00000000";
    
    Reg_1: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(1),
            Clk => Clk,
            Q => R1(7 downto 0)
        );
    
    Reg_2: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(2),
            Clk => Clk,
            Q => R2(7 downto 0)
        );
    
    Reg_3: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(3),
            Clk => Clk,
            Q => R3(7 downto 0)
        );
                
    Reg_4: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(4),
            Clk => Clk,
            Q => R4(7 downto 0)
        );
    
    Reg_5: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(5),
            Clk => Clk,
            Q => R5(7 downto 0)
        );
    
    Reg_6: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(6),
            Clk => Clk,
            Q => R6(7 downto 0)
        );
    
    Reg_7: Reg
        port map(
            D  => Reg_Store_Val(7 downto 0),
            EN => Reg_Sel(7),
            Clk => Clk,
            Q => R7(7 downto 0)
        );
        
end Behavioral;
