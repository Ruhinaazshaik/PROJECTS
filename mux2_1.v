`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 23:10:45
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(out, a, b, s0);
input a,b,s0;
output out;
wire s0bar, s0, y0, y1;
not n1(s0bar,s0);
not(s1bar,s1);
and(y0,s0bar,a);
and(y1,s0,b);
or(out,y0,y1);
endmodule
