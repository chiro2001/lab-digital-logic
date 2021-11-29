module NiexieDisplay(
  input        clock,
  input        reset,
  input  [7:0] io_in_values_0,
  input  [7:0] io_in_values_1,
  input  [7:0] io_in_values_2,
  input  [7:0] io_in_values_3,
  input  [7:0] io_in_values_4,
  input  [7:0] io_in_values_5,
  input  [7:0] io_in_values_6,
  input  [7:0] io_in_values_7,
  input        io_in_started,
  output [7:0] io_out_ledCx,
  output [7:0] io_out_ledEn
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] cnt; // @[Niexie.scala 19:20]
  reg [31:0] tim; // @[Niexie.scala 20:20]
  wire  flash = tim == 32'h4; // @[Niexie.scala 42:19]
  wire [7:0] _cnt_T_2 = cnt + 8'h1; // @[Niexie.scala 44:47]
  wire [31:0] _tim_T_1 = tim + 32'h1; // @[Niexie.scala 45:49]
  wire [262:0] _io_out_ledEn_T = 263'h1 << cnt; // @[Niexie.scala 46:48]
  wire [262:0] _io_out_ledEn_T_1 = io_in_started ? _io_out_ledEn_T : 263'h0; // @[Niexie.scala 46:23]
  wire [262:0] _io_out_ledEn_T_2 = ~_io_out_ledEn_T_1; // @[Niexie.scala 46:19]
  wire [7:0] _GEN_1 = 3'h1 == cnt[2:0] ? io_in_values_1 : io_in_values_0; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_2 = 3'h2 == cnt[2:0] ? io_in_values_2 : _GEN_1; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_3 = 3'h3 == cnt[2:0] ? io_in_values_3 : _GEN_2; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_4 = 3'h4 == cnt[2:0] ? io_in_values_4 : _GEN_3; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_5 = 3'h5 == cnt[2:0] ? io_in_values_5 : _GEN_4; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_6 = 3'h6 == cnt[2:0] ? io_in_values_6 : _GEN_5; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _GEN_7 = 3'h7 == cnt[2:0] ? io_in_values_7 : _GEN_6; // @[Mux.scala 80:60 Mux.scala 80:60]
  wire [7:0] _io_out_ledCx_T_5 = 8'h1 == _GEN_7 ? 8'h6 : 8'h3f; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_7 = 8'h2 == _GEN_7 ? 8'h5b : _io_out_ledCx_T_5; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_9 = 8'h3 == _GEN_7 ? 8'h4f : _io_out_ledCx_T_7; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_11 = 8'h4 == _GEN_7 ? 8'h66 : _io_out_ledCx_T_9; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_13 = 8'h5 == _GEN_7 ? 8'h6d : _io_out_ledCx_T_11; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_15 = 8'h6 == _GEN_7 ? 8'h7d : _io_out_ledCx_T_13; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_17 = 8'h7 == _GEN_7 ? 8'h7 : _io_out_ledCx_T_15; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_19 = 8'h8 == _GEN_7 ? 8'h7f : _io_out_ledCx_T_17; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_21 = 8'h9 == _GEN_7 ? 8'h67 : _io_out_ledCx_T_19; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_23 = 8'ha == _GEN_7 ? 8'h77 : _io_out_ledCx_T_21; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_25 = 8'hb == _GEN_7 ? 8'h7c : _io_out_ledCx_T_23; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_27 = 8'hc == _GEN_7 ? 8'h58 : _io_out_ledCx_T_25; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_29 = 8'hd == _GEN_7 ? 8'h5e : _io_out_ledCx_T_27; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_31 = 8'he == _GEN_7 ? 8'h79 : _io_out_ledCx_T_29; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_33 = 8'hf == _GEN_7 ? 8'h71 : _io_out_ledCx_T_31; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_35 = 8'ha == _GEN_7 ? 8'h3f : _io_out_ledCx_T_33; // @[Mux.scala 80:57]
  wire [7:0] _io_out_ledCx_T_36 = io_in_started ? _io_out_ledCx_T_35 : 8'h0; // @[Niexie.scala 47:23]
  assign io_out_ledCx = ~_io_out_ledCx_T_36; // @[Niexie.scala 47:19]
  assign io_out_ledEn = _io_out_ledEn_T_2[7:0]; // @[Niexie.scala 46:16]
  always @(posedge clock) begin
    if (reset) begin // @[Niexie.scala 19:20]
      cnt <= 8'h0; // @[Niexie.scala 19:20]
    end else if (flash) begin // @[Niexie.scala 44:13]
      if (cnt == 8'h7) begin // @[Niexie.scala 44:24]
        cnt <= 8'h0;
      end else begin
        cnt <= _cnt_T_2;
      end
    end
    if (reset) begin // @[Niexie.scala 20:20]
      tim <= 32'h0; // @[Niexie.scala 20:20]
    end else if (io_in_started) begin // @[Niexie.scala 45:13]
      if (flash) begin // @[Niexie.scala 45:32]
        tim <= 32'h0;
      end else begin
        tim <= _tim_T_1;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  tim = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Niexie(
  input        clock,
  input        reset,
  input        io_in_button,
  output [7:0] io_out_ledCx,
  output [7:0] io_out_ledEn
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  niexieDisplay_clock; // @[Niexie.scala 118:29]
  wire  niexieDisplay_reset; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_0; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_1; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_2; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_3; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_4; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_5; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_6; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_in_values_7; // @[Niexie.scala 118:29]
  wire  niexieDisplay_io_in_started; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_out_ledCx; // @[Niexie.scala 118:29]
  wire [7:0] niexieDisplay_io_out_ledEn; // @[Niexie.scala 118:29]
  reg  starting; // @[Niexie.scala 64:25]
  reg  started; // @[Niexie.scala 65:24]
  wire  dismiss = io_in_button | ~started; // @[Niexie.scala 66:30]
  reg [7:0] REG_0; // @[Niexie.scala 93:22]
  reg [7:0] REG_1; // @[Niexie.scala 93:22]
  reg [7:0] REG_2; // @[Niexie.scala 93:22]
  reg [7:0] REG_3; // @[Niexie.scala 93:22]
  reg [7:0] REG_4; // @[Niexie.scala 93:22]
  reg [7:0] REG_5; // @[Niexie.scala 93:22]
  reg [7:0] REG_6; // @[Niexie.scala 93:22]
  reg [7:0] REG_7; // @[Niexie.scala 93:22]
  wire  _GEN_8 = ~starting | starting; // @[Niexie.scala 97:22 Niexie.scala 98:16 Niexie.scala 64:25]
  wire  _GEN_9 = ~starting & started; // @[Niexie.scala 97:22 Niexie.scala 65:24 Niexie.scala 100:15]
  wire  _GEN_11 = io_in_button ? _GEN_9 : started; // @[Niexie.scala 96:23 Niexie.scala 65:24]
  wire  _GEN_13 = starting | _GEN_11; // @[Niexie.scala 107:19 Niexie.scala 108:13]
  NiexieDisplay niexieDisplay ( // @[Niexie.scala 118:29]
    .clock(niexieDisplay_clock),
    .reset(niexieDisplay_reset),
    .io_in_values_0(niexieDisplay_io_in_values_0),
    .io_in_values_1(niexieDisplay_io_in_values_1),
    .io_in_values_2(niexieDisplay_io_in_values_2),
    .io_in_values_3(niexieDisplay_io_in_values_3),
    .io_in_values_4(niexieDisplay_io_in_values_4),
    .io_in_values_5(niexieDisplay_io_in_values_5),
    .io_in_values_6(niexieDisplay_io_in_values_6),
    .io_in_values_7(niexieDisplay_io_in_values_7),
    .io_in_started(niexieDisplay_io_in_started),
    .io_out_ledCx(niexieDisplay_io_out_ledCx),
    .io_out_ledEn(niexieDisplay_io_out_ledEn)
  );
  assign io_out_ledCx = niexieDisplay_io_out_ledCx; // @[Niexie.scala 122:10]
  assign io_out_ledEn = niexieDisplay_io_out_ledEn; // @[Niexie.scala 122:10]
  assign niexieDisplay_clock = clock;
  assign niexieDisplay_reset = reset;
  assign niexieDisplay_io_in_values_0 = dismiss ? 8'ha : REG_0; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_1 = dismiss ? 8'ha : REG_1; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_2 = dismiss ? 8'ha : REG_2; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_3 = dismiss ? 8'ha : REG_3; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_4 = dismiss ? 8'ha : REG_4; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_5 = dismiss ? 8'ha : REG_5; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_6 = dismiss ? 8'ha : REG_6; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_values_7 = dismiss ? 8'ha : REG_7; // @[Niexie.scala 87:18 Niexie.scala 88:12 Niexie.scala 93:12]
  assign niexieDisplay_io_in_started = started; // @[Niexie.scala 121:31]
  always @(posedge clock) begin
    if (reset) begin // @[Niexie.scala 64:25]
      starting <= 1'h0; // @[Niexie.scala 64:25]
    end else if (io_in_button) begin // @[Niexie.scala 96:23]
      starting <= _GEN_8;
    end
    if (reset) begin // @[Niexie.scala 65:24]
      started <= 1'h0; // @[Niexie.scala 65:24]
    end else begin
      started <= _GEN_13;
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_0 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_0 <= REG_7; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_1 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_1 <= REG_0; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_2 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_2 <= REG_1; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_3 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_3 <= REG_2; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_4 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_4 <= REG_3; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_5 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_5 <= REG_4; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_6 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_6 <= REG_5; // @[Niexie.scala 93:12]
      end
    end
    if (reset) begin // @[Niexie.scala 93:22]
      if (dismiss) begin // @[Niexie.scala 87:18]
        REG_7 <= 8'ha; // @[Niexie.scala 88:12]
      end else begin
        REG_7 <= REG_6; // @[Niexie.scala 93:12]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  starting = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  started = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_0 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  REG_3 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  REG_4 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  REG_5 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  REG_6 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  REG_7 = _RAND_9[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
