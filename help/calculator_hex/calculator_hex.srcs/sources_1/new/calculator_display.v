module led_display(								
	input wire clk,
	input wire rst,
	input wire [31:0] values,					
	output wire [7:0] led_en,
	output wire [7:0] led_cx
);
parameter delay = 25000;

reg [31:0] tim;
reg [7:0] cnt;
reg [7:0] map [15:0];
wire [7:0] value;

assign value = values[(cnt<<2)+:4];		             
assign led_en = rst ? 8'b0 : ~(1<<cnt);
assign led_cx =~map[value];                     

always @(posedge clk or posedge rst) begin
	if(rst) begin
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

module calculator_display (					
    input  wire       clk   ,
	input  wire       rst   ,
	input  wire       button   ,
	input  wire   [31:0]cal_result,
	input  wire       done,
	output wire  [7:0] led_en,
	output wire       led_ca,
	output wire       led_cb,
    output wire       led_cc,
	output wire       led_cd,
	output wire       led_ce,
	output wire       led_cf,
	output wire       led_cg,
	output wire       led_dp
);
reg [31:0] values;
wire [7:0] led_cx;
reg button_reg ;
assign {led_dp, led_cg, led_cf, led_ce, led_cd, led_cc, led_cb, led_ca} = rst ? (~8'd0) : led_cx;

led_display u_led_display(
    .clk(clk),
    .rst(rst),
    .values(values),
    .led_cx(led_cx),
    .led_en(led_en)
);
always@(posedge clk or posedge rst) begin
    if(rst) begin
        values <= 32'b0;
    end
    else begin
        button_reg <= button;
        if(button && !button_reg)
            values <= cal_result;
    end
end
endmodule
