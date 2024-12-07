module game(
    input clk,
    input reset,
    input move_up1, move_down1, move_up2, move_down2,
    //input press,
    output hsync,
    output vsync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue,
    output [3:0] anode,
    output [6:0] segments,
    output sound
);

    wire goal_player1, goal_player2;
    wire [3:0] player1_units, player1_tens, player2_units, player2_tens;
  
    VGAControl vga(
        .clk100MHz(clk),
        .reset(reset),
        .move_up1(move_up1),
        .move_down1(move_down1),
        .move_up2(move_up2),
        .move_down2(move_down2),
        .hsync(hsync),
        .vsync(vsync),
        .red(red),
        .green(green),
        .blue(blue),
        .goal_player1(goal_player1),
        .goal_player2(goal_player2),
        .sound(sound)
    );

    Score score(
        .clk(clk),
        .reset(reset),
        .goal_player1(goal_player1),
        .goal_player2(goal_player2),
        .player1_units(player1_units),
        .player1_tens(player1_tens),
        .player2_units(player2_units),
        .player2_tens(player2_tens)
    );

    segmentDecoder decoder(
        .clk(clk),
        .reset(reset),
        .player1_units(player1_units),
        .player1_tens(player1_tens),
        .player2_units(player2_units),
        .player2_tens(player2_tens),
        .anode(anode),
        .segments(segments)
    );
 

endmodule