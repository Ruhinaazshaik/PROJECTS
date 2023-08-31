`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 02:53:56
// Design Name: 
// Module Name: gr_bin
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


module gr_bin(
input[7:0] din,
output[7:0] dout
    );
    assign dout[7]=din[7];
    assign dout[6]=din[7]^din[6];
    assign dout[5]=din[7]^din[6]^din[5];
    assign dout[4]=din[7]^din[6]^din[5]^din[4];
    assign dout[3]=din[7]^din[6]^din[5]^din[4]^din[3];
    assign dout[2]=din[7]^din[6]^din[5]^din[4]^din[3]^din[2];
    assign dout[1]=din[7]^din[6]^din[5]^din[4]^din[3]^din[2]^din[1];
    assign dout[0]=din[7]^din[6]^din[5]^din[4]^din[3]^din[2]^din[1]^din[0];
   
endmodule
