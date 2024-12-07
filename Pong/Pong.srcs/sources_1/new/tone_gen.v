module tone_gen(
    input clk,
    input enable,
    input [21:0] counter,
    output reg sound
);
    reg [21:0] num;

    always @(posedge clk) begin
        if (!enable) begin
            // Silence the sound and reset the counter when disabled
            sound <= 0;
            num <= 0;
        end else begin
            if (num == counter) begin
                sound <= ~sound;  // Toggle sound
                num <= 0;         // Reset counter
            end else begin
                num <= num + 1;   // Increment counter
            end
        end
    end
endmodule
