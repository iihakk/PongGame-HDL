
module Score(input clk, reset, Goal1, Goal2, output [3:0] player1_units, [3:0] player1_tens, [3:0] player2_units, [3:0] player2_tens);

wire ten1, ten2;
    Counter #(4,10) p1u(clk, reset, Goal1, player1_units);
    Counter #(4,10) p1t(clk, reset, ten1, player1_tens);
    Counter #(4,10) p2u(clk, reset, Goal2, player2_units);
    Counter #(4,10) p2t(clk, reset, ten2, player2_tens);
    assign ten1=(Goal1&& player1_units==4'd9)?1'b1:1'b0;
    assign ten2=(Goal2&& player2_units==4'd9)?1'b1:1'b0;
endmodule