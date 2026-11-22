module exact_cla (
    input  wire       clk,
    input  wire       rst,
    input  wire [6:0] a,
    input  wire [6:0] b,
    output reg  [7:0] sum
);
    wire [6:0] g = a & b;
    wire [6:0] p = a ^ b;
    wire [7:0] c;
    assign c[0] = 1'b0;
    assign c[1] = g[0];
    assign c[2] = g[1] | (p[1] & g[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
    assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    assign c[5] = g[4] | (p[4] & g[3]) | (p[4] & p[3] & g[2]) | (p[4] & p[3] & p[2] & g[1]) | (p[4] & p[3] & p[2] & p[1] & g[0]);
    assign c[6] = g[5] | (p[5] & g[4]) | (p[5] & p[4] & g[3]) | (p[5] & p[4] & p[3] & g[2]) | (p[5] & p[4] & p[3] & p[2] & g[1]) | (p[5] & p[4] & p[3] & p[2] & p[1] & g[0]);
    assign c[7] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & g[3]) | (p[6] & p[5] & p[4] & p[3] & g[2]) | (p[6] & p[5] & p[4] & p[3] & p[2] & g[1]) | (p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & g[0]);

    always @(posedge clk) begin
        if (rst) sum <= 8'b0;
        else     sum <= {c[7], p[6:0] ^ c[6:0]};
    end
endmodule
