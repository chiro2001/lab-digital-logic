module led_display #(
	parameter delay = 5
) (
	input 	wire clk,
	input		wire rst,
	input		wire [63:0] values,
	output	wire [7:0] led_en,
	output	wire [7:0] led_cx
);
	// parameter delay = 5;
	reg [31:0] tim;
	reg [3:0] cnt;

	reg [7:0] map [15:0];

	wire [7:0] val;
	wire [7:0] val_map;

	assign led_en = ~(1 << cnt);
	assign val = values[(cnt<<3)+:8];
	assign val_map = map[val];

	assign led_cx = ~map[val];

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			cnt <= 4'b0;
			tim <= 32'b0;

			//					   pgfedcba
			map[8'h0] = 8'b00111111;
			map[8'h1] = 8'b00000110;
			map[8'h2] = 8'b01011011;
			map[8'h3] = 8'b01001111;
			//					   pgfedcba
			map[8'h4] = 8'b01100110;
			map[8'h5] = 8'b01101101;
			map[8'h6] = 8'b01111101;
			map[8'h7] = 8'b00000111;
			//					   pgfedcba
			map[8'h8] = 8'b01111111;
			map[8'h9] = 8'b01100111;
			map[8'ha] = 8'b01110111;
			map[8'hb] = 8'b01111100;
			//					   pgfedcba
			map[8'hc] = 8'b01011000;
			map[8'hd] = 8'b01011110;
			map[8'he] = 8'b01111001;
			map[8'hf] = 8'b01110001;
		end
		else begin
			if (tim == delay) begin
				tim <= 32'b0;
				if (cnt == 4'd7) begin
					cnt <= 4'b0;
				end
				else begin
					cnt <= cnt + 4'b1;
				end
			end
			else begin
				tim <= tim + 32'b1;
			end
		end
	end
endmodule


module led_display_ctrl (
	input  wire       clk   ,
	input  wire       rst   ,
	input  wire       button,
	output wire [7:0] led_en,
	output wire       led_ca,
	output wire       led_cb,
	output wire       led_cc,
	output wire       led_cd,
	output wire       led_ce,
	output wire       led_cf,
	output wire       led_cg,
	output wire       led_dp 
);
	parameter delay = 5;
	parameter count_max = 4'd10;
	reg [31:0] tim;

	reg [3:0] state;
	parameter STATE_RESET = 0;
	parameter STATE_RESET_STOP = 1;
	parameter STATE_RUNNING = 2;

	reg [63:0] values;
	reg [3:0] count_down;

	wire [7:0] led_cx;
	// assign {led_ca, led_cb, led_cc, led_cd, led_ce, led_cf, led_cg, led_dp} = led_cx;
	assign {led_dp, led_cg, led_cf, led_ce, led_cd, led_cc, led_cb, led_ca} = led_cx;
	led_display led_display_u (
		.clk(clk),
		.rst(rst),
		.values(values),
		.led_en(led_en),
		.led_cx(led_cx)
	);

	defparam led_display_u.delay = delay;

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			state <= STATE_RESET;
		end
		else begin
			if (state == STATE_RESET) begin
				// 显示学号后两位
				values[(0<<3)+:8] <= 8'h9;
				values[(1<<3)+:8] <= 8'h1;
				// 显示班级
				values[(2<<3)+:8] <= 8'h0;
				values[(3<<3)+:8] <= 8'h6;
				// 显示年级
				values[(4<<3)+:8] <= 8'h2;
				values[(5<<3)+:8] <= 8'h0;
				// 初始化显示倒计时
				count_down <= count_max;
				values[(6<<3)+:8] <= {4'b0, count_down > (count_max - 1) ? 4'h1 : 4'h0};
				values[(7<<3)+:8] <= {4'b0, count_down};

				tim <= 32'b0;

				if (button) begin
					state <= STATE_RESET_STOP;
				end
			end
			else if (state == STATE_RESET_STOP) begin
				if (~button) begin
					state <= STATE_RUNNING;
				end
			end
			else if (state == STATE_RUNNING) begin
				if (button) begin
					state <= STATE_RESET;
				end
				if (tim == delay << 3) begin
					tim <= 32'b0;
					if (count_down == 4'b0) begin
						count_down <= count_max;
					end
					else begin
						values[(6<<3)+:8] <= {4'b0, count_down > (count_max - 1) ? 4'h1 : 4'h0};
						values[(7<<3)+:8] <= {4'b0, count_down};
						count_down <= count_down - 4'b1;
					end
				end
				else begin
					tim <= tim + 32'b1;
				end
			end
		end
	end

endmodule