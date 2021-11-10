// Author: Chiro, Date: 2021/11/10
module flowing_water_lights (input wire clk,
                             input wire rst,
                             input wire button,
                             output reg [7:0] led);
	// parameter delay      = 32'd2;
    // 分频数量
    parameter delay      = 32'd100000000;
    parameter STATE_PRE  = 0;
    parameter STATE_INIT = 1;
    parameter STATE_RUN  = 2;
    reg [3:0] state;
    reg [31:0] tim;
    reg [4:0] cnt;
    integer i;
    
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            led   <= 8'b0;
            cnt   <= 5'b0;
            tim   <= 32'b0;
            i     <= 0;
            // 初始化当前状态机为开始之前
            state <= STATE_PRE;
        end
        else begin
            if (state == STATE_PRE) begin
                // 开始之前状态，等待按键开始，就进入初始化状态
                if (button)
                    state <= STATE_INIT;
            end
            else if (state == STATE_INIT) begin
                // 初始化状态，设置相关信息之后进入运行状态
                for (i = 0; i < 8; i = i + 1)
                    led[i] = (i == 0) ? 1'b1 : 1'b0;
                state <= STATE_RUN;
            end
            else if (state == STATE_RUN) begin
                // 运行状态，如果有按键就重新初始化
                if (button)
                    state <= STATE_INIT;
                else begin
                    // 计数器溢出，更新cnt
                    if (tim == delay) begin
                        tim <= 32'b0;
                        // 进行一个位的移
                        led <= {led[6-:7], led[7]};
                        cnt <= cnt + 5'b1;
                        // cnt 溢出，回到初始状态
                        if (cnt == 5'd8)
                            cnt <= 5'b0;
                    end else
                        // 计数
                        tim <= tim + 32'b1;
                end
            end
        end
    end
endmodule
