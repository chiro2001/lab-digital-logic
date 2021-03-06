/*
 * module: calculator_top
 * function: 计算器顶层模块
 */
module calculator_top (
    input wire clk,
    input wire rst,
    input wire button,
    input wire [2:0] func,
    input wire [7:0] num1,
    input wire [7:0] num2,
    output wire [7:0] led_en,
    output wire led_ca,
    output wire led_cb,
    output wire led_cc,
    output wire led_cd,
    output wire led_ce,
    output wire led_cf,
    output wire led_cg,
    output wire led_dp
);    
    wire        clk_g     ;
    wire [31:0] cal_result;
    wire        done      ;
    
    clk_div u_clk_div (
    .clk_in1  (clk),        // 输入时钟
    .clk_out1 (clk_g),      // 输出时钟
    .locked   (locked)      // 时钟是否已经初始化完成，进入稳定状态
    );
    
    calculator_hex u_calculator_hex (
    .clk        (clk_g),    // 时钟
    .rst        (rst || !(locked)), // 复位，必须等待时钟初始化完毕
    .button     (button),   // 开始计算/继续计算信号
    .num1       (num1),     // 操作数1
    .num2       (num2),     // 操作数2
    .func       (func),     // 操作类型
    .cal_result (cal_result),   // 计算结果
    .done       (done)      // 是否计算完成，可以显示
    );
    
    calculator_display u_calculator_display (
    .clk        (clk_g),    // 时钟
    .rst        (rst || !(locked)), // 复位，必须等待时钟初始化完毕
    .cal_result (cal_result),   // 计算结果
    .done       (done),     // 计算完成信号
    .led_en     (led_en),   // led 数码管使能
    .led_ca     (led_ca),   // led 数码管引脚
    .led_cb     (led_cb),
    .led_cc     (led_cc),
    .led_cd     (led_cd),
    .led_ce     (led_ce),
    .led_cf     (led_cf),
    .led_cg     (led_cg),
    .led_dp     (led_dp)
    );
    
endmodule
