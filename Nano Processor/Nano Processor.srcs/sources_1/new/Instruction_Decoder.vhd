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
    constant OP_ADD: std_logic_vector(2 downto 0):= "000";
    constant OP_NEG: std_logic_vector(2 downto 0):= "001";
    constant OP_MOVI: std_logic_vector(2 downto 0):= "010";
    constant OP_JZR: std_logic_vector(2 downto 0):= "011";
    constant OP_SUB: std_logic_vector(2 downto 0):= "100";
    constant OP_CLR: std_logic_vector(2 downto 0):= "101";
    constant OP_MOV: std_logic_vector(2 downto 0):= "110";
    constant OP_NOP: std_logic_vector(2 downto 0):= "111";
begin

	process (CLK)
    	-- variable l : line;
  	begin
    if rising_edge(CLK) then
    
      case Inst(16 downto 14) is
        when OP_ADD =>
          -- write (l, String'("OP_ADD"));
          -- writeline (output, l);
          Mux_A <= Inst(13 downto 11);
          Mux_B <= Inst(10 downto 8);
          
        when OP_NEG =>
          -- write (l, String'("OP_NEG"));
          -- writeline (output, l);
          Mux_A <= Inst(13 downto 11);
          Mux_B <= Inst(10 downto 8);
          
        when OP_MOVI => 
          -- write (l, String'("OP_MOVI"));
          -- writeline (output, l);
          Mux_A <= Inst(13 downto 11);
          Mux_B <= Inst(10 downto 8);
          
        when others =>
          -- write (l, String'("other"));
          -- writeline (output, l);
          Mux_A <= Inst(13 downto 11);
          Mux_B <= Inst(10 downto 8);
          
      end case;
    end if;
  end process;

end Behavioral; 
