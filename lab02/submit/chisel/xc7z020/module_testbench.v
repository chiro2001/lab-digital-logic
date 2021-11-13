`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/12 17:31:54
// Design Name: 
// Module Name: module_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module module_testbench();
    reg clock;
    reg reset;

    reg button;
    wire [15:0] led;
    reg [2:0] ledCount;

    always #1 clock <= ~clock;

    always #100 begin
        if (ledCount == 3'b111)
            ledCount <= 1;
        else
            ledCount <= ledCount + 3'b1;
        button <= 1'b1;
        # 2
        button <= 1'b0;
    end

    initial begin
        clock <= 1'b0;
        reset <= 1'b1;
        button <= 1'b0;
        ledCount <= 3'b1;
        # 10
        reset <= 1'b0;
        # 800
        $finish;
    end

    FlowLightsWrapper u0(
        .clock(clock),
        .reset(reset),
        .io_button(button),
        .io_led(led),
        .io_ledCount(ledCount)
    );
endmodule
