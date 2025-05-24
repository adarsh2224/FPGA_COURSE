module logic_func8_with_reg (
    input  wire clk,
    input  wire a,b,c,d,e,f,g,h,
    output reg  y    // register used
);

    wire logic_result;

    assign logic_result = (a & b) | (c ^ d) | (e & f) | (g & h);

    always @(posedge clk)
        y <= logic_result;

endmodule
