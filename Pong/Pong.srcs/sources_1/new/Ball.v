module Ball(
    input clk, reset,
    input [8:0] y_paddle1, y_paddle2,
    output reg [8:0] x_ball, y_ball,
    output reg Goal1, Goal2
);
    reg x_dir = 1, y_dir = 1;
    parameter BALL_SPEED = 4;
    parameter FIELD_WIDTH = 640, FIELD_HEIGHT = 480;
    parameter PADDLE_HEIGHT = 60, PADDLE_WIDTH = 10;

    initial begin
        x_ball = FIELD_WIDTH / 2;
        y_ball = FIELD_HEIGHT / 2;
        Goal1 = 0;
        Goal2 = 0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            x_ball <= FIELD_WIDTH / 2;
            y_ball <= FIELD_HEIGHT / 2;
            x_dir <= 1;
            y_dir <= 1;
            Goal1 <= 0;
            Goal2 <= 0;
        end else begin
            // Update Ball Position

            // Horizontal Movement
            if (x_dir) begin
                if (x_ball + BALL_SPEED < FIELD_WIDTH - PADDLE_WIDTH) begin
                    if (x_ball + BALL_SPEED >= FIELD_WIDTH - PADDLE_WIDTH && 
                        y_ball >= y_paddle2 && y_ball < y_paddle2 + PADDLE_HEIGHT) begin
                        x_dir <= 0;  // Bounce off right paddle
                    end
                    x_ball <= x_ball + BALL_SPEED;
                end else begin
                    x_dir <= 0;  // Goal for Player 1
                    Goal1 <= 1;
                    x_ball <= FIELD_WIDTH / 2;
                    y_ball <= FIELD_HEIGHT / 2;
                end
            end else begin
                if (x_ball > BALL_SPEED + PADDLE_WIDTH) begin
                    if (x_ball <= PADDLE_WIDTH && 
                        y_ball >= y_paddle1 && y_ball < y_paddle1 + PADDLE_HEIGHT) begin
                        x_dir <= 1;  // Bounce off left paddle
                    end
                    x_ball <= x_ball - BALL_SPEED;
                end else begin
                    x_dir <= 1;  // Goal for Player 2
                    Goal2 <= 1;
                    x_ball <= FIELD_WIDTH / 2;
                    y_ball <= FIELD_HEIGHT / 2;
                end
            end

            // Vertical Movement
            if (y_dir) begin
                if (y_ball + BALL_SPEED < FIELD_HEIGHT)
                    y_ball <= y_ball + BALL_SPEED;
                else
                    y_dir <= 0;  // Bounce off bottom wall
            end else begin
                if (y_ball > BALL_SPEED)
                    y_ball <= y_ball - BALL_SPEED;
                else
                    y_dir <= 1;  // Bounce off top wall
            end
        end
    end
endmodule
