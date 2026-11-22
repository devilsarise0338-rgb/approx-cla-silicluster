`timescale 1ns / 1ps
module wave_tb;
    reg clk, rst;
    reg  [6:0] a, b;
    wire [7:0] sum;
    integer k, ex, err;
    reg [6:0] ta [0:7];
    reg [6:0] tb_ [0:7];

    approx_cla dut (.clk(clk), .rst(rst), .a(a), .b(b), .sum(sum));

    initial clk = 0;
    always #50 clk = ~clk;          // 10 MHz

    initial begin
        $dumpfile("wave_tb.vcd");
        $dumpvars(0, wave_tb);
        ta[0]=5;   tb_[0]=3;
        ta[1]=12;  tb_[1]=10;
        ta[2]=27;  tb_[2]=100;
        ta[3]=64;  tb_[3]=64;
        ta[4]=85;  tb_[4]=42;
        ta[5]=99;  tb_[5]=77;
        ta[6]=120; tb_[6]=5;
        ta[7]=127; tb_[7]=127;
        rst = 1; a = 0; b = 0;
        #200 rst = 0;
        for (k = 0; k < 8; k = k + 1) begin
            a = ta[k]; b = tb_[k];
            @(posedge clk); #1;
            ex = a + b;
            err = ex - sum;
            $display("a=%3d b=%3d  exact=%3d  approx=%3d  error=%0d", a, b, ex, sum, err);
        end
        #100 $finish;
    end
endmodule
