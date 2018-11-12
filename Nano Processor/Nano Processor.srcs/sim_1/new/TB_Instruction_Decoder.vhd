----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 11:43:04 PM
-- Design Name: 
-- Module Name: TB_Instruction_Decoder - Behavioral
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

entity TB_Instruction_Decoder is
--  Port ( );
end TB_Instruction_Decoder;

architecture Behavioral of TB_Instruction_Decoder is
    component Instruction_Decoder
        Port ( Inst : in STD_LOGIC_VECTOR (16 downto 0);
               CLK : in STD_LOGIC;
               Reg : in STD_LOGIC_VECTOR (7 downto 0);
               LSB : out STD_LOGIC_VECTOR (7 downto 0);
               Reg_En : out STD_LOGIC_VECTOR (2 downto 0);
               Mux_A : out STD_LOGIC_VECTOR (2 downto 0);
               LD : out STD_LOGIC;
               Mux_B : out STD_LOGIC_VECTOR (2 downto 0);
               Sub : out STD_LOGIC;
               JMP : out STD_LOGIC);
    end component;
    
    signal Inst : STD_LOGIC_VECTOR (16 downto 0);
    signal CLK : STD_LOGIC;
    signal Reg : STD_LOGIC_VECTOR (7 downto 0);
    signal LSB : STD_LOGIC_VECTOR (7 downto 0);
    signal Reg_En : STD_LOGIC_VECTOR (2 downto 0);
    signal Mux_A : STD_LOGIC_VECTOR (2 downto 0);
    signal LD : STD_LOGIC:= '0';
    signal Mux_B : STD_LOGIC_VECTOR (2 downto 0);
    signal Sub : STD_LOGIC:= '0';
    signal JMP : STD_LOGIC:= '0';
begin
        UUT: Instruction_Decoder port map(
                Inst => Inst,
                CLK => CLK,
                Reg => Reg,
                LSB => LSB,
                Reg_En => Reg_En,
                Mux_A => Mux_A,
                LD => LD,
                Mux_B => Mux_B,
                Sub => Sub,
                JMP => JMP);
                
        process begin
            CLK <= '1';
            wait for 50ns;
            CLK <= '0';
            wait for 50ns;
            Reg <= "00000000";
            Inst <= "00000101000000000";
            CLK <= '1';
            wait for 50ns;
            CLK <= '0';
            wait for 50ns;
            wait;
        end process;


end Behavioral;
