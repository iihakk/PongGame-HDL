`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 05:02:31 PM
// Design Name: 
// Module Name: Paddle
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


module Paddle(input clk, reset, move_up, move_down, output reg [8:0] y );
    wire up, down;
    Ex2_PushbuttonDetect d1(clk, reset, move_up, up);
    Ex2_PushbuttonDetect d2(clk, reset, move_down, down);
    
    initial begin
    y = 9'd256;
    end
    
    always @(posedge clk) begin     // the dimensions here need revising
        if (up&&y>7)
        y=y-9'd8;
        else if(down&&y<504)
        y=y+9'd8;
    end

endmodule
