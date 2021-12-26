//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Dec 23 19:16:42 2021
//Host        : Chiro running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A,
    B,
    P,
    clk,
    rst);
  input [31:0]A;
  input [31:0]B;
  output [63:0]P;
  input clk;
  input rst;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]P;
  wire clk;
  wire rst;

  design_1 design_1_i
       (.A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst(rst));
endmodule
