`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 23:50:09
// Design Name: 
// Module Name: tf_f_tb
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



module tf_f_tb();
reg t,clk,reset;
wire q,qb;
tf_f tf(t,clk,reset,q,qb);
initial
begin
t=0;
clk=0;
reset=1;
#10 reset=0;
#500 $finish();
end
always #5 clk=~clk;
always #30 t=~t;
endmodule




