`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 12:36:14
// Design Name: 
// Module Name: ram_tb
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


module ram_tb( );
reg Clk; 
reg wr_en;
reg rd_en;
reg [3:0]Addr;
reg [7:0]temp;

wire [7:0] Data; 
integer i,j;
ram uut(
.Clk(Clk),
.wr_en(wr_en),
.rd_en(rd_en),
.Addr(Addr),
.Data(Data)
);
always #10 Clk = ~Clk;
assign Data = (wr_en && !rd_en)?temp:8'hzz; 
task initialise;
begin
Clk = 0;
wr_en = 0;
rd_en = 0;
Addr = 0;
temp = 0;
end
endtask

task write(
input [3:0]A,
input [7:0]D
); 
begin
@(negedge Clk)
wr_en = 1;
rd_en = 0;
Addr = A;
temp = D;
end
endtask
task read(input [3:0]Ar); 
begin
@(negedge Clk)
wr_en = 0;
rd_en = 1;
Addr = Ar;
end
endtask
initial
 begin
 initialise;
for(i =0; i<16; i = i+1)
 begin
 write(i, $random);
end
for(j=0; j<16; j=j+1) 
begin
read(j);
end 
end
endmodule
