`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 17:24:55
// Design Name: 
// Module Name: twtring
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


module twtring(
input clk,
input rst,
output [3:0]out
);
reg [3:0]counter;
always @(posedge clk or posedge rst)
begin
if(rst)
   counter<=4'b0001;
   else
   counter<={counter[2:0],counter[3]};
   end        
   assign out = counter;
   endmodule

