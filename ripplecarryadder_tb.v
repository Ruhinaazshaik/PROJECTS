`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 12:20:49
// Design Name: 
// Module Name: ripplecarryadder_tb
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


module ripplecarryadder_tb( );
reg [3:0] a;
reg [3:0] b;
reg ctrl;
wire cout;
wire [3:0] s;

ripplecarryadder_tb ripplecarryadder(s,cout,a,b,ctrl);
initial 
begin
        a=0;
        b=0;
        ctrl=0;
        #30 ctrl=1;
        #50 $finish();
end
always #5 a=$random;
always #10 b=$random;
endmodule

