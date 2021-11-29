module led_display(								
	input wire clk,
	input wire rst,
	// delay加上位宽
	input wire [31:0] delay,
	input wire [63:0] values,					
	output wire [7:0] led_en,
	output wire [7:0] led_cx
);

reg [31:0] tim;
// 修改位宽，这里是坑，没有自动位宽扩展
reg [7:0] cnt;
// 后面表示位数，一共 0~9 10位
reg [7:0] num [9:0];
reg [7:0] data [7:0];
// 添加位宽
wire [7:0] value;

assign value = values[(cnt<<3)+:8];			
assign led_en = rst ? 8'b11111111 : data[cnt];
assign led_cx = num[value];

always @(posedge clk or posedge rst) begin
	if(rst) begin
		data[0] <= 8'b11111110;
		data[1] <= 8'b11111101;
		data[2] <= 8'b11111011;
		data[3] <= 8'b11110111;
		data[4] <= 8'b11101111;
		data[5] <= 8'b11011111;
		data[6] <= 8'b10111111;
		data[7] <= 8'b01111111;
	  num['d0] <= 8'b11000000;
		num['d1] <= 8'b11111001;
		num['d2] <= 8'b10100100;
		num['d3] <= 8'b10110000;
		num['d4] <= 8'b10011001;
		num['d5] <= 8'b10010010;
		num['d6] <= 8'b10000010;
		num['d7] <= 8'b11111000;
		num['d8] <= 8'b10000000;
		num['d9] <= 8'b10011000;
		// 对变量进行初始化操作
		tim <= 32'd0;
		cnt <= 8'd0;
	end
	else 
		begin
	  	if (tim == delay) begin
				tim <= 32'b0;
				if(cnt == 8'd7) begin
					cnt <= 8'd0;
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

module led_display_ctrl (					
    input  wire       clk   ,
	input  wire       rst   ,
	input  wire       button,
	output wire  [7:0] led_en,
	output wire       led_ca,
	output wire       led_cb,
    output wire       led_cc,
	output wire       led_cd,
	output wire       led_ce,
	output wire       led_cf,
	output wire       led_cg,
	output wire      led_dp 
);
parameter initial_lights =64'h0100_0200_0004_0101 ;		
// parameter flash = 50000;
// parameter clk_1s = 100000000;
parameter flash = 5;
parameter clk_1s = 100;
reg [63:0] values;
reg [31:0]tim;
reg flag;
reg [7:0]count;
wire [7:0] led_cx;

assign {led_dp, led_cg, led_cf, led_ce, led_cd, led_cc, led_cb, led_ca} = rst ? 8'd0 : led_cx;

led_display display(
	.clk(clk),
	.rst(rst),
	.delay(flash),
	.values(values),
	.led_en(led_en),
	.led_cx(led_cx)
);
always @(posedge clk) begin
	if(button)begin
	  	flag <= 1'b1;
		values <= initial_lights;
		tim <= 32'b0;
	end
end
always @(posedge clk or posedge rst) begin
	if(rst)begin
	  	values <= 64'b0;
		count <= 'd10;
		// 初始化
		tim <= 32'd0;
	end
	else begin
		if(flag) begin
		  	if(tim == clk_1s) begin
					if (count == 'd0) begin
						count <= 'd10;
					end
					else begin
						count <= count - 'b1;
					end
					tim <= 32'b0;
					// values[(7<<3)+:8] <= 8'b0;
					values[(7<<3)+:8] <= (count == 'd10 ? 'd1 : 'd0);
					// values[(6<<3)+:8] <= {4'b0,4'd10 - count};
					values[(6<<3)+:8] <= (count == 'd10 ? 'd0 : count);
				end
				else begin
					tim <= tim + 32'b1;
				end
			end
		end
	end
endmodule