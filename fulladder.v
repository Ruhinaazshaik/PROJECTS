`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 18:08:05
// Design Name: 
// Module Name: fulladder
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


module fulladder(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire t1,t2,t3;
xor(sum,a,b,cin);
xor(t3,a,b);
and(t1,a,b);
and(t2,t3,cin);
or(carry,t1,t2);
endmodule
