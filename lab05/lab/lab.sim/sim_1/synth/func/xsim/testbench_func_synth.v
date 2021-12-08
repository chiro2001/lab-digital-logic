// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Dec  8 17:42:21 2021
// Host        : Chiro running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Programs/lab-digital-logic/lab05/lab/lab.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : sequence_detection
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* S0 = "8'b00000000" *) (* S1 = "8'b00000001" *) (* S2 = "8'b00000010" *) 
(* S3 = "8'b00000011" *) (* S4 = "8'b00000100" *) (* SD = "8'b00000101" *) 
(* NotValidForBitStream *)
module sequence_detection
   (clk,
    rst,
    button,
    switch,
    led);
  input clk;
  input rst;
  input button;
  input [7:0]switch;
  output led;

  wire \FSM_onehot_state_currnet_reg_n_0_[5] ;
  wire \FSM_onehot_state_next_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[0]_i_2_n_0 ;
  wire \FSM_onehot_state_next_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[4]_i_2_n_0 ;
  wire \FSM_onehot_state_next_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_state_next_reg[5]_i_2_n_0 ;
  wire \FSM_onehot_state_next_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_state_next_reg[5]_i_5_n_0 ;
  wire \FSM_onehot_state_next_reg[5]_i_6_n_0 ;
  wire \FSM_onehot_state_next_reg_n_0_[1] ;
  wire button;
  wire button_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire led;
  wire led_OBUF;
  wire led_i_1_n_0;
  wire [3:0]p;
  wire \p[0]_i_1_n_0 ;
  wire \p[1]_i_1_n_0 ;
  wire \p[2]_i_1_n_0 ;
  wire \p[3]_i_1_n_0 ;
  wire \p[3]_i_2_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire started;
  wire [4:0]state_currnet;
  wire [5:0]state_next;
  wire state_next3;
  wire [7:0]switch;
  wire [7:0]switch_IBUF;

  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_currnet_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_next[0]),
        .PRE(rst_IBUF),
        .Q(state_currnet[0]));
  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_currnet_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_state_next_reg_n_0_[1] ),
        .Q(state_currnet[1]));
  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_currnet_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[2]),
        .Q(state_currnet[2]));
  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_currnet_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[3]),
        .Q(state_currnet[3]));
  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_currnet_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[4]),
        .Q(state_currnet[4]));
  (* FSM_ENCODED_STATES = "S2:001000,S1:000100,S3:010000,S4:100000,S0:000010,SD:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_currnet_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[5]),
        .Q(\FSM_onehot_state_currnet_reg_n_0_[5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_next_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[0]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[0]));
  LUT5 #(
    .INIT(32'hFFFFF222)) 
    \FSM_onehot_state_next_reg[0]_i_1 
       (.I0(\FSM_onehot_state_currnet_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_next_reg[4]_i_2_n_0 ),
        .I2(state_currnet[4]),
        .I3(\FSM_onehot_state_next_reg[5]_i_3_n_0 ),
        .I4(\FSM_onehot_state_next_reg[0]_i_2_n_0 ),
        .O(\FSM_onehot_state_next_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFF0FE00FEF0)) 
    \FSM_onehot_state_next_reg[0]_i_2 
       (.I0(state_currnet[2]),
        .I1(state_currnet[3]),
        .I2(state_currnet[0]),
        .I3(\FSM_onehot_state_next_reg[5]_i_3_n_0 ),
        .I4(button_IBUF),
        .I5(state_currnet[1]),
        .O(\FSM_onehot_state_next_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_next_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[1]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(\FSM_onehot_state_next_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFFFFEFCAA00AA00)) 
    \FSM_onehot_state_next_reg[1]_i_1 
       (.I0(button_IBUF),
        .I1(\FSM_onehot_state_currnet_reg_n_0_[5] ),
        .I2(state_currnet[4]),
        .I3(state_currnet[0]),
        .I4(state_currnet[1]),
        .I5(\FSM_onehot_state_next_reg[4]_i_2_n_0 ),
        .O(\FSM_onehot_state_next_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_next_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[2]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[2]));
  LUT5 #(
    .INIT(32'h0F000E00)) 
    \FSM_onehot_state_next_reg[2]_i_1 
       (.I0(state_currnet[2]),
        .I1(state_currnet[1]),
        .I2(\FSM_onehot_state_next_reg[5]_i_3_n_0 ),
        .I3(state_next3),
        .I4(state_currnet[3]),
        .O(\FSM_onehot_state_next_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_next_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[3]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_next_reg[3]_i_1 
       (.I0(state_currnet[2]),
        .I1(\FSM_onehot_state_next_reg[4]_i_2_n_0 ),
        .O(\FSM_onehot_state_next_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_next_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[4]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_next_reg[4]_i_1 
       (.I0(state_currnet[3]),
        .I1(\FSM_onehot_state_next_reg[4]_i_2_n_0 ),
        .O(\FSM_onehot_state_next_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \FSM_onehot_state_next_reg[4]_i_2 
       (.I0(\FSM_onehot_state_next_reg[5]_i_3_n_0 ),
        .I1(\FSM_onehot_state_next_reg[5]_i_5_n_0 ),
        .I2(p[2]),
        .I3(\FSM_onehot_state_next_reg[5]_i_6_n_0 ),
        .O(\FSM_onehot_state_next_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_next_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_state_next_reg[5]_i_1_n_0 ),
        .G(\FSM_onehot_state_next_reg[5]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[5]));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state_next_reg[5]_i_1 
       (.I0(state_currnet[4]),
        .I1(\FSM_onehot_state_next_reg[5]_i_3_n_0 ),
        .I2(state_next3),
        .O(\FSM_onehot_state_next_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_next_reg[5]_i_2 
       (.I0(\FSM_onehot_state_currnet_reg_n_0_[5] ),
        .I1(state_currnet[4]),
        .I2(state_currnet[1]),
        .I3(state_currnet[0]),
        .I4(state_currnet[3]),
        .I5(state_currnet[2]),
        .O(\FSM_onehot_state_next_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    \FSM_onehot_state_next_reg[5]_i_3 
       (.I0(led_OBUF),
        .I1(p[3]),
        .I2(p[2]),
        .I3(p[0]),
        .I4(p[1]),
        .I5(button_IBUF),
        .O(\FSM_onehot_state_next_reg[5]_i_3_n_0 ));
  MUXF7 \FSM_onehot_state_next_reg[5]_i_4 
       (.I0(\FSM_onehot_state_next_reg[5]_i_5_n_0 ),
        .I1(\FSM_onehot_state_next_reg[5]_i_6_n_0 ),
        .O(state_next3),
        .S(p[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_onehot_state_next_reg[5]_i_5 
       (.I0(switch_IBUF[3]),
        .I1(switch_IBUF[2]),
        .I2(p[1]),
        .I3(switch_IBUF[1]),
        .I4(p[0]),
        .I5(switch_IBUF[0]),
        .O(\FSM_onehot_state_next_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_onehot_state_next_reg[5]_i_6 
       (.I0(switch_IBUF[7]),
        .I1(switch_IBUF[6]),
        .I2(p[1]),
        .I3(switch_IBUF[5]),
        .I4(p[0]),
        .I5(switch_IBUF[4]),
        .O(\FSM_onehot_state_next_reg[5]_i_6_n_0 ));
  IBUF button_IBUF_inst
       (.I(button),
        .O(button_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  LUT4 #(
    .INIT(16'h0F08)) 
    led_i_1
       (.I0(\FSM_onehot_state_next_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_currnet_reg_n_0_[5] ),
        .I2(button_IBUF),
        .I3(led_OBUF),
        .O(led_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(led_i_1_n_0),
        .Q(led_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \p[0]_i_1 
       (.I0(button_IBUF),
        .I1(p[0]),
        .O(\p[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \p[1]_i_1 
       (.I0(button_IBUF),
        .I1(p[0]),
        .I2(p[1]),
        .O(\p[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAB)) 
    \p[2]_i_1 
       (.I0(button_IBUF),
        .I1(p[1]),
        .I2(p[0]),
        .I3(p[2]),
        .O(\p[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \p[3]_i_1 
       (.I0(led_OBUF),
        .I1(started),
        .I2(button_IBUF),
        .O(\p[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FE01)) 
    \p[3]_i_2 
       (.I0(p[2]),
        .I1(p[0]),
        .I2(p[1]),
        .I3(p[3]),
        .I4(button_IBUF),
        .O(\p[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[0]_i_1_n_0 ),
        .Q(p[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[1]_i_1_n_0 ),
        .Q(p[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[2]_i_1_n_0 ),
        .Q(p[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[3]_i_2_n_0 ),
        .Q(p[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    started_reg
       (.C(clk_IBUF_BUFG),
        .CE(button_IBUF),
        .CLR(rst_IBUF),
        .D(button_IBUF),
        .Q(started));
  IBUF \switch_IBUF[0]_inst 
       (.I(switch[0]),
        .O(switch_IBUF[0]));
  IBUF \switch_IBUF[1]_inst 
       (.I(switch[1]),
        .O(switch_IBUF[1]));
  IBUF \switch_IBUF[2]_inst 
       (.I(switch[2]),
        .O(switch_IBUF[2]));
  IBUF \switch_IBUF[3]_inst 
       (.I(switch[3]),
        .O(switch_IBUF[3]));
  IBUF \switch_IBUF[4]_inst 
       (.I(switch[4]),
        .O(switch_IBUF[4]));
  IBUF \switch_IBUF[5]_inst 
       (.I(switch[5]),
        .O(switch_IBUF[5]));
  IBUF \switch_IBUF[6]_inst 
       (.I(switch[6]),
        .O(switch_IBUF[6]));
  IBUF \switch_IBUF[7]_inst 
       (.I(switch[7]),
        .O(switch_IBUF[7]));
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
