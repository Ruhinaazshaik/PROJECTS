`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 19:06:05
// Design Name: 
// Module Name: fullsubractor_tb
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


module fullsubractor_tb();
reg a,b,bin;
wire diff,bor;
fullsubractor fs(diff,bor,a,b,bin);
initial begin
a=0;
b=0;
bin=0;
end
always #4 a=a+1'b1;
always #2 b=b+1'b1;
always #1 bin=bin+1'b1;
initial #20 $finish;

endmodule
