`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 04:28:32 PM
// Design Name: 
// Module Name: game
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


module game(input clk, reset, move_up1, move_down1, move_up2, move_down2, output hsync, vsync, [2:0] rgb, [3:0] anode, [6:0] segments);
    wire [8:0] y_paddle1, y_paddle2, x_ball, y_ball;
    wire Goal1, Goal2;
    wire [3:0] player1_units, player1_tens, player2_units, player2_tens;

    Paddle paddle1(clk, reset, move_up1, move_down1, y_paddle1);
    Paddle paddle2(clk, reset, move_up2, move_down2, y_paddle2);
    
    Ball b(clk, reset, y_paddle1, y_paddle2, x_ball, y_ball, Goal1, Goal2);
    
    Score s(clk, reset, Goal1, Goal2, player1_units, player1_tens, player2_units, player2_tens);
    segmentDecoder d(clk, player1_units, player1_tens, player2_units, player2_tens, anode, segments);
    
    VGAControl c(clk, reset, y_paddle1, y_paddle2, x_ball, y_ball, hsync, vsync, rgb);

endmodule
