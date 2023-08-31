`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 12:50:46
// Design Name: 
// Module Name: mux8_1_tb
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


module mux8_1_tb();
wire out;
reg D0, D1, D2, D3, D4, D5, D6, D7,  S0, S1, S2;
mux8_1 name(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 
initial 
begin
D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
#500 $finish; 
end 
always #1 D0=~D0;
always #2 D1=~D1;
always #3 D2=~D2;
always #4 D3=~D3;
always #5 D4=~D4;
always #6 D5=~D5;
always #7 D6=~D6;
always #8 D7=~D7;
always #9 S0=~S0;
always #10 S1=~S1;
always #11 S2=~S2;
always@(D0 or D1 or D2 or D3 or D4 or D5 or D6 or D7 or S0 or S1 or S2) 
$monitor("At time = %t, Output = %d", $time, out); 
endmodule;


    


