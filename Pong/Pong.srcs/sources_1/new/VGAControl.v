
module VGAControl(
    input clk100MHz,
    input reset,
    input move_up1, move_down1, move_up2, move_down2,
    output hsync,
    output vsync,
    output [3:0] red, green, blue,
    output reg goal_player1,      // Signal to increment Player 1 score
    output reg goal_player2,       // Signal to increment Player 2 score
    output sound
);
wire clk_audio;

clock_divider #(4000) audio_clk_divider (
    .clk_in(clk100MHz), // Input clock
    .reset(reset),      // Reset signal
    .clk_out(clk_audio) // Divided clock output
);

    // Clock Divider for 25MHz VGA Clock
    reg clk25MHz = 0;
    reg [1:0] clk_div = 0;

    always @(posedge clk100MHz or posedge reset) begin
        if (reset) begin
            clk_div <= 0;
            clk25MHz <= 0;
        end else begin
            clk_div <= clk_div + 1;
            clk25MHz <= clk_div[1];
        end
    end
    wire clk_400;
    wire valid;
    reg [21:0] tone;

//assign tone = press ?22'd125000 :22'd75000;






reg paddle_hit;  // Signal to indicate a paddle collision

always @(posedge clk25MHz or posedge reset) begin
    if (reset) begin
        paddle_hit <= 0;  // Explicitly clear paddle_hit on reset
    end else if ((ball_dir_x == 1 && ball_x + BALL_SIZE >= H_DISPLAY - PADDLE_WIDTH && 
                  ball_y >= y_paddle2 && ball_y <= y_paddle2 + PADDLE_HEIGHT) || 
                 (ball_dir_x == 0 && ball_x - BALL_SIZE <= PADDLE_WIDTH && 
                  ball_y >= y_paddle1 && ball_y <= y_paddle1 + PADDLE_HEIGHT)) begin
        paddle_hit <= 1;  // Register a paddle hit
    end else begin
        paddle_hit <= 0;  // Clear when no collision
    end
end

reg paddle_hit_sync;

always @(posedge clk_slow or posedge reset) begin
    if (reset) begin
        paddle_hit_sync <= 0;
    end else begin
        paddle_hit_sync <= paddle_hit;  // Synchronize to clk_slow
    end
end









// Frequency Divider
wire sound_enable;
reg [21:0] tone_frequency;
clock_divider #(100000) slow_clk_divider (
    .clk_in(clk100MHz),  // 100 MHz input
    .reset(reset),
    .clk_out(clk_slow)   // 1 kHz output
);
reg [1:0] sound_priority;  // 0: no sound, 1: paddle, 2: goal

always @(posedge clk_slow or posedge reset) begin
    if (reset) begin
        tone_frequency <= 0;
        sound_priority <= 0;
    end else if (goal_player1 || goal_player2) begin
        tone_frequency <= 12;  // 1 kHz tone for goals
        sound_priority <= 2'd2;
    end else if (paddle_hit_sync) begin  // Use synchronized signal
        tone_frequency <= 8;  // 500 Hz tone for paddle hits
        sound_priority <= 2'd1;
    end else begin
        tone_frequency <= 0;  // Silence
        sound_priority <= 2'd0;
    end
end





assign sound_enable = (tone_frequency != 0);

