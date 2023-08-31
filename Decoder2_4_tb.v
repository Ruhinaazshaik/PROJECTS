`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 11:29:52
// Design Name: 
// Module Name: Decoder2_4_tb
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


module Decoder2_4_tb();
reg i0,i1;
wire y0,y1,y2,y3;
decoder2_4 dec(y0,y1,y2,y3,i0,i1);
initial begin
i0=0;
i1=0;
#100 i0=1; i1=0;
#100 i0=0; i1=1;
#100 i0=1; i1=1;
end
    
endmodule
