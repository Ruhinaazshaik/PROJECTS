`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 01:11:47
// Design Name: 
// Module Name: modn_ctr
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


module modn_ctr
#(parameter N = 10,
 parameter WIDTH=4)
 (input clk,
 input rst,
 output reg[WIDTH-1:0]out);
 always @(posedge clk)begin
 if(!rst)begin
 out<=0;
 end 
 else begin
 if(out == N-1)
 out<=0;
 else
 out<=out+1;
end
end
endmodule
