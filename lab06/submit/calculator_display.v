module led_display #(
	parameter DELAY = 5,
    parameter WIDTH_RES = 32,
    parameter COUNT_NUM = 8
) (
	input 	wire clk,
	input	wire rst,
	input	wire [WIDTH_RES-1:0] values,
	output	wire [(WIDTH_RES>>2)-1:0] led_en,
	output	wire [7:0] led_cx
);
	reg [31:0] tim;
	reg [7:0] cnt;

	// 负责把values[i:i+8]的值转换到数码管显示
	reg [3:0] map [15:0];

	// 当前需要显示的数码管的值
	wire [3:0] val;
	// 当前需要显示的数码管对应灯
	wire [7:0] val_map;

	assign led_en = rst ? 8'b0 : ~(1 << cnt);
	// Verilog不允许取段的两边都为变量，需要用这种方式取某一段
	//								(cnt*8):(cnt*8+8)
	assign val = values[(cnt<<2)+:4];
	assign val_map = map[val];

	// 因为是低触发所以取个反；直接assign就减少了一次寄存器操作
	assign led_cx = ~val_map;

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			// 初始化寄存器
			cnt <= 8'b0;
			tim <= 32'b0;
			// 初始化转换数据
			map[4'h0] = 8'b00111111;
			map[4'h1] = 8'b00000110;
			map[4'h2] = 8'b01011011;
			map[4'h3] = 8'b01001111;
			map[4'h4] = 8'b01100110;
			map[4'h5] = 8'b01101101;
			map[4'h6] = 8'b01111101;
			map[4'h7] = 8'b00000111;
			map[4'h8] = 8'b01111111;
			map[4'h9] = 8'b01100111;
			map[4'ha] = 8'b01110111;
			map[4'hb] = 8'b01111100;
			map[4'hc] = 8'b01011000;
			map[4'hd] = 8'b01011110;
			map[4'he] = 8'b01111001;
			map[4'hf] = 8'b01110001;
		end
		else begin
			// tim: [0...DELAY]
			if (tim == DELAY) begin
				tim <= 32'b0;
				// cnt: [0...(COUNT_NUM-1)]
				if (cnt == (COUNT_NUM-1)) begin
					cnt <= 8'b0;
				end
				else begin
					cnt <= cnt + 8'b1;
				end
			end
			else begin
				tim <= tim + 32'b1;
			end
		end
	end
endmodule

module calculator_hex #(
    parameter WIDTH_RESULT = 32,
    parameter DELAY = 5
) (
    input  wire clk,
    input  wire rst,
    input  wire [WIDTH_RESULT-1:0] cal_result,
    input  wire done,
    output wire [7:0] led_en,
    output wire led_ca,
    output wire led_cb,
    output wire led_cc,
    output wire led_cd,
    output wire led_ce,
    output wire led_cf,
    output wire led_cg,
    output wire led_cp
);
    reg [31:0] values;
    wire [7:0] led_cx;
    reg started;
    wire dismiss;

    assign dismiss = (rst || (~started) || done);
    assign {led_dp, led_cg, led_cf, led_ce, led_cd, led_cc, led_cb, led_ca} = dismiss ? (~8'd0) : led_cx;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            started <= 1'b1;
            values <= 64'b0;
        end
        else begin
            if (done) values <= cal_result;
        end
    end

    led_display #(
        .DELAY(DELAY)
    ) led_display_u (
        .clk(clk),
        .rst(rst),
        .values(values),
        .led_cx(led_cx),
        .led_en(led_en)
    );
    
endmodule