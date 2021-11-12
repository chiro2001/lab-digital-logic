module FlowLights(
  input         clock,
  input         reset,
  input         io_button,
  input  [2:0]  io_ledCount,
  output [15:0] io_led
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] ledReg; // @[flowLights.scala 14:23]
  reg [31:0] clkReg; // @[flowLights.scala 15:23]
  wire [1:0] _ledReg_res_T_5 = {3'h1 < io_ledCount, 1'h0}; // @[flowLights.scala 34:79]
  wire [2:0] _ledReg_res_T_8 = {3'h2 < io_ledCount, 2'h0}; // @[flowLights.scala 34:79]
  wire [3:0] _ledReg_res_T_11 = {3'h3 < io_ledCount, 3'h0}; // @[flowLights.scala 34:79]
  wire [4:0] _ledReg_res_T_14 = {3'h4 < io_ledCount, 4'h0}; // @[flowLights.scala 34:79]
  wire [5:0] _ledReg_res_T_17 = {3'h5 < io_ledCount, 5'h0}; // @[flowLights.scala 34:79]
  wire [6:0] _ledReg_res_T_20 = {3'h6 < io_ledCount, 6'h0}; // @[flowLights.scala 34:79]
  wire [1:0] _GEN_2 = {{1'd0}, 3'h0 < io_ledCount}; // @[flowLights.scala 34:94]
  wire [1:0] _ledReg_res_T_48 = _GEN_2 | _ledReg_res_T_5; // @[flowLights.scala 34:94]
  wire [2:0] _GEN_3 = {{1'd0}, _ledReg_res_T_48}; // @[flowLights.scala 34:94]
  wire [2:0] _ledReg_res_T_49 = _GEN_3 | _ledReg_res_T_8; // @[flowLights.scala 34:94]
  wire [3:0] _GEN_4 = {{1'd0}, _ledReg_res_T_49}; // @[flowLights.scala 34:94]
  wire [3:0] _ledReg_res_T_50 = _GEN_4 | _ledReg_res_T_11; // @[flowLights.scala 34:94]
  wire [4:0] _GEN_5 = {{1'd0}, _ledReg_res_T_50}; // @[flowLights.scala 34:94]
  wire [4:0] _ledReg_res_T_51 = _GEN_5 | _ledReg_res_T_14; // @[flowLights.scala 34:94]
  wire [5:0] _GEN_6 = {{1'd0}, _ledReg_res_T_51}; // @[flowLights.scala 34:94]
  wire [5:0] _ledReg_res_T_52 = _GEN_6 | _ledReg_res_T_17; // @[flowLights.scala 34:94]
  wire [6:0] _GEN_7 = {{1'd0}, _ledReg_res_T_52}; // @[flowLights.scala 34:94]
  wire [6:0] _ledReg_res_T_53 = _GEN_7 | _ledReg_res_T_20; // @[flowLights.scala 34:94]
  wire [7:0] _ledReg_res_T_54 = {{1'd0}, _ledReg_res_T_53}; // @[flowLights.scala 34:94]
  wire [8:0] _ledReg_res_T_55 = {{1'd0}, _ledReg_res_T_54}; // @[flowLights.scala 34:94]
  wire [9:0] _ledReg_res_T_56 = {{1'd0}, _ledReg_res_T_55}; // @[flowLights.scala 34:94]
  wire [10:0] _ledReg_res_T_57 = {{1'd0}, _ledReg_res_T_56}; // @[flowLights.scala 34:94]
  wire [11:0] _ledReg_res_T_58 = {{1'd0}, _ledReg_res_T_57}; // @[flowLights.scala 34:94]
  wire [12:0] _ledReg_res_T_59 = {{1'd0}, _ledReg_res_T_58}; // @[flowLights.scala 34:94]
  wire [13:0] _ledReg_res_T_60 = {{1'd0}, _ledReg_res_T_59}; // @[flowLights.scala 34:94]
  wire [14:0] _ledReg_res_T_61 = {{1'd0}, _ledReg_res_T_60}; // @[flowLights.scala 34:94]
  wire [15:0] ledReg_res = {{1'd0}, _ledReg_res_T_61}; // @[flowLights.scala 34:94]
  wire  _ledReg_T_1 = ~reset; // @[flowLights.scala 35:11]
  wire  ledReg_newUInt_lo_lo_lo_hi = ledReg[0]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_lo_hi_lo = ledReg[1]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_lo_hi_hi = ledReg[2]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_hi_lo_lo = ledReg[3]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_hi_lo_hi = ledReg[4]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_hi_hi_lo = ledReg[5]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_hi_hi_hi = ledReg[6]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_lo_lo_lo = ledReg[7]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_lo_lo_hi = ledReg[8]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_lo_hi_lo = ledReg[9]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_lo_hi_hi = ledReg[10]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_hi_lo_lo = ledReg[11]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_hi_lo_hi = ledReg[12]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_hi_hi_lo = ledReg[13]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_hi_hi_hi_hi = ledReg[14]; // @[flowLights.scala 18:21]
  wire  ledReg_newUInt_lo_lo_lo_lo = ledReg[15]; // @[flowLights.scala 18:21]
  wire [7:0] ledReg_newUInt_lo = {ledReg_newUInt_lo_hi_hi_hi,ledReg_newUInt_lo_hi_hi_lo,ledReg_newUInt_lo_hi_lo_hi,
    ledReg_newUInt_lo_hi_lo_lo,ledReg_newUInt_lo_lo_hi_hi,ledReg_newUInt_lo_lo_hi_lo,ledReg_newUInt_lo_lo_lo_hi,
    ledReg_newUInt_lo_lo_lo_lo}; // @[Cat.scala 30:58]
  wire [15:0] ledReg_newUInt = {ledReg_newUInt_hi_hi_hi_hi,ledReg_newUInt_hi_hi_hi_lo,ledReg_newUInt_hi_hi_lo_hi,
    ledReg_newUInt_hi_hi_lo_lo,ledReg_newUInt_hi_lo_hi_hi,ledReg_newUInt_hi_lo_hi_lo,ledReg_newUInt_hi_lo_lo_hi,
    ledReg_newUInt_hi_lo_lo_lo,ledReg_newUInt_lo}; // @[Cat.scala 30:58]
  wire [31:0] _clkReg_T_2 = clkReg + 32'h1; // @[flowLights.scala 46:51]
  assign io_led = ledReg; // @[flowLights.scala 48:10]
  always @(posedge clock) begin
    if (reset) begin // @[flowLights.scala 14:23]
      ledReg <= 16'h1; // @[flowLights.scala 14:23]
    end else if (io_button) begin // @[flowLights.scala 39:27]
      ledReg <= ledReg_res; // @[flowLights.scala 41:12]
    end else if (clkReg == 32'h0) begin // @[flowLights.scala 45:18]
      ledReg <= ledReg_newUInt;
    end
    if (reset) begin // @[flowLights.scala 15:23]
      clkReg <= 32'h1; // @[flowLights.scala 15:23]
    end else if (io_button) begin // @[flowLights.scala 39:27]
      clkReg <= 32'h2; // @[flowLights.scala 43:12]
    end else if (clkReg == 32'h2) begin // @[flowLights.scala 46:18]
      clkReg <= 32'h0;
    end else begin
      clkReg <= _clkReg_T_2;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_button & ~reset) begin
          $fwrite(32'h80000002,"res = %b\n",ledReg_res); // @[flowLights.scala 35:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_button & _ledReg_T_1) begin
          $fwrite(32'h80000002,"generated: %b\n",ledReg); // @[flowLights.scala 42:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
  ledReg = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  clkReg = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FlowLightsWrapper(
  input         clock,
  input         reset,
  input         io_button,
  input  [2:0]  io_ledCount,
  output [15:0] io_led
);
  wire  flowLights_clock; // @[flowLights.scala 59:26]
  wire  flowLights_reset; // @[flowLights.scala 59:26]
  wire  flowLights_io_button; // @[flowLights.scala 59:26]
  wire [2:0] flowLights_io_ledCount; // @[flowLights.scala 59:26]
  wire [15:0] flowLights_io_led; // @[flowLights.scala 59:26]
  FlowLights flowLights ( // @[flowLights.scala 59:26]
    .clock(flowLights_clock),
    .reset(flowLights_reset),
    .io_button(flowLights_io_button),
    .io_ledCount(flowLights_io_ledCount),
    .io_led(flowLights_io_led)
  );
  assign io_led = flowLights_io_led; // @[flowLights.scala 62:10]
  assign flowLights_clock = clock;
  assign flowLights_reset = reset;
  assign flowLights_io_button = io_button; // @[flowLights.scala 61:24]
  assign flowLights_io_ledCount = io_ledCount; // @[flowLights.scala 64:32]
endmodule
