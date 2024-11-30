
`timescale 1ns / 1ps
module Counter #(parameter WIDTH = 3, MAX_COUNT = 6)(
    input clk, reset, en,
    output reg [WIDTH-1:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (en) begin
            if (count == MAX_COUNT - 1)
                count <= 0;
            else
                count <= count + 1;
        end
    end
endmodule
