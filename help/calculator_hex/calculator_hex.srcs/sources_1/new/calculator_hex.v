module calculator_hex(
    input wire clk,
    input wire rst,
    input wire [2:0] func,
    input wire button,
    input wire [7:0] num1,
    input wire [7:0] num2,
    output reg [31:0] cal_result
);
reg continue;
reg button_reg;
reg [31:0] prev_result;
parameter add = 3'b000;
parameter minus = 3'b001;
parameter mul = 3'b010;
parameter div = 3'b011;
parameter mod = 3'b100;
parameter square = 3'b101;

always @(posedge clk or posedge rst) begin
    if(button)
        continue <= 1'b1;
    else if (rst)
        continue <= 1'b0;
    else 
        continue <= continue;
end

always @(posedge clk or posedge rst) begin
    if(rst)
        prev_result <= 0;
    else if(!continue)
        prev_result <= num1;

    else if (!button && button_reg)
        prev_result <= cal_result;
    else 
        prev_result <= prev_result;
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        cal_result <= 32'b0;
    end
    else begin
        button_reg <= button;
        if(button && !button_reg) begin
        case (func)
            add     :   begin cal_result <= prev_result + num2;     end
            minus   :   begin cal_result <= prev_result - num2;     end
            mul     :   begin  cal_result <= prev_result * num2;    end
            div     :   begin  cal_result <= prev_result / num2;    end
            mod     :   begin cal_result <= prev_result % num2;     end
            square  :   begin  cal_result <= prev_result * prev_result; end
            default :   begin cal_result <= 0;  end
        endcase
        end
    end
end
endmodule