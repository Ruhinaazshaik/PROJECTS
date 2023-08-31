`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 23:41:58
// Design Name: 
// Module Name: tf_f
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


module tf_f(t,clk,reset,q,qb);
input t,clk,reset;
output reg q;
output qb;

always @(posedge clk)
begin
if(reset)
q<=0;
else
 if(t)
 q<=~q;
 else
 q<=q;
end
assign qb=~q;
endmodule
