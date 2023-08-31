`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 11:15:03
// Design Name: 
// Module Name: decoder2_4
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


module decoder2_4(y0, y1, y2, y3, i0, i1);
input i0;
input i1;
output y0;
output y1;
output y2;
output y3;

not(i0n,i0);
not(i1n,i1);
and(y0,i0n,i1n);
and(y1,i0n,i1);
and(y2,i0,i1n);
and(y3,i0,i1);

    
endmodule
