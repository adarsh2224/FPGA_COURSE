module neg_edge_det (
    input  wire clk,
    input  wire signal,
    output reg  neg_edge
);

    reg signal_d;

    always @(posedge clk) begin
        signal_d <= signal;
        neg_edge <= ~signal & signal_d;
    end

endmodule
