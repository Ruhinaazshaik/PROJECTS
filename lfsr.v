`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 01:46:18
// Design Name: 
// Module Name: lfsr
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


module lfsr(
input clk,rst,
output reg [3:0]out);
    always @(posedge clk,posedge rst)
    if(rst)
     out <= 4'hf;
     else
     out<={out[2:0],(out[2]^out[1])};
endmodule
