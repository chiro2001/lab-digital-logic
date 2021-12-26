// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec 23 19:18:41 2021
// Host        : Chiro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Programs/lab-digital-logic/lab06/lab_design/lab.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_0_0/design_1_mult_gen_0_0_sim_netlist.v
// Design      : design_1_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 64}" *) output [63:0]P;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [63:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "63" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_mult_gen_0_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "32" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "32" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "63" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_mult_gen_0_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [31:0]A;
  input [31:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [63:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [63:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "63" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_mult_gen_0_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pgr2y3t+lFFfvwTMn95Yuis+e6tbFHN3uiCgLd4/+viyku0hvzktlwO2ZycF/ylW0TRDF3IUJTKb
QEAzSAflRIvFxlyi8Q5N59ldRApW5Oi39zQM97kRLg253KDN4llU5UBCx6MiR2GJH64B8cgW8YIw
VbjfA3O6vtiO6AMDWY9ne5zSNy8oZQeYgWrXC71zG4FrQKLpuhhl62qarLV6xbf2GAP6Xe4fvXlK
DdKiMrYYgyngHwu/oFsAliQcBbht/ZKwl23V1ZrfQUr2MbJhRonrFRf3XA2AXmoHgSDND6fkRV6c
cgKmYBtcebOyjGtMWtj26KQPG8SRMds/X0t0iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4tOaOnzBZXhg2PIOC/s8TbM+HDw11VSH974zCzU5GsBBuDr2yq+qw2FVwc3wW+eZZEP2U6cTiJiG
b0KX3qmyII9zxAG0+XdNw6bEMyWAQruskr7M92hS2B77aDh0fOdi58L8vC04AXxWanzwnMdNSTX0
hJ0XWFK1bN/8pxyb5BVqPriQUBwDfCmZCBbFeEOxOFQOF+/qmWPeubo74JGlGpgS/vjMi9oNRXuE
tfIePcJqgEXtJ3FNDbuMq4eepGLwrHQUI8N2lyHGqnK9EqbfRN6ze7rA5mgawzkZ+LvFLYYL5bTH
lKvkG5WjDqrpMoBYuOHRAuFFOKll+lLPuTs7Vg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26800)
`pragma protect data_block
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
37QHVB4babHB7A==
`pragma protect end_protected
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
