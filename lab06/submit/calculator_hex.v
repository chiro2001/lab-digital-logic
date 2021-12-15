module calculator_hex #(
    parameter WIDTH_NUM1 = 32,
    parameter WIDTH_NUM2 = 32,
    parameter WIDTH_RESULT = 32
) (
    input  wire clk,
    input  wire rst,
    input  wire [2:0] func,
    input  wire button,
    input  wire [7:0] num1,
    input  wire [7:0] num2,
    output wire [WIDTH_RESULT-1:0] cal_result,
    output wire done
);
    reg calculating;
    reg calculating2;
    reg done_reg;
    reg button_reg;
    wire alu_done;

    reg [WIDTH_NUM1-1:0] alu_op1;
    reg [WIDTH_NUM2-1:0] alu_op2;
    reg [WIDTH_RESULT-1:0] cal_result_reg;
    wire [WIDTH_RESULT-1:0] result;

    assign cal_result = cal_result_reg;
    assign done = done_reg;

    calculator_alu #(
        .WIDTH_NUM1(WIDTH_NUM1),
        .WIDTH_NUM2(WIDTH_NUM2),
        .WIDTH_RESULT(WIDTH_RESULT)
    ) u_calculator_alu (
        .clk(clk),
        .rst(rst),
        .start(calculating),
        .alu_op(func),
        .op1(alu_op1),
        .op2(alu_op2),
        .done(alu_done),
        .result(result)
    );

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            calculating <= 1'b0;
            calculating2 <= 1'b0;
            cal_result_reg <= {(WIDTH_RESULT){1'b0}};
            done_reg <= 1'b0;
            alu_op1 <= {(WIDTH_NUM1){1'b0}};
            alu_op2 <= {(WIDTH_NUM2){1'b0}};
            button_reg <= 1'b0;
        end
        else begin
            calculating2 <= calculating;
            button_reg <= button;
            if (calculating && calculating2) begin
                if (alu_done) begin
                    done_reg <= 1'b1;
                    cal_result_reg <= result;
                    calculating <= 1'b0;
                end
            end
            else begin
                if (done_reg) begin
                    done_reg <= 1'b0;
                end
                else begin
                    if (button && !button_reg) begin
                        calculating <= 1'b1;
                        alu_op1 <= num1;
                        alu_op2 <= num2;
                    end
                end
            end
        end
    end
endmodule


module calculator_alu #(
    parameter WIDTH_NUM1 = 32,
    parameter WIDTH_NUM2 = 32,
    parameter WIDTH_RESULT = 32
) (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [2:0] alu_op,
    input wire [WIDTH_NUM1-1:0] op1,
    input wire [WIDTH_NUM2-1:0] op2,
    output wire done,
    output wire [WIDTH_RESULT-1:0] result
);
    parameter OP_ADD        = 3'b000;
    parameter OP_MINUS      = 3'b001;
    parameter OP_MUL        = 3'b010;
    parameter OP_DIV        = 3'b011;
    parameter OP_MOD        = 3'b100;
    parameter OP_SQUARE     = 3'b101;
    parameter INIT_RESULT   = {(WIDTH_RESULT){1'b0}};

    reg started;
    reg done_reg;
    reg started2;
    reg [WIDTH_RESULT-1:0] result_reg;
    reg continuous;

    wire [WIDTH_NUM1-1:0] a;
    wire [WIDTH_NUM2-1:0] b;

    assign a = continuous ? result_reg : op1;
    assign b = op2;

    assign done = done_reg;
    assign result = result_reg;

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            done_reg <= 1'b0;
            started2 <= 1'b0;
            result_reg <= INIT_RESULT;
            started <= 1'b0;
            continuous <= 1'b0;
        end
        else begin
            started2 <= started;
            if (start && !started && !started2) begin
                done_reg <= 1'b0;
                started <= 1'b1;
            end
            else begin
                if (started) begin
                    case (alu_op)
                    OP_ADD: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a + b;
                    end
                    OP_MINUS: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a - b;
                    end
                    OP_MUL: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a * b;
                    end
                    OP_DIV: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a / b;
                    end
                    OP_MOD: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a % b;
                    end
                    OP_SQUARE: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= a * a;
                    end
                    default: begin
                        done_reg <= 1'b1;
                        continuous <= 1'b1;
                        started <= 1'b0;
                        result_reg <= INIT_RESULT;
                    end
                    endcase
                end
            end
        end
    end
endmodule