`timescale 1ns / 1ps
module approx_cla_tb;
    reg clk, rst;
    reg  [6:0] a, b;
    wire [7:0] sum;
    integer i, j, errors, max_err, diff, err_cases;
    reg [7:0] expected;

    approx_cla dut (.clk(clk), .rst(rst), .a(a), .b(b), .sum(sum));

    initial clk = 0;
    always #50 clk = ~clk;          // 10 MHz

    initial begin
        $dumpfile("approx_cla_tb.vcd");
        $dumpvars(0, approx_cla_tb);
        errors = 0; max_err = 0; err_cases = 0;
        rst = 1; a = 0; b = 0;
        #200 rst = 0;
        for (i = 0; i < 128; i = i + 1)
            for (j = 0; j < 128; j = j + 1) begin
                a = i; b = j;
                @(posedge clk); #1;
                expected = {1'b0, a[6:4], 4'b0};
                expected = ((a[6:4] + b[6:4]) << 4) | (((a[3:2] + b[3:2]) & 2'b11) << 2) | 2'b11;
                if (sum !== expected) begin
                    $display("MISMATCH a=%0d b=%0d got=%0d exp=%0d", a, b, sum, expected);
                    errors = errors + 1;
                end
                diff = (a + b) - sum; if (diff < 0) diff = -diff;
                if (diff > max_err) max_err = diff;
                if (diff != 0) err_cases = err_cases + 1;
            end
        $display("Mismatches vs model: %0d | max error vs exact: %0d | inputs with error: %0d of 16384", errors, max_err, err_cases);
        $finish;
    end
endmodule
