// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 16 09:54:40 2018
// Host        : DESKTOP-0OSJ4OS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {E:/Projects/Vivaldo/nanoprocessor/Nano Processor/Nano
//               Processor.sim/sim_1/synth/func/xsim/TB_Nano_Processor_func_synth.v}
// Design      : Nano_Processor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module D_Flip_Flop
   (R7_OBUF,
    ZERO,
    MUX_B_REG_VAL,
    FA1_C,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_4,
    HA0_S_5,
    Q_reg_1,
    Sub,
    Q_reg_2,
    Q_reg_3,
    HA0_S_6,
    Q_reg_4,
    Q_reg_5,
    R5_OBUF,
    R4_OBUF,
    Q_reg_6,
    Q_reg_7);
  output [0:0]R7_OBUF;
  output ZERO;
  output [0:0]MUX_B_REG_VAL;
  output FA1_C;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_4;
  input HA0_S_5;
  input Q_reg_1;
  input Sub;
  input Q_reg_2;
  input [2:0]Q_reg_3;
  input HA0_S_6;
  input Q_reg_4;
  input [2:0]Q_reg_5;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_6;
  input Q_reg_7;

  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA1_C;
  wire HA0_S_5;
  wire HA0_S_6;
  wire [0:0]MUX_B_REG_VAL;
  wire [0:0]Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire [2:0]Q_reg_3;
  wire Q_reg_4;
  wire [2:0]Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire Sub;
  wire ZERO;
  wire ZERO_OBUF_inst_i_46_n_0;
  wire ZERO_OBUF_inst_i_64_n_0;
  wire ZERO_OBUF_inst_i_8_n_0;

  LUT5 #(
    .INIT(32'hDFF808D0)) 
    Q_i_5__0
       (.I0(MUX_B_REG_VAL),
        .I1(Q_reg_3[0]),
        .I2(Sub),
        .I3(Q_reg_4),
        .I4(Q_reg_3[1]),
        .O(FA1_C));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'h8008088002808002)) 
    ZERO_OBUF_inst_i_2
       (.I0(ZERO_OBUF_inst_i_8_n_0),
        .I1(HA0_S_5),
        .I2(Q_reg_1),
        .I3(Sub),
        .I4(Q_reg_2),
        .I5(Q_reg_3[2]),
        .O(ZERO));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_22
       (.I0(ZERO_OBUF_inst_i_46_n_0),
        .I1(Q_reg_7),
        .O(MUX_B_REG_VAL));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_46
       (.I0(ZERO_OBUF_inst_i_64_n_0),
        .I1(Q_reg_6),
        .O(ZERO_OBUF_inst_i_46_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_64
       (.I0(R7_OBUF),
        .I1(Q_reg_5[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_5[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_5[0]),
        .O(ZERO_OBUF_inst_i_64_n_0));
  LUT6 #(
    .INIT(64'h8202008000808201)) 
    ZERO_OBUF_inst_i_8
       (.I0(HA0_S_6),
        .I1(MUX_B_REG_VAL),
        .I2(Q_reg_3[0]),
        .I3(Sub),
        .I4(Q_reg_4),
        .I5(Q_reg_3[1]),
        .O(ZERO_OBUF_inst_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_10
   (R7_OBUF,
    Q_reg_0,
    REG_BANK_INPUT,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_4,
    Q_reg_2,
    FA4_C,
    MUX_A_REG_VAL,
    Sub,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    R5_OBUF,
    R4_OBUF,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8);
  output [0:0]R7_OBUF;
  output [0:0]Q_reg_0;
  output [0:0]REG_BANK_INPUT;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_4;
  input [0:0]Q_reg_2;
  input FA4_C;
  input [0:0]MUX_A_REG_VAL;
  input Sub;
  input [0:0]Q_reg_3;
  input Q_reg_4;
  input [2:0]Q_reg_5;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_6;
  input Q_reg_7;
  input Q_reg_8;

  wire [6:6]ASU_RES;
  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA4_C;
  wire [0:0]MUX_A_REG_VAL;
  wire Q_i_2__5_n_0;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [0:0]Q_reg_2;
  wire [0:0]Q_reg_3;
  wire Q_reg_4;
  wire [2:0]Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire SIGN_OBUF_inst_i_11_n_0;
  wire SIGN_OBUF_inst_i_15_n_0;
  wire Sub;

  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__14
       (.I0(Q_i_2__5_n_0),
        .I1(Q_reg_7),
        .O(REG_BANK_INPUT));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_2__5
       (.I0(ASU_RES),
        .I1(Q_reg_4),
        .O(Q_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    Q_i_4__3
       (.I0(Q_reg_2),
        .I1(Q_reg_0),
        .I2(FA4_C),
        .I3(MUX_A_REG_VAL),
        .I4(Sub),
        .I5(Q_reg_3),
        .O(ASU_RES));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    SIGN_OBUF_inst_i_11
       (.I0(SIGN_OBUF_inst_i_15_n_0),
        .I1(Q_reg_6),
        .O(SIGN_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    SIGN_OBUF_inst_i_15
       (.I0(R7_OBUF),
        .I1(Q_reg_5[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_5[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_5[0]),
        .O(SIGN_OBUF_inst_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    SIGN_OBUF_inst_i_7
       (.I0(SIGN_OBUF_inst_i_11_n_0),
        .I1(Q_reg_8),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_11
   (R7_OBUF,
    CARRY_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_4,
    FA5_C,
    MUX_A_REG_VAL,
    Sub,
    MUX_B_REG_VAL,
    Q_reg_1,
    Q_reg_2,
    R5_OBUF,
    R4_OBUF,
    Q_reg_3,
    Q_reg_4);
  output [0:0]R7_OBUF;
  output CARRY_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_4;
  input FA5_C;
  input [0:0]MUX_A_REG_VAL;
  input Sub;
  input [0:0]MUX_B_REG_VAL;
  input [0:0]Q_reg_1;
  input [2:0]Q_reg_2;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_3;
  input Q_reg_4;

  wire CARRY_OBUF;
  wire CARRY_OBUF_inst_i_12_n_0;
  wire CARRY_OBUF_inst_i_6_n_0;
  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA5_C;
  wire [0:0]MUX_A_REG_VAL;
  wire [0:0]MUX_B_REG_VAL;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [2:0]Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire Sub;

  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    CARRY_OBUF_inst_i_1
       (.I0(FA5_C),
        .I1(Q_reg_0),
        .I2(MUX_A_REG_VAL),
        .I3(Sub),
        .I4(MUX_B_REG_VAL),
        .I5(Q_reg_1),
        .O(CARRY_OBUF));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    CARRY_OBUF_inst_i_12
       (.I0(R7_OBUF),
        .I1(Q_reg_2[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_2[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_2[0]),
        .O(CARRY_OBUF_inst_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    CARRY_OBUF_inst_i_2
       (.I0(CARRY_OBUF_inst_i_6_n_0),
        .I1(Q_reg_4),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    CARRY_OBUF_inst_i_6
       (.I0(CARRY_OBUF_inst_i_12_n_0),
        .I1(Q_reg_3),
        .O(CARRY_OBUF_inst_i_6_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_12
   (R7_OBUF,
    MUX_B_REG_VAL,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_4,
    Q_reg_1,
    R5_OBUF,
    R4_OBUF,
    Q_reg_2,
    Q_reg_3);
  output [0:0]R7_OBUF;
  output [0:0]MUX_B_REG_VAL;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_4;
  input [2:0]Q_reg_1;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_2;
  input Q_reg_3;

  wire CARRY_OBUF_inst_i_20_n_0;
  wire CARRY_OBUF_inst_i_8_n_0;
  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire [0:0]MUX_B_REG_VAL;
  wire [0:0]Q_reg_0;
  wire [2:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    CARRY_OBUF_inst_i_20
       (.I0(R7_OBUF),
        .I1(Q_reg_1[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_1[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_1[0]),
        .O(CARRY_OBUF_inst_i_20_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    CARRY_OBUF_inst_i_4
       (.I0(CARRY_OBUF_inst_i_8_n_0),
        .I1(Q_reg_3),
        .O(MUX_B_REG_VAL));
  LUT2 #(
    .INIT(4'hE)) 
    CARRY_OBUF_inst_i_8
       (.I0(CARRY_OBUF_inst_i_20_n_0),
        .I1(Q_reg_2),
        .O(CARRY_OBUF_inst_i_8_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_13
   (R6_OBUF,
    CLR_IBUF,
    Q_reg_0);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;

  wire CLR_IBUF;
  wire [0:0]Q_reg_0;
  wire [0:0]R6_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_14
   (R6_OBUF,
    CLR_IBUF,
    Q_reg_0);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;

  wire CLR_IBUF;
  wire [0:0]Q_reg_0;
  wire [0:0]R6_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_15
   (R6_OBUF,
    CLR_IBUF,
    Q_reg_0);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;

  wire CLR_IBUF;
  wire [0:0]Q_reg_0;
  wire [0:0]R6_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_16
   (R6_OBUF,
    CLR_IBUF,
    Q_reg_0);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;

  wire CLR_IBUF;
  wire [0:0]Q_reg_0;
  wire [0:0]R6_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_17
   (R6_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire [0:0]R6_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_18
   (R6_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire [0:0]R6_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_19
   (R6_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire [0:0]R6_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_20
   (R6_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT);
  output [0:0]R6_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire [0:0]R6_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(1'b0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R6_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_21
   (R5_OBUF,
    Q_reg_0,
    Q_reg_1,
    CLR_IBUF,
    Q_reg_2,
    Clk_With_Enabled_3,
    MUX_B_REG_VAL,
    Q_reg_3,
    Sub,
    Q_reg_4,
    R4_OBUF,
    R3_OBUF,
    Q_reg_5,
    Q_reg_6);
  output [0:0]R5_OBUF;
  output [1:0]Q_reg_0;
  output Q_reg_1;
  input CLR_IBUF;
  input [0:0]Q_reg_2;
  input Clk_With_Enabled_3;
  input [1:0]MUX_B_REG_VAL;
  input [0:0]Q_reg_3;
  input Sub;
  input [2:0]Q_reg_4;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_5;
  input Q_reg_6;

  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire [1:0]MUX_B_REG_VAL;
  wire [1:0]Q_reg_0;
  wire Q_reg_1;
  wire [0:0]Q_reg_2;
  wire [0:0]Q_reg_3;
  wire [2:0]Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire Sub;
  wire ZERO_OBUF_inst_i_48_n_0;
  wire ZERO_OBUF_inst_i_66_n_0;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h4B87B478)) 
    Q_i_4
       (.I0(Q_reg_1),
        .I1(MUX_B_REG_VAL[0]),
        .I2(Q_reg_3),
        .I3(Sub),
        .I4(MUX_B_REG_VAL[1]),
        .O(Q_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Q_i_6
       (.I0(Q_reg_1),
        .I1(MUX_B_REG_VAL[0]),
        .O(Q_reg_0[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_2),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_23
       (.I0(ZERO_OBUF_inst_i_48_n_0),
        .I1(Q_reg_6),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_48
       (.I0(ZERO_OBUF_inst_i_66_n_0),
        .I1(Q_reg_5),
        .O(ZERO_OBUF_inst_i_48_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_66
       (.I0(R5_OBUF),
        .I1(Q_reg_4[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_4[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_4[0]),
        .O(ZERO_OBUF_inst_i_66_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_22
   (R5_OBUF,
    Q_reg_0,
    Q_reg_1,
    CLR_IBUF,
    Q_reg_2,
    Clk_With_Enabled_3,
    MUX_B_REG_VAL,
    Sub,
    Q_reg_3,
    HA0_S_6,
    Q_reg_4,
    R4_OBUF,
    R3_OBUF,
    Q_reg_5,
    Q_reg_6);
  output [0:0]R5_OBUF;
  output [0:0]Q_reg_0;
  output [0:0]Q_reg_1;
  input CLR_IBUF;
  input [0:0]Q_reg_2;
  input Clk_With_Enabled_3;
  input [1:0]MUX_B_REG_VAL;
  input Sub;
  input [0:0]Q_reg_3;
  input HA0_S_6;
  input [2:0]Q_reg_4;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_5;
  input Q_reg_6;

  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire HA0_S_6;
  wire [1:0]MUX_B_REG_VAL;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [0:0]Q_reg_2;
  wire [0:0]Q_reg_3;
  wire [2:0]Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire Sub;
  wire ZERO_OBUF_inst_i_52_n_0;
  wire ZERO_OBUF_inst_i_70_n_0;

  LUT6 #(
    .INIT(64'h41D74747BE28B8B8)) 
    Q_i_4__0
       (.I0(Q_reg_1),
        .I1(MUX_B_REG_VAL[1]),
        .I2(Sub),
        .I3(Q_reg_3),
        .I4(MUX_B_REG_VAL[0]),
        .I5(HA0_S_6),
        .O(Q_reg_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_2),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_25
       (.I0(ZERO_OBUF_inst_i_52_n_0),
        .I1(Q_reg_6),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_52
       (.I0(ZERO_OBUF_inst_i_70_n_0),
        .I1(Q_reg_5),
        .O(ZERO_OBUF_inst_i_52_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_70
       (.I0(R5_OBUF),
        .I1(Q_reg_4[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_4[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_4[0]),
        .O(ZERO_OBUF_inst_i_70_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_23
   (R5_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_3,
    Q_reg_2,
    R4_OBUF,
    R3_OBUF,
    Q_reg_3,
    Q_reg_4);
  output [0:0]R5_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_3;
  input [2:0]Q_reg_2;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_3;
  input Q_reg_4;

  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [2:0]Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire ZERO_OBUF_inst_i_56_n_0;
  wire ZERO_OBUF_inst_i_74_n_0;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_28
       (.I0(ZERO_OBUF_inst_i_56_n_0),
        .I1(Q_reg_4),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_56
       (.I0(ZERO_OBUF_inst_i_74_n_0),
        .I1(Q_reg_3),
        .O(ZERO_OBUF_inst_i_56_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_74
       (.I0(R5_OBUF),
        .I1(Q_reg_2[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_2[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_2[0]),
        .O(ZERO_OBUF_inst_i_74_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_24
   (R5_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_3,
    Q_reg_2,
    R4_OBUF,
    R3_OBUF,
    Q_reg_3,
    Q_reg_4);
  output [0:0]R5_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_3;
  input [2:0]Q_reg_2;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_3;
  input Q_reg_4;

  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [2:0]Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire ZERO_OBUF_inst_i_31_n_0;
  wire ZERO_OBUF_inst_i_60_n_0;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_12
       (.I0(ZERO_OBUF_inst_i_31_n_0),
        .I1(Q_reg_4),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_31
       (.I0(ZERO_OBUF_inst_i_60_n_0),
        .I1(Q_reg_3),
        .O(ZERO_OBUF_inst_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_60
       (.I0(R5_OBUF),
        .I1(Q_reg_2[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_2[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_2[0]),
        .O(ZERO_OBUF_inst_i_60_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_25
   (R5_OBUF,
    ZERO_OBUF,
    Q_reg_0,
    Q_reg_1,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_3,
    Q_reg_2,
    HA0_S,
    FA5_C,
    B11_out,
    Q_reg_3,
    B7_out,
    Q_reg_4,
    B5_out,
    FA2_C,
    HA0_S_7,
    Q_reg_5,
    Q_reg_6,
    R4_OBUF,
    R3_OBUF,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9);
  output [0:0]R5_OBUF;
  output ZERO_OBUF;
  output [0:0]Q_reg_0;
  output [0:0]Q_reg_1;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_3;
  input Q_reg_2;
  input HA0_S;
  input FA5_C;
  input B11_out;
  input Q_reg_3;
  input B7_out;
  input [0:0]Q_reg_4;
  input B5_out;
  input FA2_C;
  input HA0_S_7;
  input Q_reg_5;
  input [2:0]Q_reg_6;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_7;
  input Q_reg_8;
  input Q_reg_9;

  wire [5:5]ASU_RES;
  wire B11_out;
  wire B5_out;
  wire B7_out;
  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire FA2_C;
  wire FA5_C;
  wire HA0_S;
  wire HA0_S_7;
  wire Q_i_2__4_n_0;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire [0:0]Q_reg_4;
  wire Q_reg_5;
  wire [2:0]Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire ZERO_OBUF;
  wire ZERO_OBUF_inst_i_33_n_0;
  wire ZERO_OBUF_inst_i_62_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__13
       (.I0(Q_i_2__4_n_0),
        .I1(Q_reg_8),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_2__4
       (.I0(ASU_RES),
        .I1(Q_reg_5),
        .O(Q_i_2__4_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'h0020200020000002)) 
    ZERO_OBUF_inst_i_1
       (.I0(Q_reg_2),
        .I1(ASU_RES),
        .I2(HA0_S),
        .I3(FA5_C),
        .I4(B11_out),
        .I5(Q_reg_3),
        .O(ZERO_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_13
       (.I0(ZERO_OBUF_inst_i_33_n_0),
        .I1(Q_reg_9),
        .O(Q_reg_0));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    ZERO_OBUF_inst_i_3
       (.I0(Q_reg_0),
        .I1(B7_out),
        .I2(Q_reg_4),
        .I3(B5_out),
        .I4(FA2_C),
        .I5(HA0_S_7),
        .O(ASU_RES));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_33
       (.I0(ZERO_OBUF_inst_i_62_n_0),
        .I1(Q_reg_7),
        .O(ZERO_OBUF_inst_i_33_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_62
       (.I0(R5_OBUF),
        .I1(Q_reg_6[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_6[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_6[0]),
        .O(ZERO_OBUF_inst_i_62_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_26
   (R5_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_3,
    Q_reg_2,
    R4_OBUF,
    R3_OBUF,
    Q_reg_3,
    Q_reg_4);
  output [0:0]R5_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_3;
  input [2:0]Q_reg_2;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_3;
  input Q_reg_4;

  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [2:0]Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire SIGN_OBUF_inst_i_5_n_0;
  wire SIGN_OBUF_inst_i_9_n_0;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    SIGN_OBUF_inst_i_2
       (.I0(SIGN_OBUF_inst_i_5_n_0),
        .I1(Q_reg_4),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    SIGN_OBUF_inst_i_5
       (.I0(SIGN_OBUF_inst_i_9_n_0),
        .I1(Q_reg_3),
        .O(SIGN_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    SIGN_OBUF_inst_i_9
       (.I0(R5_OBUF),
        .I1(Q_reg_2[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_2[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_2[0]),
        .O(SIGN_OBUF_inst_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_27
   (R5_OBUF,
    SIGN_OBUF,
    Q_reg_0,
    Q_reg_1,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_3,
    B11_out,
    Q_reg_2,
    B9_out,
    FA4_C,
    HA0_S,
    Q_reg_3,
    Q_reg_4,
    R4_OBUF,
    R3_OBUF,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7);
  output [0:0]R5_OBUF;
  output SIGN_OBUF;
  output Q_reg_0;
  output [0:0]Q_reg_1;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_3;
  input B11_out;
  input [0:0]Q_reg_2;
  input B9_out;
  input FA4_C;
  input HA0_S;
  input Q_reg_3;
  input [2:0]Q_reg_4;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_5;
  input Q_reg_6;
  input Q_reg_7;

  wire B11_out;
  wire B9_out;
  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire FA4_C;
  wire HA0_S;
  wire Q_i_2__6_n_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [0:0]Q_reg_2;
  wire Q_reg_3;
  wire [2:0]Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire SIGN_OBUF;
  wire ZERO_OBUF_inst_i_19_n_0;
  wire ZERO_OBUF_inst_i_38_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__15
       (.I0(Q_i_2__6_n_0),
        .I1(Q_reg_6),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_2__6
       (.I0(SIGN_OBUF),
        .I1(Q_reg_3),
        .O(Q_i_2__6_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    SIGN_OBUF_inst_i_1
       (.I0(Q_reg_0),
        .I1(B11_out),
        .I2(Q_reg_2),
        .I3(B9_out),
        .I4(FA4_C),
        .I5(HA0_S),
        .O(SIGN_OBUF));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_19
       (.I0(ZERO_OBUF_inst_i_38_n_0),
        .I1(Q_reg_5),
        .O(ZERO_OBUF_inst_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_38
       (.I0(R5_OBUF),
        .I1(Q_reg_4[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_4[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_4[0]),
        .O(ZERO_OBUF_inst_i_38_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_7
       (.I0(ZERO_OBUF_inst_i_19_n_0),
        .I1(Q_reg_7),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_28
   (R5_OBUF,
    OVERFLOW_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_3,
    MUX_A_REG_VAL,
    Q_reg_2,
    FA5_C,
    Sub,
    MUX_B_REG_VAL,
    Q_reg_3,
    R4_OBUF,
    R3_OBUF,
    Q_reg_4,
    Q_reg_5);
  output [0:0]R5_OBUF;
  output OVERFLOW_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_3;
  input [0:0]MUX_A_REG_VAL;
  input Q_reg_2;
  input FA5_C;
  input Sub;
  input [0:0]MUX_B_REG_VAL;
  input [2:0]Q_reg_3;
  input [0:0]R4_OBUF;
  input [0:0]R3_OBUF;
  input Q_reg_4;
  input Q_reg_5;

  wire CARRY_OBUF_inst_i_10_n_0;
  wire CARRY_OBUF_inst_i_22_n_0;
  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire FA5_C;
  wire [0:0]MUX_A_REG_VAL;
  wire [0:0]MUX_B_REG_VAL;
  wire OVERFLOW_OBUF;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire Q_reg_2;
  wire [2:0]Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire [0:0]R3_OBUF;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire Sub;

  LUT2 #(
    .INIT(4'hE)) 
    CARRY_OBUF_inst_i_10
       (.I0(CARRY_OBUF_inst_i_22_n_0),
        .I1(Q_reg_4),
        .O(CARRY_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    CARRY_OBUF_inst_i_22
       (.I0(R5_OBUF),
        .I1(Q_reg_3[2]),
        .I2(R4_OBUF),
        .I3(Q_reg_3[1]),
        .I4(R3_OBUF),
        .I5(Q_reg_3[0]),
        .O(CARRY_OBUF_inst_i_22_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    CARRY_OBUF_inst_i_5
       (.I0(CARRY_OBUF_inst_i_10_n_0),
        .I1(Q_reg_5),
        .O(Q_reg_0));
  LUT6 #(
    .INIT(64'h0000022A00005440)) 
    OVERFLOW_OBUF_inst_i_1
       (.I0(Q_reg_0),
        .I1(MUX_A_REG_VAL),
        .I2(Q_reg_2),
        .I3(FA5_C),
        .I4(Sub),
        .I5(MUX_B_REG_VAL),
        .O(OVERFLOW_OBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_3),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R5_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_29
   (R4_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]Q_reg_0;
  wire [0:0]R4_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_30
   (R4_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]Q_reg_0;
  wire [0:0]R4_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_31
   (R4_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]Q_reg_0;
  wire [0:0]R4_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_32
   (R4_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]Q_reg_0;
  wire [0:0]R4_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_33
   (R4_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]R4_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_34
   (R4_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]R4_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_35
   (R4_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]R4_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_36
   (R4_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_2);
  output [0:0]R4_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_2;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [0:0]R4_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_2),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R4_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_37
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_1,
    Q_reg_2,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_2;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_65
       (.I0(R3_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_38
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_1,
    Q_reg_2,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_2;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_69
       (.I0(R3_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_39
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_1,
    Q_reg_2,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_2;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_73
       (.I0(R3_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_40
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_1,
    Q_reg_2,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_2;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_59
       (.I0(R3_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_41
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_1,
    Q_reg_1,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_1;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    SIGN_OBUF_inst_i_18
       (.I0(R3_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_42
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_1,
    Q_reg_1,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_1;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    SIGN_OBUF_inst_i_16
       (.I0(R3_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_43
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_1,
    Q_reg_1,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_1;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire [0:0]REG_BANK_INPUT;

  LUT4 #(
    .INIT(16'hF888)) 
    CARRY_OBUF_inst_i_13
       (.I0(R3_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_44
   (R3_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_1,
    Q_reg_1,
    R2_OBUF);
  output [0:0]R3_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_1;
  input [1:0]Q_reg_1;
  input [0:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire [0:0]REG_BANK_INPUT;

  LUT4 #(
    .INIT(16'hF888)) 
    CARRY_OBUF_inst_i_21
       (.I0(R3_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R2_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_1),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R3_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_45
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_0,
    Q_reg_2,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_2;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_67
       (.I0(R2_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_46
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_0,
    Q_reg_2,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_2;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_71
       (.I0(R2_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_47
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_0,
    Q_reg_2,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_2;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_75
       (.I0(R2_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_48
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_0,
    Q_reg_2,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_2;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_61
       (.I0(R2_OBUF),
        .I1(Q_reg_2[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_2[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_49
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_0,
    Q_reg_1,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_1;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_63
       (.I0(R2_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_50
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_0,
    Q_reg_1,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_1;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    SIGN_OBUF_inst_i_10
       (.I0(R2_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_51
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_0,
    Q_reg_1,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_1;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
  LUT4 #(
    .INIT(16'hF888)) 
    ZERO_OBUF_inst_i_39
       (.I0(R2_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_52
   (R2_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_0,
    Q_reg_1,
    R1_OBUF);
  output [0:0]R2_OBUF;
  output Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_0;
  input [1:0]Q_reg_1;
  input [0:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]REG_BANK_INPUT;

  LUT4 #(
    .INIT(16'hF888)) 
    CARRY_OBUF_inst_i_23
       (.I0(R2_OBUF),
        .I1(Q_reg_1[1]),
        .I2(R1_OBUF),
        .I3(Q_reg_1[0]),
        .O(Q_reg_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_0),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R2_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_53
   (R1_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]Q_reg_0;
  wire [0:0]R1_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_54
   (R1_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]Q_reg_0;
  wire [0:0]R1_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_55
   (R1_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]Q_reg_0;
  wire [0:0]R1_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_56
   (R1_OBUF,
    CLR_IBUF,
    Q_reg_0,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]Q_reg_0;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]Q_reg_0;
  wire [0:0]R1_OBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_57
   (R1_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]R1_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_58
   (R1_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]R1_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_59
   (R1_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]R1_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_6
   (R7_OBUF,
    FA4_C,
    Q_reg_0,
    MUX_B_REG_VAL,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_4,
    Q_reg_2,
    Q_reg_3,
    Sub,
    Q_reg_4,
    FA0_C,
    Q_reg_5,
    R5_OBUF,
    R4_OBUF,
    Q_reg_6,
    Q_reg_7);
  output [0:0]R7_OBUF;
  output FA4_C;
  output Q_reg_0;
  output [0:0]MUX_B_REG_VAL;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_4;
  input Q_reg_2;
  input [3:0]Q_reg_3;
  input Sub;
  input [1:0]Q_reg_4;
  input FA0_C;
  input [2:0]Q_reg_5;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_6;
  input Q_reg_7;

  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA0_C;
  wire FA4_C;
  wire [0:0]MUX_B_REG_VAL;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire Q_reg_2;
  wire [3:0]Q_reg_3;
  wire [1:0]Q_reg_4;
  wire [2:0]Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire Sub;
  wire ZERO_OBUF_inst_i_50_n_0;
  wire ZERO_OBUF_inst_i_68_n_0;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    SIGN_OBUF_inst_i_4
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3[2]),
        .I3(Sub),
        .I4(Q_reg_4[1]),
        .I5(Q_reg_3[3]),
        .O(FA4_C));
  LUT6 #(
    .INIT(64'hB2FFFFE800E8B200)) 
    ZERO_OBUF_inst_i_10
       (.I0(FA0_C),
        .I1(MUX_B_REG_VAL),
        .I2(Q_reg_3[0]),
        .I3(Sub),
        .I4(Q_reg_4[0]),
        .I5(Q_reg_3[1]),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_24
       (.I0(ZERO_OBUF_inst_i_50_n_0),
        .I1(Q_reg_7),
        .O(MUX_B_REG_VAL));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_50
       (.I0(ZERO_OBUF_inst_i_68_n_0),
        .I1(Q_reg_6),
        .O(ZERO_OBUF_inst_i_50_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_68
       (.I0(R7_OBUF),
        .I1(Q_reg_5[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_5[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_5[0]),
        .O(ZERO_OBUF_inst_i_68_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_60
   (R1_OBUF,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled);
  output [0:0]R1_OBUF;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [0:0]R1_OBUF;
  wire [0:0]REG_BANK_INPUT;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R1_OBUF),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_61
   (Q_reg_0,
    NEXT_IA_OBUF,
    Q_reg_1,
    Q_reg_2,
    CLR_IBUF,
    Q_reg_3,
    CLK_IBUF_BUFG,
    Q_reg_4,
    Q_reg_5,
    JMP,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8);
  output Q_reg_0;
  output [0:0]NEXT_IA_OBUF;
  output [1:0]Q_reg_1;
  output Q_reg_2;
  input CLR_IBUF;
  input Q_reg_3;
  input CLK_IBUF_BUFG;
  input Q_reg_4;
  input Q_reg_5;
  input JMP;
  input Q_reg_6;
  input Q_reg_7;
  input Q_reg_8;

  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire JMP;
  wire [0:0]NEXT_IA_OBUF;
  wire Q_reg_0;
  wire [1:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire [1:1]S;

  LUT1 #(
    .INIT(2'h1)) 
    \NEXT_IA_OBUFT[0]_inst_i_3 
       (.I0(Q_reg_0),
        .O(Q_reg_1[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \NEXT_IA_OBUFT[1]_inst_i_1 
       (.I0(S),
        .I1(Q_reg_4),
        .I2(Q_reg_5),
        .I3(JMP),
        .O(NEXT_IA_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \NEXT_IA_OBUFT[1]_inst_i_3 
       (.I0(Q_reg_0),
        .I1(Q_reg_7),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \NEXT_IA_OBUFT[2]_inst_i_3 
       (.I0(Q_reg_0),
        .I1(Q_reg_7),
        .I2(Q_reg_8),
        .O(Q_reg_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__5
       (.I0(NEXT_IA_OBUF),
        .I1(Q_reg_6),
        .O(Q_reg_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_3),
        .Q(Q_reg_0),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_62
   (Q_reg_0,
    Q_reg_1,
    NEXT_IA_OBUF,
    Q_reg_2,
    CLR_IBUF,
    Q_reg_3,
    CLK_IBUF_BUFG,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    JMP,
    Q_reg_7,
    Q_reg_8);
  output Q_reg_0;
  output Q_reg_1;
  output [0:0]NEXT_IA_OBUF;
  output Q_reg_2;
  input CLR_IBUF;
  input Q_reg_3;
  input CLK_IBUF_BUFG;
  input Q_reg_4;
  input Q_reg_5;
  input Q_reg_6;
  input JMP;
  input Q_reg_7;
  input Q_reg_8;

  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire JMP;
  wire [0:0]NEXT_IA_OBUF;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire [3:3]S;

  LUT4 #(
    .INIT(16'hF888)) 
    \NEXT_IA_OBUFT[3]_inst_i_1 
       (.I0(S),
        .I1(Q_reg_6),
        .I2(Q_reg_1),
        .I3(JMP),
        .O(NEXT_IA_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \NEXT_IA_OBUFT[3]_inst_i_3 
       (.I0(Q_reg_0),
        .I1(Q_reg_4),
        .I2(Q_reg_5),
        .I3(Q_reg_8),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \NEXT_IA_OBUFT[3]_inst_i_5 
       (.I0(Q_reg_0),
        .I1(Q_reg_4),
        .I2(Q_reg_5),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__7
       (.I0(NEXT_IA_OBUF),
        .I1(Q_reg_7),
        .O(Q_reg_2));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_3),
        .Q(Q_reg_0),
        .R(CLR_IBUF));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_63
   (Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    FA5_C,
    B7_out,
    B9_out,
    FA0_C,
    B5_out,
    B11_out,
    NEXT_IA_OBUF,
    data,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    Q_reg_22,
    Q_reg_23,
    Q_reg_24,
    Q_reg_25,
    Q_reg_26,
    Q_reg_27,
    Q_reg_28,
    Q_reg_29,
    Q_reg_30,
    \NEXT_IA_TRI[3] ,
    \NEXT_IA_TRI[2] ,
    \NEXT_IA_TRI[1] ,
    \NEXT_IA_TRI[0] ,
    Q_reg_31,
    CLR_IBUF,
    Q_reg_32,
    CLK_IBUF_BUFG,
    Q_reg_33,
    Q_reg_34,
    Q_reg_35,
    Q_reg_36,
    MUX_A_REG_VAL,
    HA0_S,
    MUX_B_REG_VAL,
    Q_reg_37,
    JMP);
  output Q_reg_0;
  output Q_reg_1;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  output Q_reg_7;
  output Q_reg_8;
  output Q_reg_9;
  output Q_reg_10;
  output Q_reg_11;
  output FA5_C;
  output B7_out;
  output B9_out;
  output FA0_C;
  output B5_out;
  output B11_out;
  output [0:0]NEXT_IA_OBUF;
  output [0:0]data;
  output Q_reg_12;
  output Q_reg_13;
  output Q_reg_14;
  output Q_reg_15;
  output Q_reg_16;
  output Q_reg_17;
  output Q_reg_18;
  output Q_reg_19;
  output Q_reg_20;
  output Q_reg_21;
  output Q_reg_22;
  output Q_reg_23;
  output Q_reg_24;
  output Q_reg_25;
  output Q_reg_26;
  output Q_reg_27;
  output Q_reg_28;
  output Q_reg_29;
  output Q_reg_30;
  output \NEXT_IA_TRI[3] ;
  output \NEXT_IA_TRI[2] ;
  output \NEXT_IA_TRI[1] ;
  output \NEXT_IA_TRI[0] ;
  output Q_reg_31;
  input CLR_IBUF;
  input Q_reg_32;
  input CLK_IBUF_BUFG;
  input Q_reg_33;
  input Q_reg_34;
  input Q_reg_35;
  input Q_reg_36;
  input [4:0]MUX_A_REG_VAL;
  input HA0_S;
  input [6:0]MUX_B_REG_VAL;
  input [0:0]Q_reg_37;
  input JMP;

  wire \Add_Sub_0/B1_out ;
  wire \Add_Sub_0/B3_out ;
  wire B11_out;
  wire B5_out;
  wire B7_out;
  wire B9_out;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire FA0_C;
  wire FA5_C;
  wire HA0_S;
  wire JMP;
  wire [0:0]\MUX_A/EN_TSB ;
  wire [4:0]MUX_A_REG_VAL;
  wire [0:0]\MUX_B/EN_TSB ;
  wire [6:0]MUX_B_REG_VAL;
  wire [0:0]NEXT_IA_OBUF;
  wire \NEXT_IA_OBUFT[0]_inst_i_5_n_0 ;
  wire \NEXT_IA_TRI[0] ;
  wire \NEXT_IA_TRI[1] ;
  wire \NEXT_IA_TRI[2] ;
  wire \NEXT_IA_TRI[3] ;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_22;
  wire Q_reg_23;
  wire Q_reg_24;
  wire Q_reg_25;
  wire Q_reg_26;
  wire Q_reg_27;
  wire Q_reg_28;
  wire Q_reg_29;
  wire Q_reg_3;
  wire Q_reg_30;
  wire Q_reg_31;
  wire Q_reg_32;
  wire Q_reg_33;
  wire Q_reg_34;
  wire Q_reg_35;
  wire Q_reg_36;
  wire [0:0]Q_reg_37;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire ZERO_OBUF_inst_i_17_n_0;
  wire [0:0]data;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    CARRY_OBUF_inst_i_11
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_22));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    CARRY_OBUF_inst_i_14
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(Q_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    CARRY_OBUF_inst_i_15
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(Q_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1004)) 
    CARRY_OBUF_inst_i_16
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(Q_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    CARRY_OBUF_inst_i_17
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(Q_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    CARRY_OBUF_inst_i_18
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(Q_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8DDB)) 
    CARRY_OBUF_inst_i_19
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(\MUX_B/EN_TSB ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    CARRY_OBUF_inst_i_7
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_29));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    CARRY_OBUF_inst_i_9
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_30));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \NEXT_IA_OBUFT[0]_inst_i_1 
       (.I0(Q_reg_37),
        .I1(Q_reg_11),
        .I2(data),
        .I3(JMP),
        .O(NEXT_IA_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \NEXT_IA_OBUFT[0]_inst_i_2 
       (.I0(\NEXT_IA_OBUFT[0]_inst_i_5_n_0 ),
        .O(\NEXT_IA_TRI[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0443)) 
    \NEXT_IA_OBUFT[0]_inst_i_4 
       (.I0(Q_reg_0),
        .I1(Q_reg_33),
        .I2(Q_reg_34),
        .I3(Q_reg_35),
        .O(data));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \NEXT_IA_OBUFT[0]_inst_i_5 
       (.I0(Q_reg_11),
        .I1(JMP),
        .O(\NEXT_IA_OBUFT[0]_inst_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \NEXT_IA_OBUFT[1]_inst_i_2 
       (.I0(Q_reg_12),
        .O(\NEXT_IA_TRI[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \NEXT_IA_OBUFT[1]_inst_i_4 
       (.I0(Q_reg_11),
        .I1(JMP),
        .O(Q_reg_12));
  LUT1 #(
    .INIT(2'h1)) 
    \NEXT_IA_OBUFT[2]_inst_i_2 
       (.I0(Q_reg_13),
        .O(\NEXT_IA_TRI[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \NEXT_IA_OBUFT[2]_inst_i_5 
       (.I0(Q_reg_11),
        .I1(JMP),
        .O(Q_reg_13));
  LUT1 #(
    .INIT(2'h1)) 
    \NEXT_IA_OBUFT[3]_inst_i_2 
       (.I0(Q_reg_14),
        .O(\NEXT_IA_TRI[3] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEBFF)) 
    \NEXT_IA_OBUFT[3]_inst_i_4 
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_11));
  LUT2 #(
    .INIT(4'hE)) 
    \NEXT_IA_OBUFT[3]_inst_i_7 
       (.I0(Q_reg_11),
        .I1(JMP),
        .O(Q_reg_14));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__4
       (.I0(NEXT_IA_OBUF),
        .I1(\NEXT_IA_OBUFT[0]_inst_i_5_n_0 ),
        .O(Q_reg_31));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_32),
        .Q(Q_reg_0),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SIGN_OBUF_inst_i_12
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_28));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SIGN_OBUF_inst_i_14
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_27));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    SIGN_OBUF_inst_i_3
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[5]),
        .O(B9_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SIGN_OBUF_inst_i_6
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_20));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    ZERO_OBUF_inst_i_14
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[4]),
        .O(B7_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    ZERO_OBUF_inst_i_15
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[3]),
        .O(B5_out));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    ZERO_OBUF_inst_i_17
       (.I0(HA0_S),
        .I1(MUX_A_REG_VAL[2]),
        .I2(\Add_Sub_0/B3_out ),
        .I3(MUX_A_REG_VAL[1]),
        .I4(\Add_Sub_0/B1_out ),
        .I5(FA0_C),
        .O(ZERO_OBUF_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_20
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_21));
  LUT6 #(
    .INIT(64'hFFFF008000000080)) 
    ZERO_OBUF_inst_i_26
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[0]),
        .I5(MUX_A_REG_VAL[0]),
        .O(FA0_C));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_30
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_26));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_32
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_18));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_34
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_19));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    ZERO_OBUF_inst_i_36
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[2]),
        .O(\Add_Sub_0/B3_out ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    ZERO_OBUF_inst_i_37
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[1]),
        .O(\Add_Sub_0/B1_out ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    ZERO_OBUF_inst_i_40
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0480)) 
    ZERO_OBUF_inst_i_41
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    ZERO_OBUF_inst_i_42
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    ZERO_OBUF_inst_i_43
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ZERO_OBUF_inst_i_44
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(Q_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB60)) 
    ZERO_OBUF_inst_i_45
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .O(\MUX_A/EN_TSB ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_47
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_23));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_49
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_15));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    ZERO_OBUF_inst_i_5
       (.I0(ZERO_OBUF_inst_i_17_n_0),
        .I1(Q_reg_36),
        .I2(B7_out),
        .I3(MUX_A_REG_VAL[3]),
        .I4(B9_out),
        .I5(MUX_A_REG_VAL[4]),
        .O(FA5_C));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_51
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_24));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_53
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_16));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_55
       (.I0(Q_reg_5),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .I3(Q_reg_4),
        .I4(Q_reg_3),
        .I5(\MUX_B/EN_TSB ),
        .O(Q_reg_25));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ZERO_OBUF_inst_i_57
       (.I0(Q_reg_8),
        .I1(Q_reg_6),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_7),
        .I5(\MUX_A/EN_TSB ),
        .O(Q_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    ZERO_OBUF_inst_i_6
       (.I0(Q_reg_0),
        .I1(Q_reg_35),
        .I2(Q_reg_34),
        .I3(Q_reg_33),
        .I4(MUX_B_REG_VAL[6]),
        .O(B11_out));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_64
   (Q_reg_0,
    Clk_With_Enabled,
    Clk_With_Enabled_0,
    Clk_With_Enabled_1,
    Clk_With_Enabled_2,
    Clk_With_Enabled_3,
    Clk_With_Enabled_4,
    JMP,
    Q_reg_1,
    HA0_S,
    HA0_S_0,
    ZERO,
    HA0_S_5,
    HA0_S_6,
    HA0_S_7,
    Sub,
    NEXT_IA_OBUF,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    REG_BANK_INPUT,
    CLR_IBUF,
    Q_reg_7,
    CLK_IBUF_BUFG,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    CLK_IBUF,
    MUX_B_REG_VAL,
    MUX_A_REG_VAL,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    ASU_RES,
    Q_reg_14,
    Q_reg_15);
  output Q_reg_0;
  output Clk_With_Enabled;
  output Clk_With_Enabled_0;
  output Clk_With_Enabled_1;
  output Clk_With_Enabled_2;
  output Clk_With_Enabled_3;
  output Clk_With_Enabled_4;
  output JMP;
  output Q_reg_1;
  output HA0_S;
  output HA0_S_0;
  output ZERO;
  output HA0_S_5;
  output HA0_S_6;
  output HA0_S_7;
  output Sub;
  output [0:0]NEXT_IA_OBUF;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  output [3:0]REG_BANK_INPUT;
  input CLR_IBUF;
  input Q_reg_7;
  input CLK_IBUF_BUFG;
  input Q_reg_8;
  input Q_reg_9;
  input Q_reg_10;
  input CLK_IBUF;
  input [4:0]MUX_B_REG_VAL;
  input [4:0]MUX_A_REG_VAL;
  input [0:0]Q_reg_11;
  input Q_reg_12;
  input [0:0]Q_reg_13;
  input [3:0]ASU_RES;
  input Q_reg_14;
  input Q_reg_15;

  wire [3:0]ASU_RES;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire Clk_With_Enabled_0;
  wire Clk_With_Enabled_1;
  wire Clk_With_Enabled_2;
  wire Clk_With_Enabled_3;
  wire Clk_With_Enabled_4;
  wire HA0_S;
  wire HA0_S_0;
  wire HA0_S_5;
  wire HA0_S_6;
  wire HA0_S_7;
  wire JMP;
  wire LD;
  wire [4:0]MUX_A_REG_VAL;
  wire [4:0]MUX_B_REG_VAL;
  wire [0:0]NEXT_IA_OBUF;
  wire Q_i_2__0_n_0;
  wire Q_i_2__1_n_0;
  wire Q_i_2__2_n_0;
  wire Q_i_3__0_n_0;
  wire Q_i_3__1_n_0;
  wire Q_i_3__2_n_0;
  wire Q_i_3_n_0;
  wire Q_i_4__4_n_0;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_10;
  wire [0:0]Q_reg_11;
  wire Q_reg_12;
  wire [0:0]Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [3:0]REG_BANK_INPUT;
  wire Sub;
  wire ZERO;
  wire [2:2]data;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    CARRY_OBUF_inst_i_3
       (.I0(Q_reg_0),
        .I1(Q_reg_10),
        .I2(Q_reg_9),
        .I3(Q_reg_8),
        .O(Sub));
  LUT4 #(
    .INIT(16'hF888)) 
    \NEXT_IA_OBUFT[2]_inst_i_1 
       (.I0(Q_reg_11),
        .I1(Q_reg_12),
        .I2(data),
        .I3(JMP),
        .O(NEXT_IA_OBUF));
  LUT4 #(
    .INIT(16'h0021)) 
    \NEXT_IA_OBUFT[2]_inst_i_4 
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_10),
        .I3(Q_reg_8),
        .O(data));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \NEXT_IA_OBUFT[3]_inst_i_6 
       (.I0(Q_reg_0),
        .I1(Q_reg_10),
        .I2(Q_reg_9),
        .I3(Q_reg_8),
        .O(JMP));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h40200000)) 
    Q_i_1
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    Q_i_1__0
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    Q_i_1__1
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled_2));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__10
       (.I0(Q_i_2__1_n_0),
        .I1(Q_i_3__1_n_0),
        .O(REG_BANK_INPUT[2]));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__11
       (.I0(Q_i_2__2_n_0),
        .I1(Q_i_3__2_n_0),
        .O(REG_BANK_INPUT[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h21400000)) 
    Q_i_1__2
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled_3));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h04020000)) 
    Q_i_1__3
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled_4));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__6
       (.I0(NEXT_IA_OBUF),
        .I1(Q_reg_15),
        .O(Q_reg_6));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__8
       (.I0(Q_i_3_n_0),
        .I1(Q_i_4__4_n_0),
        .O(REG_BANK_INPUT[0]));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__9
       (.I0(Q_i_2__0_n_0),
        .I1(Q_i_3__0_n_0),
        .O(REG_BANK_INPUT[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h10010000)) 
    Q_i_2
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_10),
        .I4(CLK_IBUF),
        .O(Clk_With_Enabled_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    Q_i_2__0
       (.I0(Q_reg_14),
        .I1(LD),
        .I2(ASU_RES[1]),
        .I3(Q_reg_1),
        .O(Q_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    Q_i_2__1
       (.I0(data),
        .I1(LD),
        .I2(ASU_RES[2]),
        .I3(Q_reg_1),
        .O(Q_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    Q_i_2__2
       (.I0(Q_reg_14),
        .I1(LD),
        .I2(ASU_RES[3]),
        .I3(Q_reg_1),
        .O(Q_i_2__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    Q_i_3
       (.I0(Q_reg_13),
        .I1(LD),
        .I2(ASU_RES[0]),
        .I3(Q_reg_1),
        .O(Q_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__0
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__1
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__2
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__3
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__4
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__5
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_3__6
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Q_i_4__4
       (.I0(LD),
        .I1(Q_reg_1),
        .O(Q_i_4__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h031D)) 
    Q_i_5
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(Q_reg_10),
        .O(LD));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFCE2)) 
    Q_i_7
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(Q_reg_10),
        .O(Q_reg_1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_7),
        .Q(Q_reg_0),
        .R(CLR_IBUF));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    ZERO_OBUF_inst_i_16
       (.I0(MUX_B_REG_VAL[3]),
        .I1(Q_reg_0),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_8),
        .I5(MUX_A_REG_VAL[3]),
        .O(HA0_S_6));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    ZERO_OBUF_inst_i_18
       (.I0(MUX_A_REG_VAL[1]),
        .I1(MUX_B_REG_VAL[1]),
        .I2(Q_reg_0),
        .I3(Q_reg_10),
        .I4(Q_reg_9),
        .I5(Q_reg_8),
        .O(ZERO));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    ZERO_OBUF_inst_i_21
       (.I0(MUX_B_REG_VAL[0]),
        .I1(Q_reg_0),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_8),
        .I5(MUX_A_REG_VAL[0]),
        .O(HA0_S));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    ZERO_OBUF_inst_i_35
       (.I0(MUX_B_REG_VAL[1]),
        .I1(Q_reg_0),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_8),
        .I5(MUX_A_REG_VAL[1]),
        .O(HA0_S_0));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    ZERO_OBUF_inst_i_4
       (.I0(MUX_B_REG_VAL[4]),
        .I1(Q_reg_0),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_8),
        .I5(MUX_A_REG_VAL[4]),
        .O(HA0_S_7));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    ZERO_OBUF_inst_i_9
       (.I0(MUX_B_REG_VAL[2]),
        .I1(Q_reg_0),
        .I2(Q_reg_10),
        .I3(Q_reg_9),
        .I4(Q_reg_8),
        .I5(MUX_A_REG_VAL[2]),
        .O(HA0_S_5));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_7
   (R7_OBUF,
    Q_reg_0,
    Q_reg_1,
    CLR_IBUF,
    Q_reg_2,
    Clk_With_Enabled_4,
    Q_reg_3,
    FA1_C,
    Sub,
    Q_reg_4,
    Q_reg_5,
    R5_OBUF,
    R4_OBUF,
    Q_reg_6,
    Q_reg_7);
  output [0:0]R7_OBUF;
  output [0:0]Q_reg_0;
  output [0:0]Q_reg_1;
  input CLR_IBUF;
  input [0:0]Q_reg_2;
  input Clk_With_Enabled_4;
  input [1:0]Q_reg_3;
  input FA1_C;
  input Sub;
  input Q_reg_4;
  input [2:0]Q_reg_5;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_6;
  input Q_reg_7;

  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA1_C;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [0:0]Q_reg_2;
  wire [1:0]Q_reg_3;
  wire Q_reg_4;
  wire [2:0]Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire Sub;
  wire ZERO_OBUF_inst_i_54_n_0;
  wire ZERO_OBUF_inst_i_72_n_0;

  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    Q_i_4__1
       (.I0(Q_reg_3[0]),
        .I1(Q_reg_1),
        .I2(FA1_C),
        .I3(Q_reg_3[1]),
        .I4(Sub),
        .I5(Q_reg_4),
        .O(Q_reg_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_2),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_27
       (.I0(ZERO_OBUF_inst_i_54_n_0),
        .I1(Q_reg_7),
        .O(Q_reg_1));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_54
       (.I0(ZERO_OBUF_inst_i_72_n_0),
        .I1(Q_reg_6),
        .O(ZERO_OBUF_inst_i_54_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_72
       (.I0(R7_OBUF),
        .I1(Q_reg_5[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_5[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_5[0]),
        .O(ZERO_OBUF_inst_i_72_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_8
   (R7_OBUF,
    Q_reg_0,
    REG_BANK_INPUT,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled_4,
    Q_reg_2,
    FA2_C,
    Sub,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    R5_OBUF,
    R4_OBUF,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8);
  output [0:0]R7_OBUF;
  output Q_reg_0;
  output [0:0]REG_BANK_INPUT;
  input CLR_IBUF;
  input [0:0]Q_reg_1;
  input Clk_With_Enabled_4;
  input [1:0]Q_reg_2;
  input FA2_C;
  input Sub;
  input [0:0]Q_reg_3;
  input Q_reg_4;
  input [2:0]Q_reg_5;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_6;
  input Q_reg_7;
  input Q_reg_8;

  wire [4:4]ASU_RES;
  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA2_C;
  wire Q_i_2__3_n_0;
  wire Q_reg_0;
  wire [0:0]Q_reg_1;
  wire [1:0]Q_reg_2;
  wire [0:0]Q_reg_3;
  wire Q_reg_4;
  wire [2:0]Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire Sub;
  wire ZERO_OBUF_inst_i_29_n_0;
  wire ZERO_OBUF_inst_i_58_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__12
       (.I0(Q_i_2__3_n_0),
        .I1(Q_reg_7),
        .O(REG_BANK_INPUT));
  LUT2 #(
    .INIT(4'h8)) 
    Q_i_2__3
       (.I0(ASU_RES),
        .I1(Q_reg_4),
        .O(Q_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    Q_i_4__2
       (.I0(Q_reg_2[0]),
        .I1(Q_reg_0),
        .I2(FA2_C),
        .I3(Q_reg_2[1]),
        .I4(Sub),
        .I5(Q_reg_3),
        .O(ASU_RES));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    ZERO_OBUF_inst_i_11
       (.I0(ZERO_OBUF_inst_i_29_n_0),
        .I1(Q_reg_8),
        .O(Q_reg_0));
  LUT2 #(
    .INIT(4'hE)) 
    ZERO_OBUF_inst_i_29
       (.I0(ZERO_OBUF_inst_i_58_n_0),
        .I1(Q_reg_6),
        .O(ZERO_OBUF_inst_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ZERO_OBUF_inst_i_58
       (.I0(R7_OBUF),
        .I1(Q_reg_5[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_5[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_5[0]),
        .O(ZERO_OBUF_inst_i_58_n_0));
endmodule

(* ORIG_REF_NAME = "D_Flip_Flop" *) 
module D_Flip_Flop_9
   (R7_OBUF,
    Q_reg_0,
    CLR_IBUF,
    REG_BANK_INPUT,
    Clk_With_Enabled_4,
    Q_reg_1,
    R5_OBUF,
    R4_OBUF,
    Q_reg_2,
    Q_reg_3);
  output [0:0]R7_OBUF;
  output [0:0]Q_reg_0;
  input CLR_IBUF;
  input [0:0]REG_BANK_INPUT;
  input Clk_With_Enabled_4;
  input [2:0]Q_reg_1;
  input [0:0]R5_OBUF;
  input [0:0]R4_OBUF;
  input Q_reg_2;
  input Q_reg_3;

  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire [0:0]Q_reg_0;
  wire [2:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire [0:0]R4_OBUF;
  wire [0:0]R5_OBUF;
  wire [0:0]R7_OBUF;
  wire [0:0]REG_BANK_INPUT;
  wire SIGN_OBUF_inst_i_13_n_0;
  wire SIGN_OBUF_inst_i_17_n_0;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk_With_Enabled_4),
        .CE(1'b1),
        .D(REG_BANK_INPUT),
        .Q(R7_OBUF),
        .R(CLR_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    SIGN_OBUF_inst_i_13
       (.I0(SIGN_OBUF_inst_i_17_n_0),
        .I1(Q_reg_2),
        .O(SIGN_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    SIGN_OBUF_inst_i_17
       (.I0(R7_OBUF),
        .I1(Q_reg_1[2]),
        .I2(R5_OBUF),
        .I3(Q_reg_1[1]),
        .I4(R4_OBUF),
        .I5(Q_reg_1[0]),
        .O(SIGN_OBUF_inst_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    SIGN_OBUF_inst_i_8
       (.I0(SIGN_OBUF_inst_i_13_n_0),
        .I1(Q_reg_3),
        .O(Q_reg_0));
endmodule

(* NotValidForBitStream *)
module Nano_Processor
   (CLK,
    CLR,
    ZERO,
    CARRY,
    OVERFLOW,
    SIGN,
    R0,
    R1,
    R2,
    R3,
    R4,
    R5,
    R6,
    R7,
    NEXT_IA,
    CURR_IA);
  input CLK;
  input CLR;
  output ZERO;
  output CARRY;
  output OVERFLOW;
  output SIGN;
  output [7:0]R0;
  output [7:0]R1;
  output [7:0]R2;
  output [7:0]R3;
  output [7:0]R4;
  output [7:0]R5;
  output [7:0]R6;
  output [7:0]R7;
  output [3:0]NEXT_IA;
  output [3:0]CURR_IA;

  wire [3:0]ASU_RES;
  wire \Add_Sub_0/B11_out ;
  wire \Add_Sub_0/B5_out ;
  wire \Add_Sub_0/B7_out ;
  wire \Add_Sub_0/B9_out ;
  wire \Add_Sub_0/FA0_C ;
  wire \Add_Sub_0/FA5_C ;
  wire \Add_Sub_0/FA_2/HA0_S ;
  wire \Add_Sub_0/FA_4/HA0_S ;
  wire \Add_Sub_0/FA_5/HA0_S ;
  wire \Add_Sub_0/FA_7/HA0_S ;
  wire CARRY;
  wire CARRY_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [3:0]CURR_IA;
  wire [3:0]CURR_IA_OBUF;
  wire [5:1]\MUX_A/EN_TSB ;
  wire [7:0]MUX_A_REG_VAL;
  wire [7:2]\MUX_B/EN_TSB ;
  wire [7:0]MUX_B_REG_VAL;
  wire [3:0]NEXT_IA;
  wire [3:0]NEXT_IA_OBUF;
  wire \NEXT_IA_TRI[0] ;
  wire \NEXT_IA_TRI[1] ;
  wire \NEXT_IA_TRI[2] ;
  wire \NEXT_IA_TRI[3] ;
  wire OVERFLOW;
  wire OVERFLOW_OBUF;
  wire Program_Counter_0_n_20;
  wire Program_Counter_0_n_36;
  wire Program_Counter_0_n_37;
  wire Program_Counter_0_n_38;
  wire Program_Counter_0_n_39;
  wire Program_Counter_0_n_40;
  wire Program_Counter_0_n_41;
  wire Program_Counter_0_n_42;
  wire Program_Counter_0_n_43;
  wire Program_Counter_0_n_44;
  wire Program_Counter_0_n_45;
  wire Program_Counter_0_n_46;
  wire Program_Counter_0_n_47;
  wire Program_Counter_0_n_48;
  wire Program_Counter_0_n_49;
  wire Program_Counter_0_n_50;
  wire Program_Counter_0_n_51;
  wire Program_Counter_0_n_52;
  wire Program_Counter_0_n_53;
  wire Program_Counter_0_n_54;
  wire Program_Counter_0_n_55;
  wire [7:0]R0;
  wire [7:0]R1;
  wire [7:0]R1_OBUF;
  wire [7:0]R2;
  wire [7:0]R2_OBUF;
  wire [7:0]R3;
  wire [7:0]R3_OBUF;
  wire [7:0]R4;
  wire [7:0]R4_OBUF;
  wire [7:0]R5;
  wire [7:0]R5_OBUF;
  wire [7:0]R6;
  wire [7:0]R6_OBUF;
  wire [7:0]R7;
  wire [7:0]R7_OBUF;
  wire [3:0]REG_BANK_INPUT;
  wire \Reg_1/Clk_With_Enabled ;
  wire \Reg_2/Clk_With_Enabled ;
  wire \Reg_3/Clk_With_Enabled ;
  wire \Reg_4/Clk_With_Enabled ;
  wire \Reg_5/Clk_With_Enabled ;
  wire \Reg_7/Clk_With_Enabled ;
  wire SIGN;
  wire SIGN_OBUF;
  wire Sub;
  wire ZERO;
  wire ZERO_OBUF;

  OBUF CARRY_OBUF_inst
       (.I(CARRY_OBUF),
        .O(CARRY));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  OBUF \CURR_IA_OBUF[0]_inst 
       (.I(CURR_IA_OBUF[0]),
        .O(CURR_IA[0]));
  OBUF \CURR_IA_OBUF[1]_inst 
       (.I(CURR_IA_OBUF[1]),
        .O(CURR_IA[1]));
  OBUF \CURR_IA_OBUF[2]_inst 
       (.I(CURR_IA_OBUF[2]),
        .O(CURR_IA[2]));
  OBUF \CURR_IA_OBUF[3]_inst 
       (.I(CURR_IA_OBUF[3]),
        .O(CURR_IA[3]));
  OBUFT \NEXT_IA_OBUFT[0]_inst 
       (.I(NEXT_IA_OBUF[0]),
        .O(NEXT_IA[0]),
        .T(\NEXT_IA_TRI[0] ));
  OBUFT \NEXT_IA_OBUFT[1]_inst 
       (.I(NEXT_IA_OBUF[1]),
        .O(NEXT_IA[1]),
        .T(\NEXT_IA_TRI[1] ));
  OBUFT \NEXT_IA_OBUFT[2]_inst 
       (.I(NEXT_IA_OBUF[2]),
        .O(NEXT_IA[2]),
        .T(\NEXT_IA_TRI[2] ));
  OBUFT \NEXT_IA_OBUFT[3]_inst 
       (.I(NEXT_IA_OBUF[3]),
        .O(NEXT_IA[3]),
        .T(\NEXT_IA_TRI[3] ));
  OBUF OVERFLOW_OBUF_inst
       (.I(OVERFLOW_OBUF),
        .O(OVERFLOW));
  Program_Counter Program_Counter_0
       (.ASU_RES(ASU_RES),
        .B11_out(\Add_Sub_0/B11_out ),
        .B5_out(\Add_Sub_0/B5_out ),
        .B7_out(\Add_Sub_0/B7_out ),
        .B9_out(\Add_Sub_0/B9_out ),
        .CLK_IBUF(CLK_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .CURR_IA_OBUF(CURR_IA_OBUF),
        .Clk_With_Enabled(\Reg_4/Clk_With_Enabled ),
        .Clk_With_Enabled_0(\Reg_1/Clk_With_Enabled ),
        .Clk_With_Enabled_1(\Reg_5/Clk_With_Enabled ),
        .Clk_With_Enabled_2(\Reg_2/Clk_With_Enabled ),
        .Clk_With_Enabled_3(\Reg_3/Clk_With_Enabled ),
        .Clk_With_Enabled_4(\Reg_7/Clk_With_Enabled ),
        .FA0_C(\Add_Sub_0/FA0_C ),
        .FA5_C(\Add_Sub_0/FA5_C ),
        .HA0_S(\Add_Sub_0/FA_2/HA0_S ),
        .HA0_S_5(\Add_Sub_0/FA_4/HA0_S ),
        .HA0_S_6(\Add_Sub_0/FA_5/HA0_S ),
        .HA0_S_7(\Add_Sub_0/FA_7/HA0_S ),
        .MUX_A_REG_VAL({MUX_A_REG_VAL[7],MUX_A_REG_VAL[5:0]}),
        .MUX_B_REG_VAL(MUX_B_REG_VAL),
        .NEXT_IA_OBUF(NEXT_IA_OBUF),
        .\NEXT_IA_TRI[0] (\NEXT_IA_TRI[0] ),
        .\NEXT_IA_TRI[1] (\NEXT_IA_TRI[1] ),
        .\NEXT_IA_TRI[2] (\NEXT_IA_TRI[2] ),
        .\NEXT_IA_TRI[3] (\NEXT_IA_TRI[3] ),
        .Q_reg({\MUX_B/EN_TSB [7],\MUX_B/EN_TSB [5:2]}),
        .Q_reg_0(\MUX_A/EN_TSB ),
        .Q_reg_1(Program_Counter_0_n_20),
        .Q_reg_10(Program_Counter_0_n_44),
        .Q_reg_11(Program_Counter_0_n_45),
        .Q_reg_12(Program_Counter_0_n_46),
        .Q_reg_13(Program_Counter_0_n_47),
        .Q_reg_14(Program_Counter_0_n_48),
        .Q_reg_15(Program_Counter_0_n_49),
        .Q_reg_16(Program_Counter_0_n_50),
        .Q_reg_17(Program_Counter_0_n_51),
        .Q_reg_18(Program_Counter_0_n_52),
        .Q_reg_19(Program_Counter_0_n_53),
        .Q_reg_2(Program_Counter_0_n_36),
        .Q_reg_20(Program_Counter_0_n_54),
        .Q_reg_21(Program_Counter_0_n_55),
        .Q_reg_3(Program_Counter_0_n_37),
        .Q_reg_4(Program_Counter_0_n_38),
        .Q_reg_5(Program_Counter_0_n_39),
        .Q_reg_6(Program_Counter_0_n_40),
        .Q_reg_7(Program_Counter_0_n_41),
        .Q_reg_8(Program_Counter_0_n_42),
        .Q_reg_9(Program_Counter_0_n_43),
        .REG_BANK_INPUT(REG_BANK_INPUT),
        .Sub(Sub));
  OBUF \R0_OBUF[0]_inst 
       (.I(1'b0),
        .O(R0[0]));
  OBUF \R0_OBUF[1]_inst 
       (.I(1'b0),
        .O(R0[1]));
  OBUF \R0_OBUF[2]_inst 
       (.I(1'b0),
        .O(R0[2]));
  OBUF \R0_OBUF[3]_inst 
       (.I(1'b0),
        .O(R0[3]));
  OBUF \R0_OBUF[4]_inst 
       (.I(1'b0),
        .O(R0[4]));
  OBUF \R0_OBUF[5]_inst 
       (.I(1'b0),
        .O(R0[5]));
  OBUF \R0_OBUF[6]_inst 
       (.I(1'b0),
        .O(R0[6]));
  OBUF \R0_OBUF[7]_inst 
       (.I(1'b0),
        .O(R0[7]));
  OBUF \R1_OBUF[0]_inst 
       (.I(R1_OBUF[0]),
        .O(R1[0]));
  OBUF \R1_OBUF[1]_inst 
       (.I(R1_OBUF[1]),
        .O(R1[1]));
  OBUF \R1_OBUF[2]_inst 
       (.I(R1_OBUF[2]),
        .O(R1[2]));
  OBUF \R1_OBUF[3]_inst 
       (.I(R1_OBUF[3]),
        .O(R1[3]));
  OBUF \R1_OBUF[4]_inst 
       (.I(R1_OBUF[4]),
        .O(R1[4]));
  OBUF \R1_OBUF[5]_inst 
       (.I(R1_OBUF[5]),
        .O(R1[5]));
  OBUF \R1_OBUF[6]_inst 
       (.I(R1_OBUF[6]),
        .O(R1[6]));
  OBUF \R1_OBUF[7]_inst 
       (.I(R1_OBUF[7]),
        .O(R1[7]));
  OBUF \R2_OBUF[0]_inst 
       (.I(R2_OBUF[0]),
        .O(R2[0]));
  OBUF \R2_OBUF[1]_inst 
       (.I(R2_OBUF[1]),
        .O(R2[1]));
  OBUF \R2_OBUF[2]_inst 
       (.I(R2_OBUF[2]),
        .O(R2[2]));
  OBUF \R2_OBUF[3]_inst 
       (.I(R2_OBUF[3]),
        .O(R2[3]));
  OBUF \R2_OBUF[4]_inst 
       (.I(R2_OBUF[4]),
        .O(R2[4]));
  OBUF \R2_OBUF[5]_inst 
       (.I(R2_OBUF[5]),
        .O(R2[5]));
  OBUF \R2_OBUF[6]_inst 
       (.I(R2_OBUF[6]),
        .O(R2[6]));
  OBUF \R2_OBUF[7]_inst 
       (.I(R2_OBUF[7]),
        .O(R2[7]));
  OBUF \R3_OBUF[0]_inst 
       (.I(R3_OBUF[0]),
        .O(R3[0]));
  OBUF \R3_OBUF[1]_inst 
       (.I(R3_OBUF[1]),
        .O(R3[1]));
  OBUF \R3_OBUF[2]_inst 
       (.I(R3_OBUF[2]),
        .O(R3[2]));
  OBUF \R3_OBUF[3]_inst 
       (.I(R3_OBUF[3]),
        .O(R3[3]));
  OBUF \R3_OBUF[4]_inst 
       (.I(R3_OBUF[4]),
        .O(R3[4]));
  OBUF \R3_OBUF[5]_inst 
       (.I(R3_OBUF[5]),
        .O(R3[5]));
  OBUF \R3_OBUF[6]_inst 
       (.I(R3_OBUF[6]),
        .O(R3[6]));
  OBUF \R3_OBUF[7]_inst 
       (.I(R3_OBUF[7]),
        .O(R3[7]));
  OBUF \R4_OBUF[0]_inst 
       (.I(R4_OBUF[0]),
        .O(R4[0]));
  OBUF \R4_OBUF[1]_inst 
       (.I(R4_OBUF[1]),
        .O(R4[1]));
  OBUF \R4_OBUF[2]_inst 
       (.I(R4_OBUF[2]),
        .O(R4[2]));
  OBUF \R4_OBUF[3]_inst 
       (.I(R4_OBUF[3]),
        .O(R4[3]));
  OBUF \R4_OBUF[4]_inst 
       (.I(R4_OBUF[4]),
        .O(R4[4]));
  OBUF \R4_OBUF[5]_inst 
       (.I(R4_OBUF[5]),
        .O(R4[5]));
  OBUF \R4_OBUF[6]_inst 
       (.I(R4_OBUF[6]),
        .O(R4[6]));
  OBUF \R4_OBUF[7]_inst 
       (.I(R4_OBUF[7]),
        .O(R4[7]));
  OBUF \R5_OBUF[0]_inst 
       (.I(R5_OBUF[0]),
        .O(R5[0]));
  OBUF \R5_OBUF[1]_inst 
       (.I(R5_OBUF[1]),
        .O(R5[1]));
  OBUF \R5_OBUF[2]_inst 
       (.I(R5_OBUF[2]),
        .O(R5[2]));
  OBUF \R5_OBUF[3]_inst 
       (.I(R5_OBUF[3]),
        .O(R5[3]));
  OBUF \R5_OBUF[4]_inst 
       (.I(R5_OBUF[4]),
        .O(R5[4]));
  OBUF \R5_OBUF[5]_inst 
       (.I(R5_OBUF[5]),
        .O(R5[5]));
  OBUF \R5_OBUF[6]_inst 
       (.I(R5_OBUF[6]),
        .O(R5[6]));
  OBUF \R5_OBUF[7]_inst 
       (.I(R5_OBUF[7]),
        .O(R5[7]));
  OBUF \R6_OBUF[0]_inst 
       (.I(R6_OBUF[0]),
        .O(R6[0]));
  OBUF \R6_OBUF[1]_inst 
       (.I(R6_OBUF[1]),
        .O(R6[1]));
  OBUF \R6_OBUF[2]_inst 
       (.I(R6_OBUF[2]),
        .O(R6[2]));
  OBUF \R6_OBUF[3]_inst 
       (.I(R6_OBUF[3]),
        .O(R6[3]));
  OBUF \R6_OBUF[4]_inst 
       (.I(R6_OBUF[4]),
        .O(R6[4]));
  OBUF \R6_OBUF[5]_inst 
       (.I(R6_OBUF[5]),
        .O(R6[5]));
  OBUF \R6_OBUF[6]_inst 
       (.I(R6_OBUF[6]),
        .O(R6[6]));
  OBUF \R6_OBUF[7]_inst 
       (.I(R6_OBUF[7]),
        .O(R6[7]));
  OBUF \R7_OBUF[0]_inst 
       (.I(R7_OBUF[0]),
        .O(R7[0]));
  OBUF \R7_OBUF[1]_inst 
       (.I(R7_OBUF[1]),
        .O(R7[1]));
  OBUF \R7_OBUF[2]_inst 
       (.I(R7_OBUF[2]),
        .O(R7[2]));
  OBUF \R7_OBUF[3]_inst 
       (.I(R7_OBUF[3]),
        .O(R7[3]));
  OBUF \R7_OBUF[4]_inst 
       (.I(R7_OBUF[4]),
        .O(R7[4]));
  OBUF \R7_OBUF[5]_inst 
       (.I(R7_OBUF[5]),
        .O(R7[5]));
  OBUF \R7_OBUF[6]_inst 
       (.I(R7_OBUF[6]),
        .O(R7[6]));
  OBUF \R7_OBUF[7]_inst 
       (.I(R7_OBUF[7]),
        .O(R7[7]));
  Reg_Bank Reg_Bank_0
       (.B11_out(\Add_Sub_0/B11_out ),
        .B5_out(\Add_Sub_0/B5_out ),
        .B7_out(\Add_Sub_0/B7_out ),
        .B9_out(\Add_Sub_0/B9_out ),
        .CARRY_OBUF(CARRY_OBUF),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(\Reg_1/Clk_With_Enabled ),
        .Clk_With_Enabled_0(\Reg_2/Clk_With_Enabled ),
        .Clk_With_Enabled_1(\Reg_3/Clk_With_Enabled ),
        .Clk_With_Enabled_2(\Reg_4/Clk_With_Enabled ),
        .Clk_With_Enabled_3(\Reg_5/Clk_With_Enabled ),
        .Clk_With_Enabled_4(\Reg_7/Clk_With_Enabled ),
        .FA0_C(\Add_Sub_0/FA0_C ),
        .FA5_C(\Add_Sub_0/FA5_C ),
        .HA0_S(\Add_Sub_0/FA_7/HA0_S ),
        .HA0_S_5(\Add_Sub_0/FA_4/HA0_S ),
        .HA0_S_6(\Add_Sub_0/FA_2/HA0_S ),
        .HA0_S_7(\Add_Sub_0/FA_5/HA0_S ),
        .MUX_B_REG_VAL(MUX_B_REG_VAL),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q_reg({MUX_A_REG_VAL[7],MUX_A_REG_VAL[5:0]}),
        .Q_reg_0(ASU_RES),
        .Q_reg_1(REG_BANK_INPUT),
        .Q_reg_10(Program_Counter_0_n_41),
        .Q_reg_11(Program_Counter_0_n_42),
        .Q_reg_12(Program_Counter_0_n_43),
        .Q_reg_13(Program_Counter_0_n_44),
        .Q_reg_14(Program_Counter_0_n_45),
        .Q_reg_15(Program_Counter_0_n_46),
        .Q_reg_16(Program_Counter_0_n_47),
        .Q_reg_17(Program_Counter_0_n_48),
        .Q_reg_18(Program_Counter_0_n_49),
        .Q_reg_19(Program_Counter_0_n_50),
        .Q_reg_2(Program_Counter_0_n_20),
        .Q_reg_20(Program_Counter_0_n_51),
        .Q_reg_21(Program_Counter_0_n_52),
        .Q_reg_22(Program_Counter_0_n_53),
        .Q_reg_23(Program_Counter_0_n_54),
        .Q_reg_24(Program_Counter_0_n_55),
        .Q_reg_3(\MUX_A/EN_TSB ),
        .Q_reg_4({\MUX_B/EN_TSB [7],\MUX_B/EN_TSB [5:2]}),
        .Q_reg_5(Program_Counter_0_n_36),
        .Q_reg_6(Program_Counter_0_n_37),
        .Q_reg_7(Program_Counter_0_n_38),
        .Q_reg_8(Program_Counter_0_n_39),
        .Q_reg_9(Program_Counter_0_n_40),
        .R1_OBUF(R1_OBUF),
        .R2_OBUF(R2_OBUF),
        .R3_OBUF(R3_OBUF),
        .R4_OBUF(R4_OBUF),
        .R5_OBUF(R5_OBUF),
        .R6_OBUF(R6_OBUF),
        .R7_OBUF(R7_OBUF),
        .SIGN_OBUF(SIGN_OBUF),
        .Sub(Sub),
        .ZERO_OBUF(ZERO_OBUF));
  OBUF SIGN_OBUF_inst
       (.I(SIGN_OBUF),
        .O(SIGN));
  OBUF ZERO_OBUF_inst
       (.I(ZERO_OBUF),
        .O(ZERO));
endmodule

module Program_Counter
   (CURR_IA_OBUF,
    Q_reg,
    Clk_With_Enabled,
    Clk_With_Enabled_0,
    Clk_With_Enabled_1,
    Clk_With_Enabled_2,
    Clk_With_Enabled_3,
    Clk_With_Enabled_4,
    Q_reg_0,
    Q_reg_1,
    FA5_C,
    B7_out,
    B9_out,
    FA0_C,
    HA0_S,
    B5_out,
    HA0_S_5,
    HA0_S_6,
    B11_out,
    HA0_S_7,
    Sub,
    NEXT_IA_OBUF,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    \NEXT_IA_TRI[3] ,
    \NEXT_IA_TRI[2] ,
    \NEXT_IA_TRI[1] ,
    \NEXT_IA_TRI[0] ,
    REG_BANK_INPUT,
    CLR_IBUF,
    CLK_IBUF_BUFG,
    CLK_IBUF,
    MUX_A_REG_VAL,
    MUX_B_REG_VAL,
    ASU_RES);
  output [3:0]CURR_IA_OBUF;
  output [4:0]Q_reg;
  output Clk_With_Enabled;
  output Clk_With_Enabled_0;
  output Clk_With_Enabled_1;
  output Clk_With_Enabled_2;
  output Clk_With_Enabled_3;
  output Clk_With_Enabled_4;
  output [4:0]Q_reg_0;
  output Q_reg_1;
  output FA5_C;
  output B7_out;
  output B9_out;
  output FA0_C;
  output HA0_S;
  output B5_out;
  output HA0_S_5;
  output HA0_S_6;
  output B11_out;
  output HA0_S_7;
  output Sub;
  output [3:0]NEXT_IA_OBUF;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  output Q_reg_7;
  output Q_reg_8;
  output Q_reg_9;
  output Q_reg_10;
  output Q_reg_11;
  output Q_reg_12;
  output Q_reg_13;
  output Q_reg_14;
  output Q_reg_15;
  output Q_reg_16;
  output Q_reg_17;
  output Q_reg_18;
  output Q_reg_19;
  output Q_reg_20;
  output Q_reg_21;
  output \NEXT_IA_TRI[3] ;
  output \NEXT_IA_TRI[2] ;
  output \NEXT_IA_TRI[1] ;
  output \NEXT_IA_TRI[0] ;
  output [3:0]REG_BANK_INPUT;
  input CLR_IBUF;
  input CLK_IBUF_BUFG;
  input CLK_IBUF;
  input [6:0]MUX_A_REG_VAL;
  input [7:0]MUX_B_REG_VAL;
  input [3:0]ASU_RES;

  wire [3:0]ASU_RES;
  wire \Add_Sub_0/FA_3/HA0_S ;
  wire B11_out;
  wire B5_out;
  wire B7_out;
  wire B9_out;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR_IBUF;
  wire [3:0]CURR_IA_OBUF;
  wire Clk_With_Enabled;
  wire Clk_With_Enabled_0;
  wire Clk_With_Enabled_1;
  wire Clk_With_Enabled_2;
  wire Clk_With_Enabled_3;
  wire Clk_With_Enabled_4;
  wire D_Flip_Flop_0_n_4;
  wire D_Flip_Flop_1_n_1;
  wire D_Flip_Flop_1_n_3;
  wire D_Flip_Flop_2_n_11;
  wire D_Flip_Flop_2_n_20;
  wire D_Flip_Flop_2_n_21;
  wire D_Flip_Flop_2_n_22;
  wire D_Flip_Flop_2_n_43;
  wire D_Flip_Flop_3_n_11;
  wire D_Flip_Flop_3_n_21;
  wire FA0_C;
  wire FA5_C;
  wire HA0_S;
  wire HA0_S_5;
  wire HA0_S_6;
  wire HA0_S_7;
  wire JMP;
  wire [6:0]MUX_A_REG_VAL;
  wire [7:0]MUX_B_REG_VAL;
  wire [3:0]NEXT_IA_OBUF;
  wire \NEXT_IA_TRI[0] ;
  wire \NEXT_IA_TRI[1] ;
  wire \NEXT_IA_TRI[2] ;
  wire \NEXT_IA_TRI[3] ;
  wire [4:0]Q_reg;
  wire [4:0]Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [3:0]REG_BANK_INPUT;
  wire [2:0]S;
  wire Sub;
  wire [0:0]data;

  D_Flip_Flop_61 D_Flip_Flop_0
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .JMP(JMP),
        .NEXT_IA_OBUF(NEXT_IA_OBUF[1]),
        .Q_reg_0(CURR_IA_OBUF[0]),
        .Q_reg_1({S[2],S[0]}),
        .Q_reg_2(D_Flip_Flop_0_n_4),
        .Q_reg_3(D_Flip_Flop_2_n_43),
        .Q_reg_4(D_Flip_Flop_2_n_11),
        .Q_reg_5(D_Flip_Flop_1_n_1),
        .Q_reg_6(D_Flip_Flop_2_n_20),
        .Q_reg_7(CURR_IA_OBUF[1]),
        .Q_reg_8(CURR_IA_OBUF[2]));
  D_Flip_Flop_62 D_Flip_Flop_1
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .JMP(JMP),
        .NEXT_IA_OBUF(NEXT_IA_OBUF[3]),
        .Q_reg_0(CURR_IA_OBUF[1]),
        .Q_reg_1(D_Flip_Flop_1_n_1),
        .Q_reg_2(D_Flip_Flop_1_n_3),
        .Q_reg_3(D_Flip_Flop_0_n_4),
        .Q_reg_4(CURR_IA_OBUF[0]),
        .Q_reg_5(CURR_IA_OBUF[2]),
        .Q_reg_6(D_Flip_Flop_2_n_11),
        .Q_reg_7(D_Flip_Flop_2_n_22),
        .Q_reg_8(CURR_IA_OBUF[3]));
  D_Flip_Flop_63 D_Flip_Flop_2
       (.B11_out(B11_out),
        .B5_out(B5_out),
        .B7_out(B7_out),
        .B9_out(B9_out),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .FA0_C(FA0_C),
        .FA5_C(FA5_C),
        .HA0_S(\Add_Sub_0/FA_3/HA0_S ),
        .JMP(JMP),
        .MUX_A_REG_VAL({MUX_A_REG_VAL[5:4],MUX_A_REG_VAL[2:0]}),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[6:0]),
        .NEXT_IA_OBUF(NEXT_IA_OBUF[0]),
        .\NEXT_IA_TRI[0] (\NEXT_IA_TRI[0] ),
        .\NEXT_IA_TRI[1] (\NEXT_IA_TRI[1] ),
        .\NEXT_IA_TRI[2] (\NEXT_IA_TRI[2] ),
        .\NEXT_IA_TRI[3] (\NEXT_IA_TRI[3] ),
        .Q_reg_0(CURR_IA_OBUF[2]),
        .Q_reg_1(Q_reg[2]),
        .Q_reg_10(Q_reg_0[2]),
        .Q_reg_11(D_Flip_Flop_2_n_11),
        .Q_reg_12(D_Flip_Flop_2_n_20),
        .Q_reg_13(D_Flip_Flop_2_n_21),
        .Q_reg_14(D_Flip_Flop_2_n_22),
        .Q_reg_15(Q_reg_6),
        .Q_reg_16(Q_reg_7),
        .Q_reg_17(Q_reg_8),
        .Q_reg_18(Q_reg_9),
        .Q_reg_19(Q_reg_10),
        .Q_reg_2(Q_reg[3]),
        .Q_reg_20(Q_reg_11),
        .Q_reg_21(Q_reg_12),
        .Q_reg_22(Q_reg_13),
        .Q_reg_23(Q_reg_14),
        .Q_reg_24(Q_reg_15),
        .Q_reg_25(Q_reg_16),
        .Q_reg_26(Q_reg_17),
        .Q_reg_27(Q_reg_18),
        .Q_reg_28(Q_reg_19),
        .Q_reg_29(Q_reg_20),
        .Q_reg_3(Q_reg[0]),
        .Q_reg_30(Q_reg_21),
        .Q_reg_31(D_Flip_Flop_2_n_43),
        .Q_reg_32(D_Flip_Flop_3_n_21),
        .Q_reg_33(CURR_IA_OBUF[3]),
        .Q_reg_34(CURR_IA_OBUF[1]),
        .Q_reg_35(CURR_IA_OBUF[0]),
        .Q_reg_36(D_Flip_Flop_3_n_11),
        .Q_reg_37(S[0]),
        .Q_reg_4(Q_reg[1]),
        .Q_reg_5(Q_reg[4]),
        .Q_reg_6(Q_reg_0[3]),
        .Q_reg_7(Q_reg_0[0]),
        .Q_reg_8(Q_reg_0[4]),
        .Q_reg_9(Q_reg_0[1]),
        .data(data));
  D_Flip_Flop_64 D_Flip_Flop_3
       (.ASU_RES(ASU_RES),
        .CLK_IBUF(CLK_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .HA0_S(HA0_S),
        .HA0_S_0(\Add_Sub_0/FA_3/HA0_S ),
        .HA0_S_5(HA0_S_5),
        .HA0_S_6(HA0_S_6),
        .HA0_S_7(HA0_S_7),
        .JMP(JMP),
        .MUX_A_REG_VAL(MUX_A_REG_VAL[6:2]),
        .MUX_B_REG_VAL({MUX_B_REG_VAL[7],MUX_B_REG_VAL[5:2]}),
        .NEXT_IA_OBUF(NEXT_IA_OBUF[2]),
        .Q_reg_0(CURR_IA_OBUF[3]),
        .Q_reg_1(Q_reg_1),
        .Q_reg_10(CURR_IA_OBUF[1]),
        .Q_reg_11(S[2]),
        .Q_reg_12(D_Flip_Flop_2_n_11),
        .Q_reg_13(data),
        .Q_reg_14(D_Flip_Flop_1_n_1),
        .Q_reg_15(D_Flip_Flop_2_n_21),
        .Q_reg_2(Q_reg_2),
        .Q_reg_3(Q_reg_3),
        .Q_reg_4(Q_reg_4),
        .Q_reg_5(Q_reg_5),
        .Q_reg_6(D_Flip_Flop_3_n_21),
        .Q_reg_7(D_Flip_Flop_1_n_3),
        .Q_reg_8(CURR_IA_OBUF[2]),
        .Q_reg_9(CURR_IA_OBUF[0]),
        .REG_BANK_INPUT(REG_BANK_INPUT),
        .Sub(Sub),
        .ZERO(D_Flip_Flop_3_n_11));
endmodule

module Reg
   (R1_OBUF,
    CLR_IBUF,
    Q_reg,
    Clk_With_Enabled,
    REG_BANK_INPUT);
  output [7:0]R1_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg;
  input Clk_With_Enabled;
  input [3:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire [3:0]Q_reg;
  wire [7:0]R1_OBUF;
  wire [3:0]REG_BANK_INPUT;

  D_Flip_Flop_53 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Q_reg_0(Q_reg[0]),
        .R1_OBUF(R1_OBUF[0]));
  D_Flip_Flop_54 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Q_reg_0(Q_reg[1]),
        .R1_OBUF(R1_OBUF[1]));
  D_Flip_Flop_55 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Q_reg_0(Q_reg[2]),
        .R1_OBUF(R1_OBUF[2]));
  D_Flip_Flop_56 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Q_reg_0(Q_reg[3]),
        .R1_OBUF(R1_OBUF[3]));
  D_Flip_Flop_57 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .R1_OBUF(R1_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_58 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .R1_OBUF(R1_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]));
  D_Flip_Flop_59 D_Flip_Flop_6
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .R1_OBUF(R1_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[2]));
  D_Flip_Flop_60 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .R1_OBUF(R1_OBUF[7]),
        .REG_BANK_INPUT(REG_BANK_INPUT[3]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_0
   (R2_OBUF,
    Q_reg,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    CLR_IBUF,
    Q_reg_7,
    Clk_With_Enabled_0,
    REG_BANK_INPUT,
    Q_reg_8,
    R1_OBUF);
  output [7:0]R2_OBUF;
  output Q_reg;
  output Q_reg_0;
  output Q_reg_1;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  input CLR_IBUF;
  input [3:0]Q_reg_7;
  input Clk_With_Enabled_0;
  input [3:0]REG_BANK_INPUT;
  input [1:0]Q_reg_8;
  input [7:0]R1_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_0;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire [3:0]Q_reg_7;
  wire [1:0]Q_reg_8;
  wire [7:0]R1_OBUF;
  wire [7:0]R2_OBUF;
  wire [3:0]REG_BANK_INPUT;

  D_Flip_Flop_45 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg),
        .Q_reg_1(Q_reg_7[0]),
        .Q_reg_2(Q_reg_8),
        .R1_OBUF(R1_OBUF[0]),
        .R2_OBUF(R2_OBUF[0]));
  D_Flip_Flop_46 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_0),
        .Q_reg_1(Q_reg_7[1]),
        .Q_reg_2(Q_reg_8),
        .R1_OBUF(R1_OBUF[1]),
        .R2_OBUF(R2_OBUF[1]));
  D_Flip_Flop_47 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_1),
        .Q_reg_1(Q_reg_7[2]),
        .Q_reg_2(Q_reg_8),
        .R1_OBUF(R1_OBUF[2]),
        .R2_OBUF(R2_OBUF[2]));
  D_Flip_Flop_48 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_2),
        .Q_reg_1(Q_reg_7[3]),
        .Q_reg_2(Q_reg_8),
        .R1_OBUF(R1_OBUF[3]),
        .R2_OBUF(R2_OBUF[3]));
  D_Flip_Flop_49 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_3),
        .Q_reg_1(Q_reg_8),
        .R1_OBUF(R1_OBUF[4]),
        .R2_OBUF(R2_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_50 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_4),
        .Q_reg_1(Q_reg_8),
        .R1_OBUF(R1_OBUF[5]),
        .R2_OBUF(R2_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]));
  D_Flip_Flop_51 D_Flip_Flop_6
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_5),
        .Q_reg_1(Q_reg_8),
        .R1_OBUF(R1_OBUF[6]),
        .R2_OBUF(R2_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[2]));
  D_Flip_Flop_52 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg_0(Q_reg_6),
        .Q_reg_1(Q_reg_8),
        .R1_OBUF(R1_OBUF[7]),
        .R2_OBUF(R2_OBUF[7]),
        .REG_BANK_INPUT(REG_BANK_INPUT[3]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_1
   (R3_OBUF,
    Q_reg,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    CLR_IBUF,
    Q_reg_7,
    Clk_With_Enabled_1,
    REG_BANK_INPUT,
    Q_reg_8,
    R2_OBUF);
  output [7:0]R3_OBUF;
  output Q_reg;
  output Q_reg_0;
  output Q_reg_1;
  output Q_reg_2;
  output Q_reg_3;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  input CLR_IBUF;
  input [3:0]Q_reg_7;
  input Clk_With_Enabled_1;
  input [3:0]REG_BANK_INPUT;
  input [1:0]Q_reg_8;
  input [7:0]R2_OBUF;

  wire CLR_IBUF;
  wire Clk_With_Enabled_1;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire [3:0]Q_reg_7;
  wire [1:0]Q_reg_8;
  wire [7:0]R2_OBUF;
  wire [7:0]R3_OBUF;
  wire [3:0]REG_BANK_INPUT;

  D_Flip_Flop_37 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg),
        .Q_reg_1(Q_reg_7[0]),
        .Q_reg_2(Q_reg_8),
        .R2_OBUF(R2_OBUF[0]),
        .R3_OBUF(R3_OBUF[0]));
  D_Flip_Flop_38 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_0),
        .Q_reg_1(Q_reg_7[1]),
        .Q_reg_2(Q_reg_8),
        .R2_OBUF(R2_OBUF[1]),
        .R3_OBUF(R3_OBUF[1]));
  D_Flip_Flop_39 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_1),
        .Q_reg_1(Q_reg_7[2]),
        .Q_reg_2(Q_reg_8),
        .R2_OBUF(R2_OBUF[2]),
        .R3_OBUF(R3_OBUF[2]));
  D_Flip_Flop_40 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_2),
        .Q_reg_1(Q_reg_7[3]),
        .Q_reg_2(Q_reg_8),
        .R2_OBUF(R2_OBUF[3]),
        .R3_OBUF(R3_OBUF[3]));
  D_Flip_Flop_41 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_3),
        .Q_reg_1(Q_reg_8),
        .R2_OBUF(R2_OBUF[4]),
        .R3_OBUF(R3_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_42 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_4),
        .Q_reg_1(Q_reg_8),
        .R2_OBUF(R2_OBUF[5]),
        .R3_OBUF(R3_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]));
  D_Flip_Flop_43 D_Flip_Flop_6
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_5),
        .Q_reg_1(Q_reg_8),
        .R2_OBUF(R2_OBUF[6]),
        .R3_OBUF(R3_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[2]));
  D_Flip_Flop_44 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg_0(Q_reg_6),
        .Q_reg_1(Q_reg_8),
        .R2_OBUF(R2_OBUF[7]),
        .R3_OBUF(R3_OBUF[7]),
        .REG_BANK_INPUT(REG_BANK_INPUT[3]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_2
   (R4_OBUF,
    CLR_IBUF,
    Q_reg,
    Clk_With_Enabled_2,
    REG_BANK_INPUT);
  output [7:0]R4_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg;
  input Clk_With_Enabled_2;
  input [3:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire Clk_With_Enabled_2;
  wire [3:0]Q_reg;
  wire [7:0]R4_OBUF;
  wire [3:0]REG_BANK_INPUT;

  D_Flip_Flop_29 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Q_reg_0(Q_reg[0]),
        .R4_OBUF(R4_OBUF[0]));
  D_Flip_Flop_30 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Q_reg_0(Q_reg[1]),
        .R4_OBUF(R4_OBUF[1]));
  D_Flip_Flop_31 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Q_reg_0(Q_reg[2]),
        .R4_OBUF(R4_OBUF[2]));
  D_Flip_Flop_32 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Q_reg_0(Q_reg[3]),
        .R4_OBUF(R4_OBUF[3]));
  D_Flip_Flop_33 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .R4_OBUF(R4_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_34 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .R4_OBUF(R4_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]));
  D_Flip_Flop_35 D_Flip_Flop_6
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .R4_OBUF(R4_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[2]));
  D_Flip_Flop_36 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .R4_OBUF(R4_OBUF[7]),
        .REG_BANK_INPUT(REG_BANK_INPUT[3]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_3
   (R5_OBUF,
    Q_reg,
    OVERFLOW_OBUF,
    Q_reg_0,
    MUX_A_REG_VAL,
    ZERO_OBUF,
    Q_reg_1,
    SIGN_OBUF,
    CLR_IBUF,
    Q_reg_2,
    Clk_With_Enabled_3,
    REG_BANK_INPUT,
    Q_reg_3,
    FA5_C,
    Sub,
    MUX_B_REG_VAL,
    Q_reg_4,
    HA0_S,
    B11_out,
    HA0_S_6,
    B7_out,
    B5_out,
    FA2_C,
    HA0_S_7,
    B9_out,
    FA4_C,
    Q_reg_5,
    Q_reg_6,
    R4_OBUF,
    R3_OBUF,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    Q_reg_22,
    Q_reg_23,
    Q_reg_24);
  output [7:0]R5_OBUF;
  output [1:0]Q_reg;
  output OVERFLOW_OBUF;
  output [6:0]Q_reg_0;
  output [0:0]MUX_A_REG_VAL;
  output ZERO_OBUF;
  output [2:0]Q_reg_1;
  output SIGN_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg_2;
  input Clk_With_Enabled_3;
  input [1:0]REG_BANK_INPUT;
  input Q_reg_3;
  input FA5_C;
  input Sub;
  input [2:0]MUX_B_REG_VAL;
  input Q_reg_4;
  input HA0_S;
  input B11_out;
  input HA0_S_6;
  input B7_out;
  input B5_out;
  input FA2_C;
  input HA0_S_7;
  input B9_out;
  input FA4_C;
  input Q_reg_5;
  input [2:0]Q_reg_6;
  input [7:0]R4_OBUF;
  input [7:0]R3_OBUF;
  input Q_reg_7;
  input Q_reg_8;
  input Q_reg_9;
  input Q_reg_10;
  input Q_reg_11;
  input Q_reg_12;
  input Q_reg_13;
  input Q_reg_14;
  input Q_reg_15;
  input Q_reg_16;
  input Q_reg_17;
  input Q_reg_18;
  input Q_reg_19;
  input Q_reg_20;
  input Q_reg_21;
  input Q_reg_22;
  input Q_reg_23;
  input Q_reg_24;

  wire B11_out;
  wire B5_out;
  wire B7_out;
  wire B9_out;
  wire CLR_IBUF;
  wire Clk_With_Enabled_3;
  wire FA2_C;
  wire FA4_C;
  wire FA5_C;
  wire HA0_S;
  wire HA0_S_6;
  wire HA0_S_7;
  wire [0:0]MUX_A_REG_VAL;
  wire [2:0]MUX_B_REG_VAL;
  wire OVERFLOW_OBUF;
  wire [1:0]Q_reg;
  wire [6:0]Q_reg_0;
  wire [2:0]Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire [3:0]Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_22;
  wire Q_reg_23;
  wire Q_reg_24;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire [2:0]Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [7:0]R3_OBUF;
  wire [7:0]R4_OBUF;
  wire [7:0]R5_OBUF;
  wire [1:0]REG_BANK_INPUT;
  wire SIGN_OBUF;
  wire Sub;
  wire ZERO_OBUF;

  D_Flip_Flop_21 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[1:0]),
        .Q_reg_0(Q_reg_1[1:0]),
        .Q_reg_1(Q_reg_0[0]),
        .Q_reg_2(Q_reg_2[0]),
        .Q_reg_3(Q_reg_0[1]),
        .Q_reg_4(Q_reg_6),
        .Q_reg_5(Q_reg_7),
        .Q_reg_6(Q_reg_17),
        .R3_OBUF(R3_OBUF[0]),
        .R4_OBUF(R4_OBUF[0]),
        .R5_OBUF(R5_OBUF[0]),
        .Sub(Sub));
  D_Flip_Flop_22 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .HA0_S_6(HA0_S_6),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[1:0]),
        .Q_reg_0(Q_reg_1[2]),
        .Q_reg_1(Q_reg_0[1]),
        .Q_reg_2(Q_reg_2[1]),
        .Q_reg_3(Q_reg_0[0]),
        .Q_reg_4(Q_reg_6),
        .Q_reg_5(Q_reg_8),
        .Q_reg_6(Q_reg_18),
        .R3_OBUF(R3_OBUF[1]),
        .R4_OBUF(R4_OBUF[1]),
        .R5_OBUF(R5_OBUF[1]),
        .Sub(Sub));
  D_Flip_Flop_23 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .Q_reg_0(Q_reg_0[2]),
        .Q_reg_1(Q_reg_2[2]),
        .Q_reg_2(Q_reg_6),
        .Q_reg_3(Q_reg_9),
        .Q_reg_4(Q_reg_19),
        .R3_OBUF(R3_OBUF[2]),
        .R4_OBUF(R4_OBUF[2]),
        .R5_OBUF(R5_OBUF[2]));
  D_Flip_Flop_24 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .Q_reg_0(Q_reg_0[3]),
        .Q_reg_1(Q_reg_2[3]),
        .Q_reg_2(Q_reg_6),
        .Q_reg_3(Q_reg_10),
        .Q_reg_4(Q_reg_20),
        .R3_OBUF(R3_OBUF[3]),
        .R4_OBUF(R4_OBUF[3]),
        .R5_OBUF(R5_OBUF[3]));
  D_Flip_Flop_25 D_Flip_Flop_4
       (.B11_out(B11_out),
        .B5_out(B5_out),
        .B7_out(B7_out),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .FA2_C(FA2_C),
        .FA5_C(FA5_C),
        .HA0_S(HA0_S),
        .HA0_S_7(HA0_S_7),
        .Q_reg_0(Q_reg_0[4]),
        .Q_reg_1(Q_reg[0]),
        .Q_reg_2(Q_reg_4),
        .Q_reg_3(MUX_A_REG_VAL),
        .Q_reg_4(Q_reg_0[3]),
        .Q_reg_5(Q_reg_5),
        .Q_reg_6(Q_reg_6),
        .Q_reg_7(Q_reg_11),
        .Q_reg_8(Q_reg_15),
        .Q_reg_9(Q_reg_21),
        .R3_OBUF(R3_OBUF[4]),
        .R4_OBUF(R4_OBUF[4]),
        .R5_OBUF(R5_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]),
        .ZERO_OBUF(ZERO_OBUF));
  D_Flip_Flop_26 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .Q_reg_0(Q_reg_0[5]),
        .Q_reg_1(Q_reg[0]),
        .Q_reg_2(Q_reg_6),
        .Q_reg_3(Q_reg_12),
        .Q_reg_4(Q_reg_22),
        .R3_OBUF(R3_OBUF[5]),
        .R4_OBUF(R4_OBUF[5]),
        .R5_OBUF(R5_OBUF[5]));
  D_Flip_Flop_27 D_Flip_Flop_6
       (.B11_out(B11_out),
        .B9_out(B9_out),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .FA4_C(FA4_C),
        .HA0_S(HA0_S),
        .Q_reg_0(MUX_A_REG_VAL),
        .Q_reg_1(Q_reg[1]),
        .Q_reg_2(Q_reg_0[5]),
        .Q_reg_3(Q_reg_5),
        .Q_reg_4(Q_reg_6),
        .Q_reg_5(Q_reg_13),
        .Q_reg_6(Q_reg_16),
        .Q_reg_7(Q_reg_23),
        .R3_OBUF(R3_OBUF[6]),
        .R4_OBUF(R4_OBUF[6]),
        .R5_OBUF(R5_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]),
        .SIGN_OBUF(SIGN_OBUF));
  D_Flip_Flop_28 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .FA5_C(FA5_C),
        .MUX_A_REG_VAL(MUX_A_REG_VAL),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[2]),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q_reg_0(Q_reg_0[6]),
        .Q_reg_1(Q_reg[1]),
        .Q_reg_2(Q_reg_3),
        .Q_reg_3(Q_reg_6),
        .Q_reg_4(Q_reg_14),
        .Q_reg_5(Q_reg_24),
        .R3_OBUF(R3_OBUF[7]),
        .R4_OBUF(R4_OBUF[7]),
        .R5_OBUF(R5_OBUF[7]),
        .Sub(Sub));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_4
   (R6_OBUF,
    CLR_IBUF,
    Q_reg,
    REG_BANK_INPUT);
  output [7:0]R6_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg;
  input [3:0]REG_BANK_INPUT;

  wire CLR_IBUF;
  wire [3:0]Q_reg;
  wire [7:0]R6_OBUF;
  wire [3:0]REG_BANK_INPUT;

  D_Flip_Flop_13 D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Q_reg_0(Q_reg[0]),
        .R6_OBUF(R6_OBUF[0]));
  D_Flip_Flop_14 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Q_reg_0(Q_reg[1]),
        .R6_OBUF(R6_OBUF[1]));
  D_Flip_Flop_15 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Q_reg_0(Q_reg[2]),
        .R6_OBUF(R6_OBUF[2]));
  D_Flip_Flop_16 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Q_reg_0(Q_reg[3]),
        .R6_OBUF(R6_OBUF[3]));
  D_Flip_Flop_17 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .R6_OBUF(R6_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_18 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .R6_OBUF(R6_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]));
  D_Flip_Flop_19 D_Flip_Flop_6
       (.CLR_IBUF(CLR_IBUF),
        .R6_OBUF(R6_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[2]));
  D_Flip_Flop_20 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .R6_OBUF(R6_OBUF[7]),
        .REG_BANK_INPUT(REG_BANK_INPUT[3]));
endmodule

(* ORIG_REF_NAME = "Reg" *) 
module Reg_5
   (R7_OBUF,
    REG_BANK_INPUT,
    ZERO,
    FA2_C,
    Q_reg,
    MUX_B_REG_VAL,
    Q_reg_0,
    Q_reg_1,
    FA4_C,
    CARRY_OBUF,
    CLR_IBUF,
    Q_reg_2,
    Clk_With_Enabled_4,
    Q_reg_3,
    HA0_S_5,
    Sub,
    Q_reg_4,
    HA0_S_6,
    MUX_A_REG_VAL,
    FA5_C,
    FA0_C,
    Q_reg_5,
    Q_reg_6,
    R5_OBUF,
    R4_OBUF,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    Q_reg_22,
    Q_reg_23,
    Q_reg_24);
  output [7:0]R7_OBUF;
  output [1:0]REG_BANK_INPUT;
  output ZERO;
  output FA2_C;
  output Q_reg;
  output [2:0]MUX_B_REG_VAL;
  output [0:0]Q_reg_0;
  output [3:0]Q_reg_1;
  output FA4_C;
  output CARRY_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg_2;
  input Clk_With_Enabled_4;
  input [1:0]Q_reg_3;
  input HA0_S_5;
  input Sub;
  input [6:0]Q_reg_4;
  input HA0_S_6;
  input [0:0]MUX_A_REG_VAL;
  input FA5_C;
  input FA0_C;
  input Q_reg_5;
  input [2:0]Q_reg_6;
  input [7:0]R5_OBUF;
  input [7:0]R4_OBUF;
  input Q_reg_7;
  input Q_reg_8;
  input Q_reg_9;
  input Q_reg_10;
  input Q_reg_11;
  input Q_reg_12;
  input Q_reg_13;
  input Q_reg_14;
  input Q_reg_15;
  input Q_reg_16;
  input Q_reg_17;
  input Q_reg_18;
  input Q_reg_19;
  input Q_reg_20;
  input Q_reg_21;
  input Q_reg_22;
  input Q_reg_23;
  input Q_reg_24;

  wire \Add_Sub_0/FA1_C ;
  wire CARRY_OBUF;
  wire CLR_IBUF;
  wire Clk_With_Enabled_4;
  wire FA0_C;
  wire FA2_C;
  wire FA4_C;
  wire FA5_C;
  wire HA0_S_5;
  wire HA0_S_6;
  wire [0:0]MUX_A_REG_VAL;
  wire [2:0]MUX_B_REG_VAL;
  wire Q_reg;
  wire [0:0]Q_reg_0;
  wire [3:0]Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire [3:0]Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_22;
  wire Q_reg_23;
  wire Q_reg_24;
  wire [1:0]Q_reg_3;
  wire [6:0]Q_reg_4;
  wire Q_reg_5;
  wire [2:0]Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [7:0]R4_OBUF;
  wire [7:0]R5_OBUF;
  wire [7:0]R7_OBUF;
  wire [1:0]REG_BANK_INPUT;
  wire Sub;
  wire ZERO;

  D_Flip_Flop D_Flip_Flop_0
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA1_C(\Add_Sub_0/FA1_C ),
        .HA0_S_5(HA0_S_5),
        .HA0_S_6(HA0_S_6),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[0]),
        .Q_reg_0(Q_reg_2[0]),
        .Q_reg_1(FA2_C),
        .Q_reg_2(Q_reg),
        .Q_reg_3({Q_reg_4[3],Q_reg_4[1:0]}),
        .Q_reg_4(MUX_B_REG_VAL[1]),
        .Q_reg_5(Q_reg_6),
        .Q_reg_6(Q_reg_7),
        .Q_reg_7(Q_reg_17),
        .R4_OBUF(R4_OBUF[0]),
        .R5_OBUF(R5_OBUF[0]),
        .R7_OBUF(R7_OBUF[0]),
        .Sub(Sub),
        .ZERO(ZERO));
  D_Flip_Flop_6 D_Flip_Flop_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA0_C(FA0_C),
        .FA4_C(FA4_C),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[1]),
        .Q_reg_0(FA2_C),
        .Q_reg_1(Q_reg_2[1]),
        .Q_reg_2(Q_reg),
        .Q_reg_3(Q_reg_4[4:1]),
        .Q_reg_4(Q_reg_1[1:0]),
        .Q_reg_5(Q_reg_6),
        .Q_reg_6(Q_reg_8),
        .Q_reg_7(Q_reg_18),
        .R4_OBUF(R4_OBUF[1]),
        .R5_OBUF(R5_OBUF[1]),
        .R7_OBUF(R7_OBUF[1]),
        .Sub(Sub));
  D_Flip_Flop_7 D_Flip_Flop_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA1_C(\Add_Sub_0/FA1_C ),
        .Q_reg_0(Q_reg_0),
        .Q_reg_1(Q_reg_1[0]),
        .Q_reg_2(Q_reg_2[2]),
        .Q_reg_3(Q_reg_4[3:2]),
        .Q_reg_4(Q_reg),
        .Q_reg_5(Q_reg_6),
        .Q_reg_6(Q_reg_9),
        .Q_reg_7(Q_reg_19),
        .R4_OBUF(R4_OBUF[2]),
        .R5_OBUF(R5_OBUF[2]),
        .R7_OBUF(R7_OBUF[2]),
        .Sub(Sub));
  D_Flip_Flop_8 D_Flip_Flop_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA2_C(FA2_C),
        .Q_reg_0(Q_reg),
        .Q_reg_1(Q_reg_2[3]),
        .Q_reg_2(Q_reg_4[4:3]),
        .Q_reg_3(Q_reg_1[1]),
        .Q_reg_4(Q_reg_5),
        .Q_reg_5(Q_reg_6),
        .Q_reg_6(Q_reg_10),
        .Q_reg_7(Q_reg_15),
        .Q_reg_8(Q_reg_20),
        .R4_OBUF(R4_OBUF[3]),
        .R5_OBUF(R5_OBUF[3]),
        .R7_OBUF(R7_OBUF[3]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]),
        .Sub(Sub));
  D_Flip_Flop_9 D_Flip_Flop_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .Q_reg_0(Q_reg_1[1]),
        .Q_reg_1(Q_reg_6),
        .Q_reg_2(Q_reg_11),
        .Q_reg_3(Q_reg_21),
        .R4_OBUF(R4_OBUF[4]),
        .R5_OBUF(R5_OBUF[4]),
        .R7_OBUF(R7_OBUF[4]),
        .REG_BANK_INPUT(REG_BANK_INPUT[0]));
  D_Flip_Flop_10 D_Flip_Flop_5
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA4_C(FA4_C),
        .MUX_A_REG_VAL(MUX_A_REG_VAL),
        .Q_reg_0(Q_reg_1[2]),
        .Q_reg_1(Q_reg_3[0]),
        .Q_reg_2(Q_reg_4[5]),
        .Q_reg_3(Q_reg_1[3]),
        .Q_reg_4(Q_reg_5),
        .Q_reg_5(Q_reg_6),
        .Q_reg_6(Q_reg_12),
        .Q_reg_7(Q_reg_16),
        .Q_reg_8(Q_reg_22),
        .R4_OBUF(R4_OBUF[5]),
        .R5_OBUF(R5_OBUF[5]),
        .R7_OBUF(R7_OBUF[5]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]),
        .Sub(Sub));
  D_Flip_Flop_11 D_Flip_Flop_6
       (.CARRY_OBUF(CARRY_OBUF),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA5_C(FA5_C),
        .MUX_A_REG_VAL(MUX_A_REG_VAL),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[2]),
        .Q_reg_0(Q_reg_1[3]),
        .Q_reg_1(Q_reg_4[6]),
        .Q_reg_2(Q_reg_6),
        .Q_reg_3(Q_reg_13),
        .Q_reg_4(Q_reg_23),
        .R4_OBUF(R4_OBUF[6]),
        .R5_OBUF(R5_OBUF[6]),
        .R7_OBUF(R7_OBUF[6]),
        .REG_BANK_INPUT(REG_BANK_INPUT[1]),
        .Sub(Sub));
  D_Flip_Flop_12 D_Flip_Flop_7
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .MUX_B_REG_VAL(MUX_B_REG_VAL[2]),
        .Q_reg_0(Q_reg_3[1]),
        .Q_reg_1(Q_reg_6),
        .Q_reg_2(Q_reg_14),
        .Q_reg_3(Q_reg_24),
        .R4_OBUF(R4_OBUF[7]),
        .R5_OBUF(R5_OBUF[7]),
        .R7_OBUF(R7_OBUF[7]));
endmodule

module Reg_Bank
   (R1_OBUF,
    R2_OBUF,
    R3_OBUF,
    R4_OBUF,
    R5_OBUF,
    R6_OBUF,
    R7_OBUF,
    OVERFLOW_OBUF,
    Q_reg,
    MUX_B_REG_VAL,
    ZERO_OBUF,
    Q_reg_0,
    CARRY_OBUF,
    SIGN_OBUF,
    CLR_IBUF,
    Q_reg_1,
    Clk_With_Enabled,
    Clk_With_Enabled_0,
    Clk_With_Enabled_1,
    Clk_With_Enabled_2,
    Clk_With_Enabled_3,
    Clk_With_Enabled_4,
    FA5_C,
    Sub,
    HA0_S,
    B11_out,
    HA0_S_5,
    HA0_S_6,
    B7_out,
    B5_out,
    HA0_S_7,
    B9_out,
    FA0_C,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13,
    Q_reg_14,
    Q_reg_15,
    Q_reg_16,
    Q_reg_17,
    Q_reg_18,
    Q_reg_19,
    Q_reg_20,
    Q_reg_21,
    Q_reg_22,
    Q_reg_23,
    Q_reg_24);
  output [7:0]R1_OBUF;
  output [7:0]R2_OBUF;
  output [7:0]R3_OBUF;
  output [7:0]R4_OBUF;
  output [7:0]R5_OBUF;
  output [7:0]R6_OBUF;
  output [7:0]R7_OBUF;
  output OVERFLOW_OBUF;
  output [6:0]Q_reg;
  output [7:0]MUX_B_REG_VAL;
  output ZERO_OBUF;
  output [3:0]Q_reg_0;
  output CARRY_OBUF;
  output SIGN_OBUF;
  input CLR_IBUF;
  input [3:0]Q_reg_1;
  input Clk_With_Enabled;
  input Clk_With_Enabled_0;
  input Clk_With_Enabled_1;
  input Clk_With_Enabled_2;
  input Clk_With_Enabled_3;
  input Clk_With_Enabled_4;
  input FA5_C;
  input Sub;
  input HA0_S;
  input B11_out;
  input HA0_S_5;
  input HA0_S_6;
  input B7_out;
  input B5_out;
  input HA0_S_7;
  input B9_out;
  input FA0_C;
  input Q_reg_2;
  input [4:0]Q_reg_3;
  input [4:0]Q_reg_4;
  input Q_reg_5;
  input Q_reg_6;
  input Q_reg_7;
  input Q_reg_8;
  input Q_reg_9;
  input Q_reg_10;
  input Q_reg_11;
  input Q_reg_12;
  input Q_reg_13;
  input Q_reg_14;
  input Q_reg_15;
  input Q_reg_16;
  input Q_reg_17;
  input Q_reg_18;
  input Q_reg_19;
  input Q_reg_20;
  input Q_reg_21;
  input Q_reg_22;
  input Q_reg_23;
  input Q_reg_24;

  wire \Add_Sub_0/FA2_C ;
  wire \Add_Sub_0/FA4_C ;
  wire B11_out;
  wire B5_out;
  wire B7_out;
  wire B9_out;
  wire CARRY_OBUF;
  wire CLR_IBUF;
  wire Clk_With_Enabled;
  wire Clk_With_Enabled_0;
  wire Clk_With_Enabled_1;
  wire Clk_With_Enabled_2;
  wire Clk_With_Enabled_3;
  wire Clk_With_Enabled_4;
  wire FA0_C;
  wire FA5_C;
  wire HA0_S;
  wire HA0_S_5;
  wire HA0_S_6;
  wire HA0_S_7;
  wire [6:6]MUX_A_REG_VAL;
  wire [7:0]MUX_B_REG_VAL;
  wire OVERFLOW_OBUF;
  wire [6:0]Q_reg;
  wire [3:0]Q_reg_0;
  wire [3:0]Q_reg_1;
  wire Q_reg_10;
  wire Q_reg_11;
  wire Q_reg_12;
  wire Q_reg_13;
  wire Q_reg_14;
  wire Q_reg_15;
  wire Q_reg_16;
  wire Q_reg_17;
  wire Q_reg_18;
  wire Q_reg_19;
  wire Q_reg_2;
  wire Q_reg_20;
  wire Q_reg_21;
  wire Q_reg_22;
  wire Q_reg_23;
  wire Q_reg_24;
  wire [4:0]Q_reg_3;
  wire [4:0]Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [7:0]R1_OBUF;
  wire [7:0]R2_OBUF;
  wire [7:0]R3_OBUF;
  wire [7:0]R4_OBUF;
  wire [7:0]R5_OBUF;
  wire [7:0]R6_OBUF;
  wire [7:0]R7_OBUF;
  wire [7:4]REG_BANK_INPUT;
  wire Reg_2_n_10;
  wire Reg_2_n_11;
  wire Reg_2_n_12;
  wire Reg_2_n_13;
  wire Reg_2_n_14;
  wire Reg_2_n_15;
  wire Reg_2_n_8;
  wire Reg_2_n_9;
  wire Reg_3_n_10;
  wire Reg_3_n_11;
  wire Reg_3_n_12;
  wire Reg_3_n_13;
  wire Reg_3_n_14;
  wire Reg_3_n_15;
  wire Reg_3_n_8;
  wire Reg_3_n_9;
  wire Reg_7_n_10;
  wire SIGN_OBUF;
  wire Sub;
  wire ZERO_OBUF;

  Reg Reg_1
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled(Clk_With_Enabled),
        .Q_reg(Q_reg_1),
        .R1_OBUF(R1_OBUF),
        .REG_BANK_INPUT(REG_BANK_INPUT));
  Reg_0 Reg_2
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_0(Clk_With_Enabled_0),
        .Q_reg(Reg_2_n_8),
        .Q_reg_0(Reg_2_n_9),
        .Q_reg_1(Reg_2_n_10),
        .Q_reg_2(Reg_2_n_11),
        .Q_reg_3(Reg_2_n_12),
        .Q_reg_4(Reg_2_n_13),
        .Q_reg_5(Reg_2_n_14),
        .Q_reg_6(Reg_2_n_15),
        .Q_reg_7(Q_reg_1),
        .Q_reg_8(Q_reg_3[1:0]),
        .R1_OBUF(R1_OBUF),
        .R2_OBUF(R2_OBUF),
        .REG_BANK_INPUT(REG_BANK_INPUT));
  Reg_1 Reg_3
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_1(Clk_With_Enabled_1),
        .Q_reg(Reg_3_n_8),
        .Q_reg_0(Reg_3_n_9),
        .Q_reg_1(Reg_3_n_10),
        .Q_reg_2(Reg_3_n_11),
        .Q_reg_3(Reg_3_n_12),
        .Q_reg_4(Reg_3_n_13),
        .Q_reg_5(Reg_3_n_14),
        .Q_reg_6(Reg_3_n_15),
        .Q_reg_7(Q_reg_1),
        .Q_reg_8(Q_reg_4[1:0]),
        .R2_OBUF(R2_OBUF),
        .R3_OBUF(R3_OBUF),
        .REG_BANK_INPUT(REG_BANK_INPUT));
  Reg_2 Reg_4
       (.CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_2(Clk_With_Enabled_2),
        .Q_reg(Q_reg_1),
        .R4_OBUF(R4_OBUF),
        .REG_BANK_INPUT(REG_BANK_INPUT));
  Reg_3 Reg_5
       (.B11_out(B11_out),
        .B5_out(B5_out),
        .B7_out(B7_out),
        .B9_out(B9_out),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_3(Clk_With_Enabled_3),
        .FA2_C(\Add_Sub_0/FA2_C ),
        .FA4_C(\Add_Sub_0/FA4_C ),
        .FA5_C(FA5_C),
        .HA0_S(HA0_S),
        .HA0_S_6(HA0_S_6),
        .HA0_S_7(HA0_S_7),
        .MUX_A_REG_VAL(MUX_A_REG_VAL),
        .MUX_B_REG_VAL({MUX_B_REG_VAL[7],MUX_B_REG_VAL[1:0]}),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q_reg({REG_BANK_INPUT[7],REG_BANK_INPUT[5]}),
        .Q_reg_0(Q_reg),
        .Q_reg_1(Q_reg_0[2:0]),
        .Q_reg_10(Reg_2_n_11),
        .Q_reg_11(Reg_2_n_12),
        .Q_reg_12(Reg_2_n_13),
        .Q_reg_13(Reg_2_n_14),
        .Q_reg_14(Reg_2_n_15),
        .Q_reg_15(Q_reg_6),
        .Q_reg_16(Q_reg_8),
        .Q_reg_17(Q_reg_9),
        .Q_reg_18(Q_reg_10),
        .Q_reg_19(Q_reg_11),
        .Q_reg_2(Q_reg_1),
        .Q_reg_20(Q_reg_12),
        .Q_reg_21(Q_reg_13),
        .Q_reg_22(Q_reg_14),
        .Q_reg_23(Q_reg_15),
        .Q_reg_24(Q_reg_16),
        .Q_reg_3(MUX_B_REG_VAL[6]),
        .Q_reg_4(Reg_7_n_10),
        .Q_reg_5(Q_reg_2),
        .Q_reg_6(Q_reg_3[4:2]),
        .Q_reg_7(Reg_2_n_8),
        .Q_reg_8(Reg_2_n_9),
        .Q_reg_9(Reg_2_n_10),
        .R3_OBUF(R3_OBUF),
        .R4_OBUF(R4_OBUF),
        .R5_OBUF(R5_OBUF),
        .REG_BANK_INPUT({REG_BANK_INPUT[6],REG_BANK_INPUT[4]}),
        .SIGN_OBUF(SIGN_OBUF),
        .Sub(Sub),
        .ZERO_OBUF(ZERO_OBUF));
  Reg_4 Reg_6
       (.CLR_IBUF(CLR_IBUF),
        .Q_reg(Q_reg_1),
        .R6_OBUF(R6_OBUF),
        .REG_BANK_INPUT(REG_BANK_INPUT));
  Reg_5 Reg_7
       (.CARRY_OBUF(CARRY_OBUF),
        .CLR_IBUF(CLR_IBUF),
        .Clk_With_Enabled_4(Clk_With_Enabled_4),
        .FA0_C(FA0_C),
        .FA2_C(\Add_Sub_0/FA2_C ),
        .FA4_C(\Add_Sub_0/FA4_C ),
        .FA5_C(FA5_C),
        .HA0_S_5(HA0_S_5),
        .HA0_S_6(HA0_S_6),
        .MUX_A_REG_VAL(MUX_A_REG_VAL),
        .MUX_B_REG_VAL({MUX_B_REG_VAL[7],MUX_B_REG_VAL[1:0]}),
        .Q_reg(MUX_B_REG_VAL[3]),
        .Q_reg_0(Q_reg_0[3]),
        .Q_reg_1({MUX_B_REG_VAL[6:4],MUX_B_REG_VAL[2]}),
        .Q_reg_10(Reg_3_n_11),
        .Q_reg_11(Reg_3_n_12),
        .Q_reg_12(Reg_3_n_13),
        .Q_reg_13(Reg_3_n_14),
        .Q_reg_14(Reg_3_n_15),
        .Q_reg_15(Q_reg_5),
        .Q_reg_16(Q_reg_7),
        .Q_reg_17(Q_reg_17),
        .Q_reg_18(Q_reg_18),
        .Q_reg_19(Q_reg_19),
        .Q_reg_2(Q_reg_1),
        .Q_reg_20(Q_reg_20),
        .Q_reg_21(Q_reg_21),
        .Q_reg_22(Q_reg_22),
        .Q_reg_23(Q_reg_23),
        .Q_reg_24(Q_reg_24),
        .Q_reg_3({REG_BANK_INPUT[7],REG_BANK_INPUT[5]}),
        .Q_reg_4(Q_reg),
        .Q_reg_5(Q_reg_2),
        .Q_reg_6(Q_reg_4[4:2]),
        .Q_reg_7(Reg_3_n_8),
        .Q_reg_8(Reg_3_n_9),
        .Q_reg_9(Reg_3_n_10),
        .R4_OBUF(R4_OBUF),
        .R5_OBUF(R5_OBUF),
        .R7_OBUF(R7_OBUF),
        .REG_BANK_INPUT({REG_BANK_INPUT[6],REG_BANK_INPUT[4]}),
        .Sub(Sub),
        .ZERO(Reg_7_n_10));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
