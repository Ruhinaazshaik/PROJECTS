`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 23:20:27
// Design Name: 
// Module Name: mux2_1_tb
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


module mux2_1_tb( );
wire out;
reg a, b, s0;
mux2_1 mx(out,a,b,s0);


initial begin
a=0; 
b=0; 
s0=0;

#10 $finish();
end
 always #1 s0=~s0;
 always #2 a=~a;
 always #4 b=~b;
endmodule
