`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/17 09:02:39
// Design Name: 
// Module Name: memory_w_r
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory_w_r(
    input   wire        clk_g,
    input   wire        rst,
    input   wire        button,
    input   wire [15:0] mem_douta,
    output  wire [15:0] led,
    output  wire        mem_ena,
    output  wire        mem_wea,
    output  wire [3:0]  mem_addra,
    output  wire [15:0] mem_dina
);
reg [31:0] cnt = 0;
parameter delay = 32'd15;
wire rst_n = ~rst;

reg ena = 1;
reg wea = 1;
wire mem_rd = ena && ~wea ;
reg [3:0] addra = 4'd0;
reg [15:0] dina;
reg [15:0] led_in;
assign mem_ena = ena ;
assign mem_wea = wea ;
assign mem_addra = addra;
assign mem_dina = dina;
assign led = led_in; 
reg rst_end;
always @(posedge clk_g ) begin
    if (rst) rst_end <= 1;
    if (button) rst_end <=0;
    if (rst_end || button) begin
        cnt <= 32'd0;
    end
    else if (cnt == delay) begin
        cnt <= 32'd0;
    end
    else if(mem_rd) begin
        cnt <= cnt + 32'd1;
    end   
end
always @(posedge clk_g) begin
    /*if (rst) begin
        ena <= 0;
        wea <= 0;
    end*/
    if (cnt == delay - 1 ) begin
        ena <= 1;
        wea <= 1;
    end
    else if(cnt == delay )begin
        ena <= 1;
        wea <= 0;
    end
    else begin 
        ena <= 0;
        wea <= 0; 
    end
end
always @(posedge clk_g) begin
    if (rst) begin
        addra <= 4'd0;
    end
    else if (cnt == delay ) begin
        if (addra == 4'd15) begin
            addra <= addra;
        end
        else begin
            addra <= addra + 4'd1;
        end
    end
end
always @(posedge clk_g) begin
    if(addra == 0)begin
        dina <= 16'b0000_0000_0000_0001;
    end
    if (ena && wea) begin
       case (addra)
        1:dina <= 16'b0000_0000_0000_0011;
        2:dina <= 16'b0000_0000_0000_0111;
        3:dina <= 16'b0000_0000_0000_1111;
        4:dina <= 16'b0000_0000_0001_1111;
        5:dina <= 16'b0000_0000_0011_1111;
        6:dina <= 16'b0000_0000_0111_1111;
        7:dina <= 16'b0000_0000_1111_1111;
        8:dina <= 16'b0000_0001_1111_1111;
        9:dina <= 16'b0000_0011_1111_1111;
        10:dina <= 16'b0000_0111_1111_1111;
        11:dina <= 16'b0000_1111_1111_1111;
        12:dina <= 16'b0001_1111_1111_1111;
        13:dina <= 16'b0011_1111_1111_1111;
        14:dina <= 16'b0111_1111_1111_1111;
        15:dina <= 16'b1111_1111_1111_1111;
        default: dina <= 16'b1111_1111_1111_1111;
    endcase 
    end
    else if ( ena && !wea) begin
        led_in <= mem_douta;
    end
    else if(rst_end)begin
        led_in <= 16'd0000_0000_0000_0000;
    end
end
endmodule
