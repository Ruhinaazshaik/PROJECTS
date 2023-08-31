`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 01:55:33
// Design Name: 
// Module Name: lfsr_tb
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


module lfsr_tb();
reg clk;
reg rst;
wire[3:0]out;
lfsr dut(.clk(clk),.rst(rst),.out(out));
initial begin
clk=0;
rst=1;
#30 rst=0;
end
always 
#5 clk=~clk;
endmodule
