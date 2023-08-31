`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 19:27:30
// Design Name: 
// Module Name: priorenc
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


module priorenc(
    input [2:0] inputs,
    output [2:0] encoded
);

    assign encoded = (inputs[2]) ? 3'b100 : 
                    (inputs[1]) ? 3'b010 : 
                    (inputs[0]) ? 3'b001 : 3'b000;

endmodule
