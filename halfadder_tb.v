`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 16:54:16
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb();
reg a,b;
wire sum,carry;
halfadder ha(sum,carry,a,b);
initial begin
a=0;
b=0;
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end

 initial #10 $finish();
 
endmodule

