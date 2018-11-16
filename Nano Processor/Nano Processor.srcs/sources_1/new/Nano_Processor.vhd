----------------------------------------------------------------------------------
-- Team Members:    K. D. Sunera Avinash Chandrasiri 
-- Create Date:     11/14/2018 12:20:25 AM
-- Module Name:     Nano_Processor - Behavioral
-- Project Name:    Nano Processor
-- Description:     Nano Processor(Internal)
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nano_Processor is
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           ZERO : out STD_LOGIC;
           CARRY : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC;
           SIGN : out STD_LOGIC;
           R0 : out STD_LOGIC_VECTOR (7 downto 0);
           R1 : out STD_LOGIC_VECTOR (7 downto 0);
           R2 : out STD_LOGIC_VECTOR (7 downto 0);
           R3 : out STD_LOGIC_VECTOR (7 downto 0);
           R4 : out STD_LOGIC_VECTOR (7 downto 0);
           R5 : out STD_LOGIC_VECTOR (7 downto 0);
           R6 : out STD_LOGIC_VECTOR (7 downto 0);
           R7 : out STD_LOGIC_VECTOR (7 downto 0);
           NEXT_IA: out STD_LOGIC_VECTOR (3 downto 0);
           CURR_IA: out STD_LOGIC_VECTOR (3 downto 0)
           );
end Nano_Processor;

