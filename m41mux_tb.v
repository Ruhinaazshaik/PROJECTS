`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 12:36:58
// Design Name: 
// Module Name: m41mux_tb
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


module m41mux_tb();
wire y;
reg a, b, c, d, s1, s0;
m41mux mx(y,a,b,c,d,s1,s0);


initial begin
a=0; 
b=0;
c=0;
d=0;
s1=0; 
s0=0;

#50 $finish();
end
 always #1 s0=~s0;
 always #2 s1=~s1;
 always #2 a=~a;
 always #4 b=~b;
 always #8 c=~c;
 always #16 d=~d;

 
 
endmodule
