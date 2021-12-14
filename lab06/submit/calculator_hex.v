module calculator_hex #(
    parameter WIDTH_NUM1 = 8,
    parameter WIDTH_NUM2 = 8,
    parameter WIDTH_RESULT = 32
) (
    input  wire clk,
    input  wire rst,
    input  wire [2:0] func,
    input  wire button,
    output wire [WIDTH_RESULT-1:0] cal_result,
    output wire done
);
    
endmodule
