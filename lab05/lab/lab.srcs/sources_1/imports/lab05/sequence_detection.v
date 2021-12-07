module sequence_detection (input wire clk,
                           input wire rst,
                           input wire button,
                           input wire [7:0] switch,
                           output reg led);
    parameter S0 = 8'd0;
    parameter S1 = 8'd1;
    parameter S2 = 8'd2;
    parameter S3 = 8'd3;
    parameter S4 = 8'd4;
    parameter SD = 8'd5;    // IDLE状态
    wire [5:0] TARGET;
    // 最高位 IDLE 状态需要判断为真
    assign TARGET = {1'b1, 5'b10010};
    
    reg [5:0] state_currnet;
    reg [5:0] state_next;
    reg [3:0] p;
    reg stopped;
    
    wire val_current;
    wire val_target;
    wire [5:0] success;
    wire [5:0] failed;
    wire state_success;
    wire switch_end;
    wire found;
    
    // 当前匹配成功/失败之后的状态跳转
    parameter SUCCESS_TABLE = {S0, SD, S4, S3, S2, S1};
    parameter FAILED_TABLE  = {SD, S0, S0, S1, S1, S0};
    
    assign success       = SUCCESS_TABLE[state_currnet<<3+:8];
    assign failed        = FAILED_TABLE[state_currnet<<3+:8];
    // 当前需要判断的输入比特值，特殊：IDEL时button和S4时switch_end
    assign val_current   = state_currnet == SD ? button : 
                           state_currnet == S4 ? (switch_end | switch[p]) : 
                           switch_end ? 1'b0 : switch[p];
    // 当前判断正确的输入比特值
    assign val_target    = TARGET[state_currnet];
    // 匹配是否成功
    assign state_success = val_current == val_target;
    // 是否在当前匹配找到子串
    assign found         = state_currnet == S4 && state_next == SD;
    // 匹配是否已经结束
    assign switch_end    = (p == 4'd8) | led;
    
    // 次态寄存器迁移到现态寄存器
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            state_currnet <= SD;
            state_next    <= SD;
        end
        else state_currnet <= state_next;
    end
    
    // 状态转移条件判断（大部分条件放前面几行了）
    always @ (*) state_next <= state_success ? success : failed;
    
    // 次态寄存器输出
    always @ (posedge clk or posedge rst) begin
        if (rst | button) begin
            p       <= 4'b0;
            led     <= 1'b0;
            stopped <= 1'b0;
        end
        else begin
            if (switch_end)    p       <= 4'b0;
            else if (!stopped) p       <= p + 4'b1;
            if (found)         led     <= 1'b1;
            if (switch_end)    stopped <= 1'b1;
        end
    end
endmodule