architecture Behavioral of Nano_Processor is
    component Program_Counter
        Port ( CLR : in STD_LOGIC;
               CLK : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (3 downto 0);
               Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component ROM_16_17
        Port (address: in STD_LOGIC_VECTOR (3 downto 0);
              data: out STD_LOGIC_VECTOR (16 downto 0));
    end component;
    
    component Instruction_Decoder
        Port ( Inst : in STD_LOGIC_VECTOR (16 downto 0);
               Reg : in STD_LOGIC_VECTOR (7 downto 0);
               LSB : out STD_LOGIC_VECTOR (7 downto 0);
               Reg_En : out STD_LOGIC_VECTOR (2 downto 0);
               Mux_A : out STD_LOGIC_VECTOR (2 downto 0);
               LD : out STD_LOGIC;
               Mux_B : out STD_LOGIC_VECTOR (2 downto 0);
               Sub : out STD_LOGIC;
               JMP : out STD_LOGIC);
    end component;
    
    component Add_Sub
        Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
               B : in STD_LOGIC_VECTOR(7 downto 0);
               AS : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR(7 downto 0);
               CARRY_FLAG : out STD_LOGIC;
               ZERO_FLAG : out STD_LOGIC;
               SIGN_FLAG: out STD_LOGIC;
               OVERFLOW_FLAG : out STD_LOGIC
           );
    end component;
    
    component Reg_Bank
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
    end component;
    
    component Add_4
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               S : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component TSB_Set_8_to_8
            Port(
                S: in STD_LOGIC_VECTOR(2 downto 0);
                R0 : in STD_LOGIC_VECTOR (7 downto 0);
                R1 : in STD_LOGIC_VECTOR (7 downto 0);
                R2 : in STD_LOGIC_VECTOR (7 downto 0);
                R3 : in STD_LOGIC_VECTOR (7 downto 0);
                R4 : in STD_LOGIC_VECTOR (7 downto 0);
                R5 : in STD_LOGIC_VECTOR (7 downto 0);
                R6 : in STD_LOGIC_VECTOR (7 downto 0);
                R7 : in STD_LOGIC_VECTOR (7 downto 0);
                Q: out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    component TSB_Set_2_to_8
            Port(
                S: in STD_LOGIC;
                R0 : in STD_LOGIC_VECTOR (7 downto 0);
                R1 : in STD_LOGIC_VECTOR (7 downto 0);
                Q: out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    component TSB_Set_2_to_4
            Port(
                JMP: in STD_LOGIC;
                A : in STD_LOGIC_VECTOR (3 downto 0);
                B : in STD_LOGIC_VECTOR (3 downto 0);
                Q: out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    signal NEXT_INST_ADDR: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal CURR_INST_ADDR: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    signal CURR_ADDED_INST_ADDR: STD_LOGIC_VECTOR(3 downto 0):= "0000";
    
    signal CURR_INST: STD_LOGIC_VECTOR(16 downto 0):= "00000000000000000";
    
    signal DEC_LSB: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal DEC_JMP: STD_LOGIC:= '0';
    signal DEC_REG_EN: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_MUX_A: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_MUX_B: STD_LOGIC_VECTOR(2 downto 0):= "000";
    signal DEC_SUB: STD_LOGIC:= '0';
    signal DEC_LD: STD_LOGIC:= '0';
    
    signal ASU_RES: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    
    
    signal REG_BANK_INPUT: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R0: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R1: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R2: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R3: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R4: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R5: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R6: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal REG_BANK_R7: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    
    signal MUX_A_REG_VAL: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
    signal MUX_B_REG_VAL: STD_LOGIC_VECTOR(7 downto 0):= "00000000";
begin
    Program_Counter_0: Program_Counter
        port map(
            CLR => CLR,
            CLK => CLK,
            D => NEXT_INST_ADDR,
            Q => CURR_INST_ADDR
        );
        
    Add_4_0: Add_4
        port map(
            A => CURR_INST_ADDR,
            S => CURR_ADDED_INST_ADDR
        );
        
    RSB_Set_2_to_4_0: TSB_Set_2_to_4
        port map(
            A => CURR_ADDED_INST_ADDR,
            B => DEC_LSB(3 downto 0),
            JMP => DEC_JMP,
            Q => NEXT_INST_ADDR
        );
        
    ROM_16_17_0: ROM_16_17
        port map(
            address => CURR_INST_ADDR,
            data => CURR_INST
        );
    
    Instruction_Decoder_0: Instruction_Decoder
        port map(
            Inst => CURR_INST,
            Reg => MUX_A_REG_VAL,
            LSB  => DEC_LSB,
            Reg_En => DEC_REG_EN,
            Mux_A => DEC_MUX_A,
            LD  => DEC_LD,
            Mux_B => DEC_MUX_B,
            Sub  => DEC_SUB,
            JMP => DEC_JMP
        );
        
    TSB_Set_2_to_8_0: TSB_Set_2_to_8
        port map(
            S => DEC_LD,
            R0 => ASU_RES,
            R1 => DEC_LSB,
            Q => REG_BANK_INPUT
        );
        
    Reg_Bank_0: Reg_Bank
        port map(
            D => REG_BANK_INPUT,
            I => DEC_REG_EN,
            CLK => CLK,
            CLR => CLR,
            R0 => REG_BANK_R0,
            R1 => REG_BANK_R1,
            R2 => REG_BANK_R2,
            R3 => REG_BANK_R3,
            R4 => REG_BANK_R4,
            R5 => REG_BANK_R5,
            R6 => REG_BANK_R6,
            R7 => REG_BANK_R7
        );
        
    MUX_A: TSB_Set_8_to_8
        port map(
            S => DEC_MUX_A,
            R0 => REG_BANK_R0,
            R1 => REG_BANK_R1,
            R2 => REG_BANK_R2,
            R3 => REG_BANK_R3,
            R4 => REG_BANK_R4,
            R5 => REG_BANK_R5,
            R6 => REG_BANK_R6,
            R7 => REG_BANK_R7,
            Q => MUX_A_REG_VAL
        );
                    
    MUX_B: TSB_Set_8_to_8
        port map(
            S => DEC_MUX_B,
            R0 => REG_BANK_R0,
            R1 => REG_BANK_R1,
            R2 => REG_BANK_R2,
            R3 => REG_BANK_R3,
            R4 => REG_BANK_R4,
            R5 => REG_BANK_R5,
            R6 => REG_BANK_R6,
            R7 => REG_BANK_R7,
            Q => MUX_B_REG_VAL
        );

    Add_Sub_0: Add_Sub
        port map(
            A => MUX_A_REG_VAL,
            B => MUX_B_REG_VAL,
            AS => DEC_SUB,
            S => ASU_RES,
            CARRY_FLAG => CARRY,
            ZERO_FLAG => ZERO,
            SIGN_FLAG => SIGN,
            OVERFLOW_FLAG => OVERFLOW
        );
        
    R7 <= REG_BANK_R7;
    R6 <= REG_BANK_R6;
    R5 <= REG_BANK_R5;
    R4 <= REG_BANK_R4;
    R3 <= REG_BANK_R3;
    R2 <= REG_BANK_R2;
    R1 <= REG_BANK_R1;
    R0 <= REG_BANK_R0;
    NEXT_IA <= NEXT_INST_ADDR;
    CURR_IA <= CURR_INST_ADDR;
    
end Behavioral;
