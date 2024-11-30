module synchronizer (
    input clk,     
    input sig,     
    output sig1    );

    reg meta;        
    reg q;              // Output of the second D flip-flop (SIG1)

    always @(posedge clk) begin
        meta <= sig;   
        q <= meta;     
    end

    assign sig1 = q;    // Assign final output to sig1

endmodule
