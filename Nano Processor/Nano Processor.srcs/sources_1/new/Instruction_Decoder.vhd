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
      -- addition
        when OP_ADD =>
            Mux_A <= Inst(13 downto 11);            -- RegA
            Mux_B <= Inst(10 downto 8);             -- RegB
            SUB <= '0';                             -- + => A + B
            -- storing (Store result in register 8)
            Reg_En <= "111";                        -- Reg7
            LD <= '0';                              -- From Acc
            LSB <= "00000000";                      -- No Literal value
            -- jump
            JMP <= '0';                             -- No Jump
            
        -- subtraction
        when OP_SUB =>
            Mux_A <= Inst(13 downto 11);            -- RegA
            Mux_B <= Inst(10 downto 8);             -- RegB
            SUB <= '1';                             -- - => A - B
            -- storing (Store result in register 8)
            Reg_En <= "111";                        -- Reg7
            LD <= '0';                              -- From Acc
            LSB <= "00000000";                      -- No Literal value
            -- jump
            JMP <= '0';                             -- No Jump
          
        -- make negative
        when OP_NEG =>
            Mux_A <= "000";                         -- Reg0 (0)
            Mux_B <= Inst(13 downto 11);            -- RegA
            SUB <= '1';                             -- - => 0 - A
            -- storing (Store result in register itself)
            Reg_En <= Inst(13 downto 11);           -- RegA
            LD <= '0';                              -- From Acc
            LSB <= "00000000";                      -- No Literal value
            -- jump
            JMP <= '0';                             -- No Jump
        
        -- move literal to register
        when OP_MOVI => 
            Mux_A <= "000";                         -- Reg0 (0)
            Mux_B <= "000";                         -- Reg0 (0)
            SUB <= '0';                             -- + => 0 + 0
            -- storing (Store result in register given)
            Reg_En <= Inst(13 downto 11);           -- RegA
            LD <= '1';                              -- From Literal
            LSB <= Inst(7 downto 0);                -- Given Literal value
            -- jump
            JMP <= '0';                             -- No Jump
                    
        -- clear register
        when OP_CLR => 
            Mux_A <= "000";                         -- Reg0 (0)
            Mux_B <= "000";                         -- Reg0 (0)
            SUB <= '0';                             -- + => 0 + 0
            -- storing (Store result in register given)
            Reg_En <= Inst(13 downto 11);           -- RegA
            LD <= '1';                              -- From Literal
            LSB <= "00000000";                      -- Literal 0
            -- jump
            JMP <= '0';                             -- No Jump
                    
        -- move register to register
        when OP_MOV => 
            Mux_A <= Inst(13 downto 11);            -- RegA
            Mux_B <= "000";                         -- Reg0 (0)
            SUB <= '0';                             -- + => A + 0
            -- storing (Store result in register given)
            Reg_En <= Inst(10 downto 8);            -- RegB
            LD <= '0';                              -- From Acc
            LSB <= "00000000";                      -- No Literal value
            -- jump
            JMP <= '0';                             -- No Jump
                                
        -- move register to register
        when OP_JZR => 
            Mux_A <= Inst(13 downto 11);            -- RegA
            Mux_B <= "000";                         -- Reg0 (0)
            SUB <= '0';                             -- + => A + 0
            -- storing (Store result in register given)
            Reg_En <= "000";                        -- Reg0
            LD <= '0';                              -- From Acc
            LSB <= Inst(7 downto 0);                -- Given Literal value for jump
            -- jump 
            if (Reg = "00000000") then
                report "Req is 0";
                JMP <= '1';     
            else
                report "Req is not 0";
                JMP <= '0';     
            end if;
        
        -- no operation
        when others =>
            Mux_A <= "111";                         -- Reg7 (Last Acc)
            Mux_B <= "000";                         -- Reg0 (0)
            SUB <= '0';                             -- + => Acc + 0
            -- storing (Store result in register given)
            Reg_En <= "111";                        -- Reg7
            LD <= '0';                              -- From Acc
            LSB <= "00000000";                      -- Given Literal value
            -- jump
            JMP <= '0';                             -- No Jump
          
      end case;
    end if;
  end process;

end Behavioral; 
