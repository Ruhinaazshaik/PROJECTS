`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2023 22:50:02
// Design Name: 
// Module Name: jkflipflop_tb
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


module jkflipflop_tb();
reg j,k,rst,clk; 
wire q;
jkflipflop uut(.j(j),
.k(k),
.clk(clk),
.rst(rst),
.q(q)
);

always
#5 clk=~clk;
task jkin(input[1:0]a); 
begin
 @(negedge clk)
{j,k}=a;
 end
endtask
task reset(input b); 
begin
 
@(negedge clk) 
rst=b;
 end
endtask 
initial
begin rst=0;
 
j=0; k=0;
clk=0; #5;
jkin(0);
jkin(1);
jkin(2);
jkin(3);
reset(1); #30;
reset(0); 
end




endmodule
