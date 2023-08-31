`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 23:18:54
// Design Name: 
// Module Name: df_f
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


module df_f(q,rst,clk,d); 
input clk,d,rst;
output reg q;
 always@(posedge clk) 
 begin
    if(rst)
        q<=0;
    else
        q<=d;
end
endmodule


