module calculator_display (
    input   wire clk  	,
    input   wire rst    ,
    input   wire button ,
    input   wire [31:0] cal_result,
	output 	wire [7:0] led_en,
	output 	wire       led_ca,
	output 	wire       led_cb,
	output 	wire       led_cc,
	output 	wire       led_cd,
	output 	wire       led_ce,
	output 	wire       led_cf,
	output 	wire       led_cg
);

reg button_start;
reg rst_end;
parameter DELAY = 24'd4;
reg [4:0] num_led;
wire rst_n = ~rst;
reg [6:0] light;
reg [7:0] led_en_1;
reg led_ca_1;
reg led_cb_1;
reg led_cc_1;
reg led_cd_1;
reg led_ce_1;
reg led_cf_1;
reg led_cg_1;

assign led_en = led_en_1;
assign led_ca = led_ca_1;
assign led_cb = led_cb_1;
assign led_cc = led_cc_1;
assign led_cd = led_cd_1;
assign led_ce = led_ce_1;
assign led_cf = led_cf_1;
assign led_cg = led_cg_1;
always @(posedge clk or negedge rst_n) begin
	if (led_en[0] == 0) begin
		num_led <= cal_result[3:0];
	end
	else if (led_en[1] == 0) begin
		num_led <= cal_result[7:4];
	end
	else if (led_en[2] == 0) begin
		num_led <= cal_result[11:8];
	end
	else if (led_en[3] == 0) begin
		num_led <= cal_result[15:12];
	end
	else if (led_en[4] == 0) begin
		num_led <= cal_result[19:16];
	end
	else if (led_en[5] == 0) begin
		num_led <= cal_result[23:20];
	end
	else if (led_en[6] == 0) begin
		num_led <= cal_result[27:24];
	end
	else if (led_en[7] == 0) begin
		num_led <= cal_result[31:28];
	end
end

always @(*) begin
	case (num_led)
		0: light <= 7'b100_0000;
		1: light <= 7'b111_1001;
		2: light <= 7'b010_0100;
		3: light <= 7'b011_0000;
		4: light <= 7'b001_1001;
		5: light <= 7'b001_0010;
		6: light <= 7'b000_0010;
		7: light <= 7'b111_1000;
		8: light <= 7'b000_0000;
		9: light <= 7'b001_1000;
        10:light <= 7'b000_1000;
        11:light <= 7'b000_0011;
        12:light <= 7'b010_0111;
        13:light <= 7'b010_0001;
        14:light <= 7'b000_0110;
        15:light <= 7'b000_1110;
		default: light <= 7'b111_1111;
	endcase
	led_ca_1 <= light[0];
	led_cb_1 <= light[1];
	led_cc_1 <= light[2];
	led_cd_1 <= light[3];
	led_ce_1 <= light[4];
	led_cf_1 <= light[5];
	led_cg_1 <= light[6];
end

always @(posedge clk ) begin
	if(button)begin
		button_start <= 1;
		rst_end <= 0;
	end
	else if (rst) begin
		button_start <= 0;
		rst_end <= 1;
	end
end


reg [23:0] cnt;
always @(posedge clk ) begin
	if (rst_end) begin
		cnt <= 24'd0;
	end
	else if (button) begin
		cnt <= 24'd0;
	end
	else if (cnt == DELAY) begin
		cnt <= 24'd0;
	end
	else begin
		cnt <= cnt + 24'd1;
	end
end

always @(posedge clk ) begin
	if(rst_end)begin
		led_en_1 <= 8'b1111_1111;
	end
	if (button) begin
		led_en_1 <= 8'b1111_1110;
	end
	if (button_start) begin
		if (cnt == DELAY - 1) begin
			led_en_1 <= {led_en[6:0],led_en[7]};
		end
	end
end  
endmodule