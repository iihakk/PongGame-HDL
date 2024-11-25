`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 06:43:58 PM
// Design Name: 
// Module Name: Ex1_EdgeDetect
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


module Ex1_EdgeDetect(input clk, rst, in, output out);
reg[1:0] state, next_state;
parameter [1:0] A=2'b00,B=2'b01,C=2'b10;
always @(*) begin
case(state)
A: next_state=(in==0)?A: B;
B: next_state=(in==0)?A:C;
C: next_state=(in==0)?A:C;
default next_state=0;
endcase
end
always @(posedge clk) begin
if(rst) 
state<=2'b0;
else
state<=next_state;
end
assign out = (state==B);
endmodule
