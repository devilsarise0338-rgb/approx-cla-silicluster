module approx_cla (clk,
    rst,
    a,
    b,
    sum);
 input clk;
 input rst;
 input [6:0] a;
 input [6:0] b;
 output [7:0] sum;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net;

 sg13g2_inv_1 _28_ (.Y(_00_),
    .A(net11));
 sg13g2_nand2_1 _29_ (.Y(_07_),
    .A(net4),
    .B(net9));
 sg13g2_o21ai_1 _30_ (.B1(_00_),
    .Y(_14_),
    .A1(_11_),
    .A2(_13_));
 sg13g2_a21oi_1 _31_ (.A1(_11_),
    .A2(_13_),
    .Y(_04_),
    .B1(_14_));
 sg13g2_o21ai_1 _32_ (.B1(_07_),
    .Y(_15_),
    .A1(_08_),
    .A2(_09_));
 sg13g2_nand2_1 _33_ (.Y(_16_),
    .A(net5),
    .B(net10));
 sg13g2_xor2_1 _34_ (.B(net10),
    .A(net5),
    .X(_17_));
 sg13g2_or2_1 _35_ (.X(_18_),
    .B(_17_),
    .A(_15_));
 sg13g2_nand2_1 _36_ (.Y(_19_),
    .A(_15_),
    .B(_17_));
 sg13g2_and3_1 _37_ (.X(_03_),
    .A(_00_),
    .B(_18_),
    .C(_19_));
 sg13g2_a21oi_1 _38_ (.A1(_16_),
    .A2(_19_),
    .Y(_02_),
    .B1(net11));
 sg13g2_o21ai_1 _39_ (.B1(_00_),
    .Y(_20_),
    .A1(net3),
    .A2(net8));
 sg13g2_xnor2_1 _40_ (.Y(_08_),
    .A(net4),
    .B(net9));
 sg13g2_nor2b_1 _41_ (.A(_20_),
    .B_N(_09_),
    .Y(_01_));
 sg13g2_nand2_1 _42_ (.Y(_09_),
    .A(net3),
    .B(net8));
 sg13g2_o21ai_1 _43_ (.B1(_00_),
    .Y(_10_),
    .A1(_08_),
    .A2(_09_));
 sg13g2_a21oi_1 _44_ (.A1(_08_),
    .A2(_09_),
    .Y(_06_),
    .B1(_10_));
 sg13g2_nand2_1 _45_ (.Y(_11_),
    .A(net1),
    .B(net6));
 sg13g2_o21ai_1 _46_ (.B1(_00_),
    .Y(_12_),
    .A1(net1),
    .A2(net6));
 sg13g2_nor2b_1 _47_ (.A(_12_),
    .B_N(_11_),
    .Y(_05_));
 sg13g2_xnor2_1 _48_ (.Y(_13_),
    .A(net2),
    .B(net7));
 sg13g2_dfrbpq_1 _49_ (.RESET_B(net24),
    .D(_06_),
    .Q(net17),
    .CLK(clk));
 sg13g2_tiehi _49__25 (.L_HI(net24));
 sg13g2_dfrbpq_1 _50_ (.RESET_B(net25),
    .D(_03_),
    .Q(net18),
    .CLK(clk));
 sg13g2_tiehi _50__26 (.L_HI(net25));
 sg13g2_dfrbpq_1 _51_ (.RESET_B(net),
    .D(_02_),
    .Q(net19),
    .CLK(clk));
 sg13g2_tiehi _51__20 (.L_HI(net));
 sg13g2_dfrbpq_1 _52_ (.RESET_B(net20),
    .D(_00_),
    .Q(net12),
    .CLK(clk));
 sg13g2_tiehi _52__21 (.L_HI(net20));
 sg13g2_dfrbpq_1 _53_ (.RESET_B(net23),
    .D(_05_),
    .Q(net14),
    .CLK(clk));
 sg13g2_tiehi _53__24 (.L_HI(net23));
 sg13g2_dfrbpq_1 _54_ (.RESET_B(net21),
    .D(_04_),
    .Q(net15),
    .CLK(clk));
 sg13g2_tiehi _54__22 (.L_HI(net21));
 sg13g2_dfrbpq_1 _55_ (.RESET_B(net22),
    .D(_01_),
    .Q(net16),
    .CLK(clk));
 sg13g2_tiehi _55__23 (.L_HI(net22));
 sg13g2_buf_1 _63_ (.A(net12),
    .X(net13));
 sg13g2_buf_1 input1 (.A(a[2]),
    .X(net1));
 sg13g2_buf_1 input10 (.A(b[6]),
    .X(net10));
 sg13g2_buf_1 input11 (.A(rst),
    .X(net11));
 sg13g2_buf_1 input2 (.A(a[3]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(a[4]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(a[5]),
    .X(net4));
 sg13g2_buf_1 input5 (.A(a[6]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(b[2]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(b[3]),
    .X(net7));
 sg13g2_buf_1 input8 (.A(b[4]),
    .X(net8));
 sg13g2_buf_1 input9 (.A(b[5]),
    .X(net9));
 sg13g2_buf_1 output12 (.A(net12),
    .X(sum[0]));
 sg13g2_buf_1 output13 (.A(net13),
    .X(sum[1]));
 sg13g2_buf_1 output14 (.A(net14),
    .X(sum[2]));
 sg13g2_buf_1 output15 (.A(net15),
    .X(sum[3]));
 sg13g2_buf_1 output16 (.A(net16),
    .X(sum[4]));
 sg13g2_buf_1 output17 (.A(net17),
    .X(sum[5]));
 sg13g2_buf_1 output18 (.A(net18),
    .X(sum[6]));
 sg13g2_buf_1 output19 (.A(net19),
    .X(sum[7]));
endmodule
