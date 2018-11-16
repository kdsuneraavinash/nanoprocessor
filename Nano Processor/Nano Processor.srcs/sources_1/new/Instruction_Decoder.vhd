----------------------------------------------------------------------------------
-- Instruction Decoder to switch parts in the Cct
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Decoder is
    Port ( Inst : in STD_LOGIC_VECTOR (16 downto 0);
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
    component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal MUX_A_DISABLED: STD_LOGIC;

    signal OP_ADD: STD_LOGIC;
    signal OP_NEG: STD_LOGIC;
    signal OP_MOVI: STD_LOGIC;
    signal OP_JZR: STD_LOGIC;
    signal OP_SUB: STD_LOGIC;
    signal OP_CLR: STD_LOGIC;
    signal OP_MOV: STD_LOGIC;
    signal OP_NOP: STD_LOGIC;
    
    signal DECODER_RESULT: std_logic_vector(7 downto 0);
    
begin

    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I  => Inst (16 downto 14),
            EN => '1',
            Y  => DECODER_RESULT
        );
                        
        OP_ADD <= DECODER_RESULT(0);
        OP_NEG <= DECODER_RESULT(1);
        OP_MOVI <= DECODER_RESULT(2);
        OP_JZR <= DECODER_RESULT(3);
        OP_SUB <= DECODER_RESULT(4);
        OP_CLR <= DECODER_RESULT(5);
        OP_MOV <= DECODER_RESULT(6);
        OP_NOP <= DECODER_RESULT(7);
        
        MUX_A_DISABLED <= OP_NEG OR OP_MOV;  -- A has to be disabled in these instructions
        
        Mux_A(0) <= Inst(11) AND NOT MUX_A_DISABLED;
        Mux_A(1) <= Inst(12) AND NOT MUX_A_DISABLED;
        Mux_A(2) <= Inst(13) AND NOT MUX_A_DISABLED;
        
        -- B should get instructions in last bits in these instructions
        Mux_B(0) <= Inst(8) OR (Inst(11) AND OP_NEG);
        Mux_B(1) <= Inst(9) OR (Inst(12) AND OP_NEG);
        Mux_B(2) <= Inst(10) OR (Inst(13) AND OP_NEG);
        
        SUB <= OP_NEG OR OP_SUB;
        
        Reg_En <= Inst(13 downto 11);
                    
        LD <= OP_MOVI OR OP_CLR;
        LSB <= Inst(7 downto 0);
        JMP <= OP_JZR AND (NOT Reg(0))
                    AND (NOT Reg(1))
                    AND (NOT Reg(2))
                    AND (NOT Reg(3))
                    AND (NOT Reg(4))
                    AND (NOT Reg(5))
                    AND (NOT Reg(6))
                    AND (NOT Reg(7));

end Behavioral; 
