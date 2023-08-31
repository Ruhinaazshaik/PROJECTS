`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 11:57:17
// Design Name: 
// Module Name: decoder3_8_tb
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


module decoder3_8_tb();
reg i0,i1,i2;
wire y0,y1,y2,y3,y4,y5,y6,y7;
decoder3_8 dec(y0,y1,y2,y3,y4,y5,y6,y7,i0,i1,i2);
initial begin
i0=0;
i1=0;
i2=0;
#100 i0=1; i1=0; i2=0;
#100 i0=0; i1=0; i2=1;
#100 i0=0; i1=1; i2=0;
#100 i0=0; i1=1; i2=1;
#100 i0=1; i1=0; i2=0;
#100 i0=1; i1=0; i2=1;
#100 i0=1; i1=1; i2=0;
#100 i0=1; i1=1; i2=1;
end
    
endmodule
