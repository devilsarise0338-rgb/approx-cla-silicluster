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
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire VPWR;
 wire VGND;

 sg13g2_inv_1 _28_ (.VDD(VPWR),
    .Y(_00_),
    .A(rst),
    .VSS(VGND));
 sg13g2_nand2_1 _29_ (.Y(_07_),
    .A(a[5]),
    .B(b[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _30_ (.B1(_00_),
    .VDD(VPWR),
    .Y(_14_),
    .VSS(VGND),
    .A1(_11_),
    .A2(_13_));
 sg13g2_a21oi_1 _31_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_11_),
    .A2(_13_),
    .Y(_04_),
    .B1(_14_));
 sg13g2_o21ai_1 _32_ (.B1(_07_),
    .VDD(VPWR),
    .Y(_15_),
    .VSS(VGND),
    .A1(_08_),
    .A2(_09_));
 sg13g2_nand2_1 _33_ (.Y(_16_),
    .A(a[6]),
    .B(b[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _34_ (.B(b[6]),
    .A(a[6]),
    .X(_17_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_or2_1 _35_ (.VSS(VGND),
    .VDD(VPWR),
    .X(_18_),
    .B(_17_),
    .A(_15_));
 sg13g2_nand2_1 _36_ (.Y(_19_),
    .A(_15_),
    .B(_17_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and3_1 _37_ (.X(_03_),
    .A(_00_),
    .B(_18_),
    .C(_19_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _38_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_16_),
    .A2(_19_),
    .Y(_02_),
    .B1(rst));
 sg13g2_o21ai_1 _39_ (.B1(_00_),
    .VDD(VPWR),
    .Y(_20_),
    .VSS(VGND),
    .A1(a[4]),
    .A2(b[4]));
 sg13g2_xnor2_1 _40_ (.Y(_08_),
    .A(a[5]),
    .B(b[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2b_1 _41_ (.A(_20_),
    .B_N(_09_),
    .Y(_01_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _42_ (.Y(_09_),
    .A(a[4]),
    .B(b[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _43_ (.B1(_00_),
    .VDD(VPWR),
    .Y(_10_),
    .VSS(VGND),
    .A1(_08_),
    .A2(_09_));
 sg13g2_a21oi_1 _44_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_08_),
    .A2(_09_),
    .Y(_06_),
    .B1(_10_));
 sg13g2_nand2_1 _45_ (.Y(_11_),
    .A(a[2]),
    .B(b[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _46_ (.B1(_00_),
    .VDD(VPWR),
    .Y(_12_),
    .VSS(VGND),
    .A1(a[2]),
    .A2(b[2]));
 sg13g2_nor2b_1 _47_ (.A(_12_),
    .B_N(_11_),
    .Y(_05_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _48_ (.Y(_13_),
    .A(a[3]),
    .B(b[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_dfrbpq_1 _49_ (.RESET_B(_26_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_06_),
    .Q(sum[5]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _50_ (.RESET_B(_27_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_03_),
    .Q(sum[6]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _51_ (.RESET_B(_21_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_02_),
    .Q(sum[7]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _52_ (.RESET_B(_22_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_00_),
    .Q(sum[0]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _53_ (.RESET_B(_25_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_05_),
    .Q(sum[2]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _54_ (.RESET_B(_23_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_04_),
    .Q(sum[3]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _55_ (.RESET_B(_24_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_01_),
    .Q(sum[4]),
    .CLK(clk));
 sg13g2_tiehi _56_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_21_));
 sg13g2_tiehi _57_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_22_));
 sg13g2_tiehi _58_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_23_));
 sg13g2_tiehi _59_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_24_));
 sg13g2_tiehi _60_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_25_));
 sg13g2_tiehi _61_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_26_));
 sg13g2_tiehi _62_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_27_));
 sg13g2_buf_1 _63_ (.A(sum[0]),
    .X(sum[1]),
    .VDD(VPWR),
    .VSS(VGND));
endmodule
