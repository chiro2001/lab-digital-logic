// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec 23 19:18:39 2021
// Host        : Chiro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_gen_0_0_sim_netlist.v
// Design      : design_1_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
ShELVoY3by+7qAO3mN35jsiKqU5S2USdu6V3rrgbe+qbSxLg4yAePkrixq91V9ujMvpZsIMHBOnI
BUUdQZi5LvoXRzxUCODHS/kxxWXMw9K327ejKDVKbleUzhLDdMTGJHrQ9RIKHdCcUNN6o8U0Fw/i
uI3+e2ZmK/QuYFSs+63+QhWEr3uIr0znNOipBm7Un+aw+99o5X9fQMgb4DsrbaijHMP+8Zd2xrJj
A85JNaDKkBGWpiNaPWw4H/vzV8xRJyda56XzCYsPiZ0j7yVeqPUHmYMVCo3YjWQFjRX5dIv+JYQR
cWYGeoMSLFj0JQn8vRHhJau7uCLe8D8Lp8dEkg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XQ7kKvGH/Tc/S0SnSoCKJEBjFmOYGCv4lVZf9dubpn7/2ou1EnC1aUchSrBgNS0J/HsIJe4/bgW4
yhdTfkUmFcgFshD5osNLmW218qTa20biB4L2FI5wsgpISXJJ3NoQsbLsp3c4JxZryM2kpuTZuaKk
yXPr/nHGcK6mbpggD8K4fYcOyz3QEjRFrFx2wB32NSXdHwcCjkzCFm2ogSzVg7Bu4MDVQIOF3L38
i36QTCVI247B1S2abmY37+9tSUgTvhPmf1jzmWawfA17ot4AexkeOc6JscUVvh52NvegKUdSZFCc
RptQ70rSohxYvcvUiqfFqcOiyvY4cLyveVJR3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26864)
`pragma protect data_block
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
KICrYirRqnrIStVwuidNkX0=
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
