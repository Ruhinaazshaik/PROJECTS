`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 17:17:12
// Design Name: 
// Module Name: ringcntr_tb
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


module ringcntr_tb();
reg clk,set;
wire [3:0] count;
ringcntr dut(.clk(clk),.set(set),.count(count));
always #5 clk=~clk;
 initial begin
 clk=0;
 set=0;
 #5 set=1;
 #5 set=0;
 #80 $finish();
 
 end
endmodule
