/* 
 * module: calculator_hex
 * function: 计算流程的调度
 */
module calculator_hex #(
    parameter WIDTH_NUM1 = 32,  // 操作数1宽度
    parameter WIDTH_NUM2 = 32,  // 操作数2宽度
    parameter WIDTH_RESULT = 32 // 结果宽度
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
    reg calculating;    // 是否正在计算
    reg calculating2;   // 上一个周期是否正在计算
    reg done_reg;       // 是否计算完
    reg button_reg;     // 上一个周期是否发出开始计算指令
    wire alu_done;      // ALU是否完成计算

    reg [WIDTH_NUM1-1:0] alu_op1;   // ALU使用的操作数1
    reg [WIDTH_NUM2-1:0] alu_op2;   // ALU使用的操作数2
    reg [WIDTH_RESULT-1:0] cal_result_reg;  // 计算结果寄存器
    wire [WIDTH_RESULT-1:0] result; // ALU计算结果

    assign cal_result = cal_result_reg; // 连接寄存器和对应线网
    assign done = done_reg;

    // 实例化ALU模块
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
            // 初始化寄存器
            calculating <= 1'b0;
            calculating2 <= 1'b0;
            cal_result_reg <= {(WIDTH_RESULT){1'b0}};
            done_reg <= 1'b0;
            alu_op1 <= {(WIDTH_NUM1){1'b0}};
            alu_op2 <= {(WIDTH_NUM2){1'b0}};
            button_reg <= 1'b0;
        end
        else begin
            // 初始化完成
            // 记录本时钟状态到寄存器，下周期使用
            calculating2 <= calculating;
            button_reg <= button;
            if (calculating && calculating2) begin
                if (alu_done) begin
                    // ALU计算完成，设置结果寄存器，
                    // 并且向display模块发送显示信号
                    done_reg <= 1'b1;
                    cal_result_reg <= result;
                    calculating <= 1'b0;
                end
            end
            else begin
                if (done_reg) begin
                    // 控制计算完成信号只发送一个时钟周期
                    done_reg <= 1'b0;
                end
                else begin
                    if (button && !button_reg) begin
                        // 在开始计算信号上升沿向ALU发送开始计算信号
                        calculating <= 1'b1;
                        alu_op1 <= num1;
                        alu_op2 <= num2;
                    end
                end
            end
        end
    end
endmodule


/*
 * module: calculator_alu
 * function: 负责实际计算功能
 */
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
    // 计算类型
    parameter OP_ADD        = 3'b000;
    parameter OP_MINUS      = 3'b001;
    parameter OP_MUL        = 3'b010;
    parameter OP_DIV        = 3'b011;
    parameter OP_MOD        = 3'b100;
    parameter OP_SQUARE     = 3'b101;
    // 结果寄存器初始值
    parameter INIT_RESULT   = {(WIDTH_RESULT){1'b0}};

    reg started;    // 是否已经开始计算
    reg done_reg;   // 计算完成寄存器
    reg started2;   // 上一个周期是否已经开始计算
    reg [WIDTH_RESULT-1:0] result_reg;  // 结果寄存器
    reg continuous; // 是否使用上一次结果进行计算

    wire [WIDTH_NUM1-1:0] a;    // 实际计算使用的操作数1
    wire [WIDTH_NUM2-1:0] b;    // 实际计算使用的操作数2

    // 如果已经计算了一次，就使用上一次结果作为操作数1
    assign a = continuous ? result_reg : op1;
    assign b = op2;

    // 寄存器和线网连线
    assign done = done_reg;
    assign result = result_reg;

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            // 初始化寄存器
            done_reg <= 1'b0;
            started2 <= 1'b0;
            result_reg <= INIT_RESULT;
            started <= 1'b0;
            continuous <= 1'b0;
        end
        else begin
            // 初始化完成
            // 记录上一周期start状态
            started2 <= started;
            if (start && !started && !started2) begin
                // 开始计算标志
                done_reg <= 1'b0;
                started <= 1'b1;
            end
            else begin
                if (started) begin
                    // 当前正在计算，根据alu_op判断计算类型
                    // `done_reg <= 1'b1;`表示完成计算
                    // `started <= 1'b0;`清除开始计算标志
                    // `continuous <= 1'b1;`标志下次使用上次结果进行计算
                    // 如此设计是为乘除法等可能出现的多周期计算做准备，
                    // 如果不使用片上DSP，也可以用流水线等方法多周期完成计算
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