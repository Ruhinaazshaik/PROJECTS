`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 03:07:08
// Design Name: 
// Module Name: gr_bin_tb
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


module gr_bin_tb();
reg [7:0]din;
wire [7:0]dout;
gr_bin dut(.din(din),.dout(dout));
initial begin
for (din=0; din<256; din=din+1)begin
#5;
end
$finish();
end
endmodule
