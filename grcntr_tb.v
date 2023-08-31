`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 03:37:25
// Design Name: 
// Module Name: grcntr_tb
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


module grcntr_tb();
reg clk;
reg rst;
wire [3:0]gr;
grcntr dut(.clk(clk), .rst(rst), .gr(gr));
always begin
#5 clk=~clk;
end            
initial begin
clk=0;
rst=0;
#10 rst=1;
#20 rst=0;
#100 $finish();
end
endmodule

