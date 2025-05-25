module memory #(
    parameter WIDTH = 25,
    parameter DEPTH = 2000,
    parameter ADDR  = 11             // log2(2000) ≈ 11
)(
    input  clk,
    input  rst,
    input  [ADDR-1:0] addr,
    input  [WIDTH-1:0] wdata,
    input  wr_rd,        // 1 = write, 0 = read
    input  valid,
    output reg [WIDTH-1:0] rdata,
    output reg ready
);

    // Instruct tool to infer block RAM
    (* ram_style = "block" *) reg [WIDTH-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 0;
            ready <= 0;
        end else if (valid) begin
            ready <= 1;
            if (wr_rd)
                mem[addr] <= wdata;     // Write operation
            else
                rdata <= mem[addr];     // Read operation
        end else begin
            ready <= 0;
        end
    end

endmodule
