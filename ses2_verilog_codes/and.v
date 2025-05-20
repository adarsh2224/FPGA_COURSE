module and_using_dff(
    input A, B, clk,
    output Q
);
    reg D;
    always @(posedge clk) begin
        D <= A & B;
    end
    assign Q = D;
endmodule
