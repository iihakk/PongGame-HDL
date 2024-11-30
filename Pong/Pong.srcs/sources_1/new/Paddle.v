module Paddle(
    input clk, reset, move_up, move_down,
    output reg [8:0] y
);
    wire up, down;

    // Pushbutton detection
    Ex2_PushbuttonDetect e1(clk, reset, move_up, up);
    Ex2_PushbuttonDetect e2(clk, reset, move_down, down);

    parameter FIELD_HEIGHT = 480;  // Screen height
    parameter PADDLE_HEIGHT = 60; // Paddle height
    parameter MOVE_DISTANCE = 60; // Distance to move per click
    parameter UPDATE_DELAY = 1000000; // Number of clock cycles to wait between moves

    reg [19:0] move_timer; // Timer for movement updates

    // Initial position
    initial y = FIELD_HEIGHT / 2 - PADDLE_HEIGHT / 2;

    // Movement logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            y <= FIELD_HEIGHT / 2 - PADDLE_HEIGHT / 2; // Reset to center
            move_timer <= 0; // Reset timer
        end else begin
            // Update timer
            if (move_timer > 0)
                move_timer <= move_timer - 1;

            // Movement logic (only when timer reaches 0)
            if (move_timer == 0) begin
                if (up && y > MOVE_DISTANCE) begin
                    y <= y - MOVE_DISTANCE; // Move up
                    move_timer <= UPDATE_DELAY; // Reset timer
                end else if (down && y < FIELD_HEIGHT - PADDLE_HEIGHT - MOVE_DISTANCE) begin
                    y <= y + MOVE_DISTANCE; // Move down
                    move_timer <= UPDATE_DELAY; // Reset timer
                end
            end
        end
    end
endmodule
