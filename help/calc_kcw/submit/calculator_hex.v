module calculator_hex (
    input   wire  clk   ,
    input   wire  rst     ,
    input   wire  button  ,
    // 位宽不对
    input   wire [2:0] func  ,
    input   wire [7:0] num1 ,
    input   wire [7:0] num2 ,
    output  reg [31:0] cal_result
);

wire rst_n = ~rst;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        cal_result <= 0;
    end
    else if (button) begin
        if (cal_result == 0) begin
            case (func)
                3'b000: cal_result <= num1 + num2;
                3'b001: cal_result <= num1 - num2;
                3'b010: cal_result <= num1 * num2;
                3'b011: cal_result <= num1 / num2;
                3'b100: cal_result <= num1 % num2;
                3'b101: cal_result <= 0; 
                default: cal_result <= cal_result;
            endcase
        end
        else begin
            case (func)
                3'b000: cal_result <= cal_result + num2;
                3'b001: cal_result <= cal_result - num2;
                3'b010: cal_result <= cal_result * num2;
                3'b011: cal_result <= cal_result / num2;
                3'b100: cal_result <= cal_result % num2;
                3'b101: cal_result <= cal_result * cal_result; 
                default: cal_result <= cal_result;
            endcase
        end
    end
end
endmodule