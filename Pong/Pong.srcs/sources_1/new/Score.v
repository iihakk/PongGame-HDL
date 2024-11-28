module Score(
    input clk,
    input reset,
    input goal_player1,
    input goal_player2,
    output reg [3:0] player1_units,
    output reg [3:0] player1_tens,
    output reg [3:0] player2_units,
    output reg [3:0] player2_tens
);

    // One-pulse signals to register goals
    reg goal_player1_reg, goal_player2_reg;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            goal_player1_reg <= 0;
            goal_player2_reg <= 0;
        end else begin
            goal_player1_reg <= goal_player1;
            goal_player2_reg <= goal_player2;
        end
    end

    wire goal_player1_pulse = goal_player1 && ~goal_player1_reg;
    wire goal_player2_pulse = goal_player2 && ~goal_player2_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            player1_units <= 0;
            player1_tens <= 0;
            player2_units <= 0;
            player2_tens <= 0;
        end else begin
            if (goal_player1_pulse) begin
                if (player1_units == 9) begin
                    player1_units <= 0;
                    player1_tens <= player1_tens + 1;
                end else
                    player1_units <= player1_units + 1;
            end

            if (goal_player2_pulse) begin
                if (player2_units == 9) begin
                    player2_units <= 0;
                    player2_tens <= player2_tens + 1;
                end else
                    player2_units <= player2_units + 1;
            end
        end
    end

endmodule
