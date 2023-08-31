`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 23:21:26
// Design Name: 
// Module Name: df_f_tb
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


module df_f_tb();
reg d,clk,rst;
wire q;
df_f uut(q,rst,clk,d); 
always
begin
#5 clk=~clk;
end
task din(input a); 
begin
 @(negedge clk)
d=a;
 end
endtask
task reset(input b);
 begin
 @(negedge clk) 
rst=b;
end
endtask
 initial begin
d=0;
rst=0; 
clk=0; #5;
din(0);
din(1);
 
reset(1); #30;
reset(0);
end
endmodule

