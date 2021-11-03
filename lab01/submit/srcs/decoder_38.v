/// Author: Chiro; Date: 2021/11/3
module decoder_38 (input wire clk,
                   input wire rst,
                   input wire [2:0] enable,
                   input wire [2:0] switch,
                   output reg [7:0] led);
    always @ (posedge clk, posedge rst) begin
			if (rst) begin
				led = 8'b1111_1111;
			end else begin
				led = (enable != 3'b100) ? 8'b1111_1111 : (~(8'b0000_0001 << switch));
			end
		end
endmodule
