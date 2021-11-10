## 流水灯

### 代码

```verilog
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
                        if (cnt == 5'd16)
                            cnt <= 5'b0;
                    end else
                        // 计数
                        tim <= tim + 32'b1;
                end
            end
        end
    end
endmodule

```

### 波形分析

![image-20211110154213475](lab02.assets/image-20211110154213475.png)

`flow_water_lights`模块完成的是流水灯的功能，在根据时间进行灯的流水变化的同时还要考虑按键复位的功能。

1. 当`rst`拉高，系统复位
2. 当`rst`拉低，系统开始运行
3. 每隔2个时钟周期，`tim`自增1；当`tim`达到`delay`表示`tim`计时完成，需要更新`cnt`再复位`tim`
4. `cnt`更新同时，`led`位移一位
5. 同时，当`button`按下，位移复位，重新从第一位开始流水，`state`变化为：`STATE_RUN -> STATE_INIT -> STATE_RUN`

##  节日彩灯

### 代码

```verilog
// Author: Chiro, Date: 2021/11/10
module holiday_lights (input wire clk,
                       input wire rst,
                       input wire button,
                       input wire [2:0] switch,
                       output reg [15:0] led);
    // 分频数量
    // parameter delay      = 32'd2;
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
            led   <= 16'b0;
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
                for (i = 0; i < 16; i = i + 1)
                    led[i] = (i < switch + 1) ? 1'b1 : 1'b0;
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
                        led <= {led[14-:15], led[15]};
                        cnt <= cnt + 5'b1;
                        // cnt 溢出，回到初始状态
                        if (cnt == 5'd16)
                            cnt <= 5'b0;
                    end else
                        // 计数
                        tim <= tim + 32'b1;
                end
            end
        end
    end
endmodule

```

### 波形分析

![image-20211110154839450](lab02.assets/image-20211110154839450.png)

`holiday_lights`模块完成的是流水灯的功能，在根据时间进行灯的流水变化的同时还要考虑按键复位的功能。

1. 当`rst`拉高，系统复位
2. 当`rst`拉低，系统开始运行，`state = STATE_PRE`，等待`button`按下
3. 每隔2个时钟周期，`tim`自增1；当`tim`达到`delay`表示`tim`计时完成，需要更新`cnt`再复位`tim`
4. `cnt`更新同时，`led`位移一位
5. 同时，当`button`按下，位移复位，重新从第一位开始流水，`state`变化为：`STATE_RUN -> STATE_INIT -> STATE_RUN`