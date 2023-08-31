`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 18:53:20
// Design Name: 
// Module Name: fullsubractor
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


module fullsubractor(diff,bor,a,b,bin);
input a,b,bin;
output diff,bor;
wire abar,o1bar,o2,o3,o1;
not n1(abar,a);
not n2(o1bar,o1);
xor g6(o1,a,b);
xor g1(diff,o1,bin);
and g2(o2,abar,b);
and g3(o3,o1bar,bin);
or g4(bor,o2,o3);

endmodule
