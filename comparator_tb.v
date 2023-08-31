`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 18:06:46
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [3:0] DinA;
    reg [3:0] DinB;
    wire less;
    wire equal;
    wire greater;
    comparator uut (
        .DinA(DinA), 
        .DinB(DinB), 
        .less(less), 
        .equal(equal), 
        .greater(greater)
    );

    initial begin
        DinA = 10;
        DinB = 12;
        #100;
        DinA = 15;
        DinB = 11;
        #100;
        DinA = 10;
        DinB = 10;
        #100;
    end
endmodule