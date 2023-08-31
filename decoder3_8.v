`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 11:50:29
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(y0, y1, y2, y3, y4, y5, y6, y7, i0, i1, i2);
input i0;
input i1;
input i2;
output y0;
output y1;
output y2;
output y3;
output y4;
output y5;
output y6;
output y7;

not(i0n,i0);
not(i1n,i1);
not(i2n,i2);
and(y0,i0n,i1n,i2n);
and(y1,i0n,i1n,i2);
and(y2,i0n,i1,i2n);
and(y3,i0n,i1,i2);
and(y4,i0,i1n,i2n);
and(y5,i0,i1n,i2);
and(y6,i0,i1,i2n);
and(y7,i0,i1,i2);

    
endmodule


