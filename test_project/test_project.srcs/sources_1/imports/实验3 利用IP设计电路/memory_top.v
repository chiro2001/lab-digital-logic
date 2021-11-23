module memory_top (
	input  wire        clk   ,
	input  wire        rst   ,
	input  wire        button,
	output wire [15:0] led  
);
    wire clk_g;
    wire locked;
//用于时钟分频
clk_div u_clk_div (
    .clk_in1    (clk),
    .clk_out1   (clk_g),
    .locked     (locked)
);
//控制存储器的读写，将读取回来的序列显示到LED
    wire    mem_ena;
    wire    mem_wea;
    wire [3:0] mem_addra;
    wire [15:0] mem_dina;
    wire [15:0] mem_douta;
memory_w_r u_memory_w_r (
    .clk_g      (clk_g),
    .rst        (rst),
    .button     (button),
    .led        (led),
    .mem_douta  (mem_douta),
    .mem_ena        (mem_ena),
    .mem_wea        (mem_wea),
    .mem_addra      (mem_addra),
    .mem_dina       (mem_dina)
);

//存储LED灯依次显示的序列

led_mem u_led_mem (
		// 时钟选错了
    // .clka   (clk),
    .clka   (clk_g),
    .ena    (mem_ena),
    .wea    (mem_wea),
    .addra  (mem_addra),
    .dina   (mem_dina),
    .douta  (mem_douta)
);
endmodule