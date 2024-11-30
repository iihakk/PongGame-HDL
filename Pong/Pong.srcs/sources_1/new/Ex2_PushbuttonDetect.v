`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 07:03:29 PM
// Design Name: 
// Module Name: Ex2_PushbuttonDetect
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


module Ex2_PushbuttonDetect(input clk,rst, in, output out
    );
    wire newclk, deb,sync;
    clock_div#(1000000) cd(.clk(clk), .rst(rst), .clk_out(newclk));
    debouncer d(.clk(newclk), .rst(rst), .in(in), .out(deb));
    synchronizer s(.clk(newclk),.sig(deb),.sig1(sync));
    Ex1_EdgeDetect e( .clk(newclk), .rst(rst), .in(sync), .out(out));
endmodule
