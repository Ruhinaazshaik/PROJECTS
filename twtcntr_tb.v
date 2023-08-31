`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 17:40:19
// Design Name: 
// Module Name: twtcntr_tb
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


module twtcntr_tb();
reg clk;
reg rst;
wire [3:0]out;
twtring dut(.clk(clk), .rst(rst), .out(out));
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
#10 rst=0;
#20 $finish;
end
endmodule
