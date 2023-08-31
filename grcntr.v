`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 03:29:58
// Design Name: 
// Module Name: grcntr
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


module grcntr(
input wire clk,
input wire rst,
output wire [3:0]gr
    );
    reg [3:0] counter;
    always@(posedge clk or posedge rst)begin
    if(rst)
     counter <= 4'b0000;
     else
     counter <= counter+1;
     end
     assign gr[0]=counter[0];
     assign gr[1]=counter[1];
     assign gr[2]=counter[2];
     assign gr[3]=counter[3];
endmodule
