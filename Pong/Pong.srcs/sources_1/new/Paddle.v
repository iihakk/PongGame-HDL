module Paddle(
    input clk, reset, move_up, move_down,
    output reg [8:0] y
);
    parameter PADDLE_SPEED = 1;
    parameter FIELD_HEIGHT = 480;
    parameter PADDLE_HEIGHT = 60;

    initial y = FIELD_HEIGHT / 2 - PADDLE_HEIGHT / 2;

    always @(posedge clk or posedge reset) begin
        if (reset)
            y <= FIELD_HEIGHT / 2 - PADDLE_HEIGHT / 2;
        else begin
            if (move_up && y > PADDLE_SPEED)
                y <= y - PADDLE_SPEED;
            else if (move_down && y < FIELD_HEIGHT - PADDLE_HEIGHT - PADDLE_SPEED)
                y <= y + PADDLE_SPEED;
        end
    end
endmodule
