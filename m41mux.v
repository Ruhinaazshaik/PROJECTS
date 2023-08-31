`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 12:36:16
// Design Name: 
// Module Name: m41mux
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


module m41mux(y, a, b, c, d, s1, s0);
output y;
input a,b,c,d,s1,s0;
wire s0bar, s1bar, y0, y1, y2, y3;
not n1(s0bar,s0); 
not n2(s1bar,s1);
and a1(y0,a,s0bar,s1bar);
and a2(y1,b,s0bar,s1);
and a3(y2,c,s0,s1bar);
and  a4(y3,d,s0,s1);
or or1(y, y0,y1,y2,y3);
endmodule
