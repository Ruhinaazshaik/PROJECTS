`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 17:07:27
// Design Name: 
// Module Name: ringcntr
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


module ringcntr(
    input clk,
    input set,
    output reg [3:0] count
    );
    always @ (posedge clk)
    begin
    if(set)
    count<=4'b1000;
    else 
    begin
    count<=(count<<1);
    count[0]<=count[3];
    end
    end
endmodule


