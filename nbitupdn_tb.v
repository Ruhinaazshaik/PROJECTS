`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2023 12:26:27
// Design Name: 
// Module Name: nbitupdn_tb
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


module nbitupdn_tb();
reg reset_n, ld, U_D, clk;
   reg [2:0] data_in;
   wire [2:0] count;

   nbitupdn dut(.reset_n(reset_n), .ld(ld), .U_D(U_D), .clk(clk), .data_in(data_in), .count(count));
      always #5 clk = ~clk;
      initial begin
      reset_n = 1;ld = 0;U_D = 0; clk = 0;
      data_in = 3'b000;
      #5 reset_n = 0;
      #5 ld = 1;
      #5 ld = 0;
      #5 U_D = 1;
      #2 data_in=001;
      #2 data_in=010;
      #2 data_in=011;
      #2 data_in=100;
      #2 data_in=101;
      #2 data_in=110;
      #2 data_in=111;
      #40 $finish;
      
      
   end
endmodule
