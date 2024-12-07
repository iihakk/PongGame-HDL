module segmentDecoder(
    input clk,
    input reset,
    input [3:0] player1_units, player1_tens,
    input [3:0] player2_units, player2_tens,
    output [3:0] anode,
    output [6:0] segments
);

 wire divclk;
        wire [1:0]count;
        wire [2:0] minTens;
        wire [3:0] minUnits;
        wire[2:0] secTens;
        wire [3:0] secUnits;
        reg [3:0] currentNum;
        clock_div#(250_000) cd(.clk(clk), .rst(reset), .clk_out(divclk));
        Counter #(2,4) c(.clk(divclk), .reset(reset), .en(1), .count(count));
        Ex4enable decoder(.en(count), .num(currentNum), .seg(segments), .anode(anode));
        always @* begin
            case(count)
            0: currentNum=player2_units;
            1: currentNum=player2_tens;
            2: currentNum=player1_units;
            3: currentNum=player1_tens;
            endcase
        end

endmodule
