`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 17:58:20
// Design Name: 
// Module Name: half_subractor
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


module half_subractor(diff,bor,a,b);
input a,b;
output diff,bor;
wire an;
not(an,a);
xor(diff,a,b);
and(bor,an,b);
endmodule
