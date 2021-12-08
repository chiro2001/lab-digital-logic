// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Dec  8 16:32:12 2021
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
    led,
    state_currnet,
    state_next,
    p,
    found);
  input clk;
  input rst;
  input button;
  input [7:0]switch;
  output led;
  output [12:0]state_currnet;
  output [12:0]state_next;
  output [3:0]p;
  output found;

  wire button;
  wire button_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire found;
  wire led;
  wire [3:0]p;
  wire \p[0]_i_1_n_0 ;
  wire \p[1]_i_1_n_0 ;
  wire \p[2]_i_1_n_0 ;
  wire \p[3]_i_1_n_0 ;
  wire \p[3]_i_2_n_0 ;
  wire [3:0]p_OBUF;
  wire rst;
  wire rst_IBUF;
  wire started;
  wire started_i_1_n_0;
  wire [12:0]state_currnet;
  wire [12:0]state_next;
  wire stopped;
  wire stopped_i_1_n_0;
  wire switch_end;

  IBUF button_IBUF_inst
       (.I(button),
        .O(button_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF found_OBUF_inst
       (.I(1'b0),
        .O(found));
  OBUF led_OBUF_inst
       (.I(1'b0),
        .O(led));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005545)) 
    \p[0]_i_1 
       (.I0(p_OBUF[0]),
        .I1(p_OBUF[2]),
        .I2(p_OBUF[3]),
        .I3(p_OBUF[1]),
        .I4(button_IBUF),
        .O(\p[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \p[1]_i_1 
       (.I0(p_OBUF[0]),
        .I1(p_OBUF[1]),
        .I2(button_IBUF),
        .O(\p[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \p[2]_i_1 
       (.I0(p_OBUF[0]),
        .I1(p_OBUF[2]),
        .I2(p_OBUF[1]),
        .I3(button_IBUF),
        .O(\p[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \p[3]_i_1 
       (.I0(button_IBUF),
        .I1(started),
        .I2(stopped),
        .I3(switch_end),
        .O(\p[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000078E0)) 
    \p[3]_i_2 
       (.I0(p_OBUF[0]),
        .I1(p_OBUF[2]),
        .I2(p_OBUF[3]),
        .I3(p_OBUF[1]),
        .I4(button_IBUF),
        .O(\p[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \p[3]_i_3 
       (.I0(p_OBUF[0]),
        .I1(p_OBUF[2]),
        .I2(p_OBUF[3]),
        .I3(p_OBUF[1]),
        .O(switch_end));
  OBUF \p_OBUF[0]_inst 
       (.I(p_OBUF[0]),
        .O(p[0]));
  OBUF \p_OBUF[1]_inst 
       (.I(p_OBUF[1]),
        .O(p[1]));
  OBUF \p_OBUF[2]_inst 
       (.I(p_OBUF[2]),
        .O(p[2]));
  OBUF \p_OBUF[3]_inst 
       (.I(p_OBUF[3]),
        .O(p[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[0]_i_1_n_0 ),
        .Q(p_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[1]_i_1_n_0 ),
        .Q(p_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[2]_i_1_n_0 ),
        .Q(p_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\p[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\p[3]_i_2_n_0 ),
        .Q(p_OBUF[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT3 #(
    .INIT(8'h74)) 
    started_i_1
       (.I0(rst_IBUF),
        .I1(button_IBUF),
        .I2(started),
        .O(started_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    started_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(started_i_1_n_0),
        .Q(started));
  OBUF \state_currnet_OBUF[0]_inst 
       (.I(1'b1),
        .O(state_currnet[0]));
  OBUF \state_currnet_OBUF[10]_inst 
       (.I(1'b0),
        .O(state_currnet[10]));
  OBUF \state_currnet_OBUF[11]_inst 
       (.I(1'b0),
        .O(state_currnet[11]));
  OBUF \state_currnet_OBUF[12]_inst 
       (.I(1'b0),
        .O(state_currnet[12]));
  OBUF \state_currnet_OBUF[1]_inst 
       (.I(1'b0),
        .O(state_currnet[1]));
  OBUF \state_currnet_OBUF[2]_inst 
       (.I(1'b1),
        .O(state_currnet[2]));
  OBUF \state_currnet_OBUF[3]_inst 
       (.I(1'b0),
        .O(state_currnet[3]));
  OBUF \state_currnet_OBUF[4]_inst 
       (.I(1'b0),
        .O(state_currnet[4]));
  OBUF \state_currnet_OBUF[5]_inst 
       (.I(1'b0),
        .O(state_currnet[5]));
  OBUF \state_currnet_OBUF[6]_inst 
       (.I(1'b0),
        .O(state_currnet[6]));
  OBUF \state_currnet_OBUF[7]_inst 
       (.I(1'b0),
        .O(state_currnet[7]));
  OBUF \state_currnet_OBUF[8]_inst 
       (.I(1'b0),
        .O(state_currnet[8]));
  OBUF \state_currnet_OBUF[9]_inst 
       (.I(1'b0),
        .O(state_currnet[9]));
  OBUF \state_next_OBUF[0]_inst 
       (.I(1'b1),
        .O(state_next[0]));
  OBUF \state_next_OBUF[10]_inst 
       (.I(1'b0),
        .O(state_next[10]));
  OBUF \state_next_OBUF[11]_inst 
       (.I(1'b0),
        .O(state_next[11]));
  OBUF \state_next_OBUF[12]_inst 
       (.I(1'b0),
        .O(state_next[12]));
  OBUF \state_next_OBUF[1]_inst 
       (.I(1'b0),
        .O(state_next[1]));
  OBUF \state_next_OBUF[2]_inst 
       (.I(1'b1),
        .O(state_next[2]));
  OBUF \state_next_OBUF[3]_inst 
       (.I(1'b0),
        .O(state_next[3]));
  OBUF \state_next_OBUF[4]_inst 
       (.I(1'b0),
        .O(state_next[4]));
  OBUF \state_next_OBUF[5]_inst 
       (.I(1'b0),
        .O(state_next[5]));
  OBUF \state_next_OBUF[6]_inst 
       (.I(1'b0),
        .O(state_next[6]));
  OBUF \state_next_OBUF[7]_inst 
       (.I(1'b0),
        .O(state_next[7]));
  OBUF \state_next_OBUF[8]_inst 
       (.I(1'b0),
        .O(state_next[8]));
  OBUF \state_next_OBUF[9]_inst 
       (.I(1'b0),
        .O(state_next[9]));
  LUT6 #(
    .INIT(64'h0000FFFF00000004)) 
    stopped_i_1
       (.I0(p_OBUF[1]),
        .I1(p_OBUF[3]),
        .I2(p_OBUF[2]),
        .I3(p_OBUF[0]),
        .I4(button_IBUF),
        .I5(stopped),
        .O(stopped_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stopped_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(stopped_i_1_n_0),
        .Q(stopped));
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
