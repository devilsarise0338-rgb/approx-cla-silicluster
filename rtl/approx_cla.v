module approx_cla (
    input  wire       clk,
    input  wire       rst,
    input  wire [6:0] a,
    input  wire [6:0] b,
    output reg  [7:0] sum
);
    // LSP: bits 1:0 constant 1
    wire s0 = 1'b1;
    wire s1 = 1'b1;

    // LSP: 2-bit approximate adder on bits 3:2 (carry discarded)
    wire s2 = a[2] ^ b[2];
    wire s3 = a[3] ^ b[3] ^ (a[2] & b[2]);

    // MSP: exact 3-bit CLA on bits 6:4, carry-in = 0
    wire [2:0] g = a[6:4] & b[6:4];
    wire [2:0] p = a[6:4] ^ b[6:4];
    wire c1 = g[0];
    wire c2 = g[1] | (p[1] & g[0]);
    wire c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
    wire s4 = p[0];
    wire s5 = p[1] ^ c1;
    wire s6 = p[2] ^ c2;

    always @(posedge clk) begin
        if (rst) sum <= 8'b0;
        else     sum <= {c3, s6, s5, s4, s3, s2, s1, s0};
    end
endmodule
