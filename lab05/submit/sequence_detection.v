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
    
    reg [7:0] state_currnet;
    reg [7:0] state_next;
    reg [3:0] p;
    wire switch_end;
    // 匹配是否已经结束
    assign switch_end = ((p == 4'hF) | led) && ~button;
    reg started;
    
    // 次态寄存器迁移到现态寄存器
    always @ (posedge clk or posedge rst) begin
        if (rst) state_currnet <= SD;
        else     state_currnet <= state_next;
    end
    
    // 状态转移条件判断
    always @ (*) begin
        case (state_currnet)
            SD: state_next = switch_end ? SD : button       ? S0 : SD;
            S0: state_next = switch_end ? SD : switch[p]    ? S1 : S0;
            S1: state_next = switch_end ? SD : ~switch[p]   ? S2 : S1;
            S2: state_next = switch_end ? SD : ~switch[p]   ? S3 : S1;
            S3: state_next = switch_end ? SD : switch[p]    ? S4 : S0;
            S4: state_next = switch_end | switch[p]         ? SD : S0;
            default: state_next = SD;
        endcase
    end
    
    // 次态寄存器输出
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            led     <= 1'b0;
            p       <= 4'b0;
            started <= 1'b0;
        end
        else begin
            if (button) begin
                led     <= 1'b0;
                p       <= 4'd7;
                started <= 1'b1;
            end
            else begin
                if (state_currnet == S4 && state_next == S0) begin
                    led <= 1'b1;
                end
                else begin
                    led <= 1'b0 | led;
                end
                if (~led && started) begin
                    if (p == 4'b0) p <= 4'hF;
                    else           p <= p - 4'b1;
                end
            end
        end
    end
endmodule
