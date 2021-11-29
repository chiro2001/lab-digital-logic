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
	
	wire [7:0] led_cx;
	assign {led_dp, led_cg, led_cf, led_ce, led_cd, led_cc, led_cb, led_ca} = led_cx;

	Niexie niexie_u(
		.clock(clk),
		.reset(rst),
		.io_in_button(button),
		.io_out_ledCx(led_cx),
		.io_out_ledEn(led_en)
	);
	
endmodule