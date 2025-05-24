module pos_edge_det (
    input  wire clk,
    input  wire signal,
    output reg  pos_edge
);

    reg signal_d;

    always @(posedge clk) begin
        signal_d <= signal;
        pos_edge <= signal & ~signal_d;
    end

endmodule
