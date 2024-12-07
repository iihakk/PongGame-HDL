module clock_divider(
    input clk_in,       // 100MHz clock input
    input reset,
    output reg clk_out  // Divided clock output
);
    parameter DIVISOR = 2000; // Adjust this for your desired frequency (100MHz / DIVISOR)
    reg [31:0] counter;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter == (DIVISOR / 2 - 1)) begin
                clk_out <= ~clk_out; // Toggle output clock
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
