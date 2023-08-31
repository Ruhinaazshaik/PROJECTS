`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 18:00:08
// Design Name: 
// Module Name: comparator
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


module comparator(
    DinA, 
    DinB,  
    less,       
    equal,      
     greater 
    );
    input [3:0] DinA;
    input [3:0] DinB;
    output less;
     output equal;
     output greater;
     reg less;
     reg equal;
     reg greater;
    always @(DinA or DinB)
     begin
        if(DinA > DinB)   begin  
            less = 0;
            equal = 0;
            greater = 1;    end
        else if(DinA == DinB) begin 
            less = 0;
            equal = 1;
            greater = 0;    end
        else    begin 
            less = 1;
            equal = 0;
            greater =0;
        end 
    end
endmodule
