----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2018 04:54:09 PM
-- Design Name: 
-- Module Name: RCA_4 - Behavioral
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


entity Add_Sub is
    Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
           B : in STD_LOGIC_VECTOR(7 downto 0);
           AS : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(7 downto 0);
           CARRY_FLAG : out STD_LOGIC;
           ZERO_FLAG : out STD_LOGIC;
           SIGN_FLAG: out STD_LOGIC;
           OVERFLOW_FLAG : out STD_LOGIC
       );
end Add_Sub;

architecture Behavioral of Add_Sub is
    component FA
         port (
         A: in STD_LOGIC;
         B: in STD_LOGIC;
         C_in: in STD_LOGIC;
         S: out STD_LOGIC;
         C_out: out STD_LOGIC);
     end component;
    
     SIGNAL FA0_C, FA1_C, FA2_C, FA3_C, FA4_C, FA5_C, FA6_C, FA7_C: STD_LOGIC;
     SIGNAL Xored_B: STD_LOGIC_VECTOR(7 downto 0);
     SIGNAL Output: STD_LOGIC_VECTOR(7 downto 0);
     
begin

    Xored_B(0) <= B(0) XOR AS;
    Xored_B(1) <= B(1) XOR AS;
    Xored_B(2) <= B(2) XOR AS;
    Xored_B(3) <= B(3) XOR AS;
    Xored_B(4) <= B(4) XOR AS;
    Xored_B(5) <= B(5) XOR AS;
    Xored_B(6) <= B(6) XOR AS;
    Xored_B(7) <= B(7) XOR AS;
    
    FA_0 : FA
        port map (
             A => A(0),
             B => Xored_B(0),
             C_in => AS,
             S => Output(0),
             C_Out => FA0_C);
         
    FA_1 : FA
        port map (
             A => A(1),
             B => Xored_B(1),
             C_in => FA0_C,
             S => Output(1),
            C_Out => FA1_C);
                      
    FA_2 : FA
        port map (
            A => A(2),
            B => Xored_B(2),
            C_in => FA1_C,
            S => Output(2),
            C_Out => FA2_C);
                   
    FA_3 : FA
        port map (
            A => A(3),
            B => Xored_B(3),
            C_in => FA2_C,
            S => Output(3),
            C_Out => FA3_C);
                    
    FA_4 : FA
        port map (
            A => A(4),
            B => Xored_B(4),
            C_in => FA3_C,
            S => Output(4),
            C_Out => FA4_C);
                                  
    FA_5 : FA
        port map (
            A => A(5),
            B => Xored_B(5),
            C_in => FA4_C,
            S => Output(5),
            C_Out => FA5_C);
                       
    FA_6 : FA
       port map (
            A => A(6),
            B => Xored_B(6),
            C_in => FA5_C,
            S => Output(6),
            C_Out => FA6_C);
                        
     FA_7 : FA
        port map (
            A => A(7),
            B => Xored_B(7),
            C_in => FA6_C,
            S => Output(7),
            C_Out => FA7_C);
            
    S(0) <= Output(0);
    S(1) <= Output(1);
    S(2) <= Output(2);
    S(3) <= Output(3);
    S(4) <= Output(4);
    S(5) <= Output(5);
    S(6) <= Output(6);
    S(7) <= Output(7);
    
    CARRY_FLAG <= FA7_C;   
    ZERO_FLAG <= (NOT Output(0)) AND (NOT Output(1)) AND (NOT Output(2)) AND (NOT Output(3)) AND
                    (NOT Output(4)) AND (NOT Output(5)) AND (NOT Output(6)) AND (NOT Output(7));
    SIGN_FLAG <= Output(7);
    OVERFLOW_FLAG <= (NOT AS) AND                                   -- Must be addition
                    ( (A(7) AND  B(7) AND (NOT Output(7))) OR       -- A and B are positive, A+B negative
                    ((NOT A(7)) AND (NOT B(7)) AND Output(7)) );    -- A and B are negative, A+B positive
                    
end Behavioral;
