`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 01:17:22
// Design Name: 
// Module Name: modn_ctr_tb
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


module modn_ctr_tb();
parameter N = 10;
parameter WIDTH=4;
 
 reg clk;
 reg rst;
 wire[WIDTH-1:0]out;
 
 modn_ctr u0( .clk(clk), .rst(rst), .out(out));
 always
 #10
  clk=~clk;
 initial begin
 {clk,rst}<=0;
 $monitor("T=%0t rst=%0b out=0x%0h",$time,rst,out);
 repeat(2) @(posedge clk);
 rst<=1;
 repeat(20) @(posedge clk);
 $finish;
 end
 endmodule
