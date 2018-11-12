----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 11:26:52 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Decoder is
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
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is
    signal Opcode: std_logic_vector(2 downto 0);
    signal Ra: std_logic_vector(2 downto 0);
    signal Rb: std_logic_vector(2 downto 0);
    signal d: std_logic_vector(7 downto 0);
    
    constant OP_ADD: std_logic_vector(2 downto 0):= "000";
    constant OP_NEG: std_logic_vector(2 downto 0):= "001";
    constant OP_MOVI: std_logic_vector(2 downto 0):= "010";
    constant OP_JZR: std_logic_vector(2 downto 0):= "011";
    constant OP_SUB: std_logic_vector(2 downto 0):= "100";
    constant OP_CLR: std_logic_vector(2 downto 0):= "101";
    constant OP_MOV: std_logic_vector(2 downto 0):= "110";
    constant OP_NOP: std_logic_vector(2 downto 0):= "111";
begin
    
    Opcode <= Inst(16 downto 14);
    Ra <= Inst(13 downto 11);
    Ra <= Inst(10 downto 8);
    d <= Inst(7 downto 0);
    
   
                    Mux_A <= Ra;
                Mux_B <= Rb;
                SUB <= '0';
                
                -- unimportant
                LSB <= "00000000";
                Reg_En <= "000";
                LD <= '1';
                JMP <= '0';

end Behavioral;
