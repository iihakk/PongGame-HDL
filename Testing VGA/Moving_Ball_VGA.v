module vga_ball(
    input clk100MHz,
    input reset,
    output hsync,
    output vsync,
    output [3:0] red,
    output [3:0] green,
    output [3:0] blue
);
    reg clk25MHz = 0;
    reg [1:0] clk_div = 0;

    always @(posedge clk100MHz) begin
        clk_div <= clk_div + 1;
        clk25MHz <= clk_div[1];
    end

    parameter H_DISPLAY = 640;
    parameter H_FRONT = 16;
    parameter H_SYNC = 96;
    parameter H_BACK = 48;
    parameter H_TOTAL = 800;

    parameter V_DISPLAY = 480;
    parameter V_FRONT = 10;
    parameter V_SYNC = 2;
    parameter V_BACK = 33;
    parameter V_TOTAL = 525;

    parameter BALL_SIZE = 10;

    reg [9:0] h_counter = 0;
    reg [9:0] v_counter = 0; 

    reg [9:0] ball_x = 100; 
    reg [9:0] ball_y = 200;  
    reg ball_dir = 1;         

    always @(posedge clk25MHz or posedge reset) begin
        if (reset) begin
            h_counter <= 0;
        end else if (h_counter == H_TOTAL - 1) begin
            h_counter <= 0;
        end else begin
            h_counter <= h_counter + 1;
        end
    end

    always @(posedge clk25MHz or posedge reset) begin
        if (reset) begin
            v_counter <= 0;
        end else if (h_counter == H_TOTAL - 1) begin
            if (v_counter == V_TOTAL - 1) begin
                v_counter <= 0;
            end else begin
                v_counter <= v_counter + 1;
            end
        end
    end

    assign hsync = (h_counter >= H_DISPLAY + H_FRONT) && (h_counter < H_DISPLAY + H_FRONT + H_SYNC);
    assign vsync = (v_counter >= V_DISPLAY + V_FRONT) && (v_counter < V_DISPLAY + V_FRONT + V_SYNC);

    always @(posedge clk25MHz or posedge reset) begin
        if (reset) begin
            ball_x <= 100;
            ball_dir <= 1;
        end else if (h_counter == 0 && v_counter == 0) begin
            if (ball_dir) begin
                if (ball_x < H_DISPLAY - BALL_SIZE - 1) begin
                    ball_x <= ball_x + 1;
                end else begin
                    ball_dir <= 0;
                end
            end else begin
                if (ball_x > 1) begin
                    ball_x <= ball_x - 1;
                end else begin
                    ball_dir <= 1;
                end
            end
        end
    end

    wire display_area = (h_counter < H_DISPLAY) && (v_counter < V_DISPLAY);
    wire ball_area = (h_counter >= ball_x && h_counter < ball_x + BALL_SIZE &&
                      v_counter >= ball_y && v_counter < ball_y + BALL_SIZE);

    assign red = (display_area && ball_area) ? 4'b1111 : 4'b0000;
    assign green = (display_area && ball_area) ? 4'b1111 : 4'b0000;
    assign blue = (display_area && ball_area) ? 4'b1111 : 4'b0000;

endmodule