tone_gen sound_generator (
    .clk(clk_audio),      
    .enable(sound_enable), 
    .counter(tone_frequency),
    .sound(sound)
);



    // VGA Timing Parameters
    parameter H_DISPLAY = 640;
    parameter V_DISPLAY = 480;
    parameter Center_X = H_DISPLAY / 2;
    parameter Center_Y = V_DISPLAY / 2;
    parameter BALL_SIZE = 10;
    parameter BALL_RADUIS = 5;
    parameter PADDLE_WIDTH = 8;
    parameter PADDLE_HEIGHT = 100;
    parameter DELAY_VALUE = 15;
    
    reg [9:0] h_counter = 0;
    reg [9:0] v_counter = 0;
    
    reg [15:0] delay_counter; // Counter to make delay for resetting position 
    reg delay_active;       //cpunter to make delay for resetting position 
    
    reg [9:0] ball_x = H_DISPLAY / 2;
    reg [9:0] ball_y = V_DISPLAY / 2;
    reg ball_dir_x = 1; 
    reg ball_dir_y = 1; // 1: down, 0: up

    wire [8:0] y_paddle1, y_paddle2;

    Paddle paddle1(clk100MHz, reset, move_up1, move_down1, y_paddle1);
    Paddle paddle2(clk100MHz, reset, move_up2, move_down2, y_paddle2);

    // Horizontal Counter Logic
    always @(posedge clk25MHz or posedge reset) begin
        if (reset)
            h_counter <= 0;
        else if (h_counter == 799)
            h_counter <= 0;
        else
            h_counter <= h_counter + 1;
    end

    // Vertical Counter Logic
    always @(posedge clk25MHz or posedge reset) begin
        if (reset)
            v_counter <= 0;
        else if (h_counter == 799) begin
            if (v_counter == 524)
                v_counter <= 0;
            else
                v_counter <= v_counter + 1;
        end
    end

    assign hsync = ~(h_counter >= 656 && h_counter < 752);
    assign vsync = ~(v_counter >= 490 && v_counter < 492);

    always @(posedge clk25MHz or posedge reset) begin
        if (reset) begin
            ball_x <= Center_X;
            ball_y <= Center_Y;
            ball_dir_x <= 1;
            ball_dir_y <= 1;
            goal_player1 <= 0;
            goal_player2 <= 0;
            delay_active <= 0;         // Reset delay flag
            delay_counter <= 0;       // Reset delay counter
        end else if (h_counter == 0 && v_counter == 0) begin
            goal_player1 <= 0;
            goal_player2 <= 0;

            // If delay is not active, process ball movement and check for scoring
            if (!delay_active) begin
                // Check for paddle collision
                if (ball_dir_x == 1 && ball_x+BALL_SIZE  >= H_DISPLAY - PADDLE_WIDTH && ball_y >= y_paddle2 && ball_y <= y_paddle2 + PADDLE_HEIGHT) begin                  
                        ball_dir_x <= 0; // Bounce off paddle
                    
                        end
                else if(ball_dir_x == 1 && ball_x+BALL_SIZE >= H_DISPLAY && ( ball_y < y_paddle2 || ball_y > y_paddle2 + PADDLE_HEIGHT ))begin  
                        goal_player1 <= 1; // Player 1 scores
                        delay_counter <= DELAY_VALUE;  // Start delay after goal
                        delay_active <= 1;             // Activate delay
                        ball_dir_x <= 0; // Reset moving left       
                         
                    end
               else if (ball_dir_x == 0 && ball_x - BALL_SIZE <= PADDLE_WIDTH && ball_y >= y_paddle1 && ball_y <= y_paddle1 + PADDLE_HEIGHT) begin     
                        ball_dir_x <= 1; // Bounce off paddle
                     
                        end
                 else if(ball_dir_x == 0 && ball_x - BALL_SIZE <= 5 &&( ball_y < y_paddle1 || ball_y > y_paddle1 + PADDLE_HEIGHT ))begin
                 
                        goal_player2 <= 1; // Player 2 scores
                        delay_counter <= DELAY_VALUE;  // Start delay after goal
                        delay_active <= 1;             // Activate delay
                        ball_dir_x <= 1; // Reset moving right  
                                          
                    end
                 else begin
                    // Update Ball X Position
                    ball_x <= ball_dir_x ? ball_x + 4 : ball_x - 4;
                end
                // Update Ball Y Position
                if (ball_dir_y) begin
                    if (ball_y + BALL_SIZE < V_DISPLAY)
                        ball_y <= ball_y + 4;
                    else
                        ball_dir_y <= 0; // Bounce off bottom
                end 
                else begin
                    if (ball_y > 0)begin
                        ball_y <= ball_y - 4;
                        end
                    else begin
                        ball_dir_y <= 1; // Bounce off top            
                    end
                end
            end else begin  // If delay is active, countdown the delay counter            
                if (delay_counter > 0) begin
                    delay_counter <= delay_counter - 1; // Countdown
                end 
                
                else begin
                    delay_active <= 0;       // Deactivate delay after countdown
                     ball_x <= H_DISPLAY / 2;
                     ball_y <= V_DISPLAY / 2;
                end
          end
       end
   end

    wire display_area = (h_counter < H_DISPLAY) && (v_counter < V_DISPLAY);
    
    wire ball_area = ( (h_counter-ball_x)*(h_counter-ball_x)+ (v_counter - ball_y) * (v_counter - ball_y) <= BALL_RADUIS * BALL_RADUIS);

    wire paddle1_area = (h_counter >= 0 && h_counter < PADDLE_WIDTH &&
                         v_counter >= y_paddle1 && v_counter < y_paddle1 + PADDLE_HEIGHT);
    wire paddle2_area = (h_counter >= H_DISPLAY - PADDLE_WIDTH && h_counter < H_DISPLAY &&
                         v_counter >= y_paddle2 && v_counter < y_paddle2 + PADDLE_HEIGHT);

    assign red = (display_area && !(paddle1_area || paddle2_area)) ? 4'b1111 : 4'b0000;
    assign green = (display_area && !(ball_area || paddle1_area || paddle2_area)) ? 4'b1111 : 4'b0000;
    assign blue = (display_area && !(ball_area)) ? 4'b1111 : 4'b0000;

endmodule
