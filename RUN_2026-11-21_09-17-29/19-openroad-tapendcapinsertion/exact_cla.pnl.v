module exact_cla (clk,
    rst,
    a,
    b,
    sum);
 input clk;
 input rst;
 input [6:0] a;
 input [6:0] b;
 output [7:0] sum;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire VPWR;
 wire VGND;

 sg13g2_inv_1 _051_ (.VDD(VPWR),
    .Y(_008_),
    .A(rst),
    .VSS(VGND));
 sg13g2_xnor2_1 _052_ (.Y(_009_),
    .A(a[0]),
    .B(b[0]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _053_ (.B(b[1]),
    .A(a[1]),
    .X(_017_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand3_1 _054_ (.B(b[0]),
    .C(_017_),
    .A(a[0]),
    .Y(_018_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _055_ (.Y(_019_),
    .A(a[2]),
    .B(b[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _056_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_016_),
    .A2(_018_),
    .Y(_020_),
    .B1(_019_));
 sg13g2_a21o_1 _057_ (.A2(_018_),
    .A1(_016_),
    .B1(_019_),
    .X(_021_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _058_ (.Y(_022_),
    .A(a[3]),
    .B(b[3]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _059_ (.VDD(VPWR),
    .Y(_023_),
    .A(_022_),
    .VSS(VGND));
 sg13g2_a21oi_1 _060_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_015_),
    .A2(_021_),
    .Y(_024_),
    .B1(_022_));
 sg13g2_nor2_1 _061_ (.A(_013_),
    .B(_024_),
    .Y(_025_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _062_ (.B(b[4]),
    .A(a[4]),
    .X(_026_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _063_ (.A(rst),
    .B(_009_),
    .Y(_007_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2b_1 _064_ (.A(_025_),
    .B_N(_026_),
    .Y(_027_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _065_ (.B1(_026_),
    .VDD(VPWR),
    .Y(_028_),
    .VSS(VGND),
    .A1(_013_),
    .A2(_024_));
 sg13g2_xnor2_1 _066_ (.Y(_029_),
    .A(a[5]),
    .B(b[5]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _067_ (.VDD(VPWR),
    .Y(_030_),
    .A(_029_),
    .VSS(VGND));
 sg13g2_a21oi_1 _068_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_012_),
    .A2(_028_),
    .Y(_031_),
    .B1(_029_));
 sg13g2_nand2_1 _069_ (.Y(_032_),
    .A(a[6]),
    .B(b[6]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _070_ (.B(b[6]),
    .A(a[6]),
    .X(_033_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_or3_1 _071_ (.A(_010_),
    .B(_031_),
    .C(_033_),
    .X(_034_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _072_ (.B1(_033_),
    .VDD(VPWR),
    .Y(_035_),
    .VSS(VGND),
    .A1(_010_),
    .A2(_031_));
 sg13g2_and3_1 _073_ (.X(_006_),
    .A(_008_),
    .B(_034_),
    .C(_035_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _074_ (.A(a[5]),
    .B(b[5]),
    .X(_010_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _075_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(a[0]),
    .A2(b[0]),
    .Y(_036_),
    .B1(_017_));
 sg13g2_nor2_1 _076_ (.A(rst),
    .B(_036_),
    .Y(_037_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _077_ (.A(_018_),
    .B(_037_),
    .X(_005_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand3_1 _078_ (.B(_018_),
    .C(_019_),
    .A(_016_),
    .Y(_038_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _079_ (.A(rst),
    .B(_020_),
    .Y(_039_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _080_ (.A(_038_),
    .B(_039_),
    .X(_004_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _081_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_032_),
    .A2(_035_),
    .Y(_003_),
    .B1(rst));
 sg13g2_nor3_1 _082_ (.A(_011_),
    .B(_027_),
    .C(_030_),
    .Y(_040_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _083_ (.A(rst),
    .B(_031_),
    .C(_040_),
    .Y(_002_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _084_ (.A(_013_),
    .B(_024_),
    .C(_026_),
    .Y(_041_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _085_ (.A(a[4]),
    .B(b[4]),
    .X(_011_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _086_ (.A(rst),
    .B(_027_),
    .C(_041_),
    .Y(_001_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _087_ (.A(_014_),
    .B(_020_),
    .C(_023_),
    .Y(_042_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _088_ (.A(rst),
    .B(_024_),
    .C(_042_),
    .Y(_000_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _089_ (.Y(_012_),
    .A(a[4]),
    .B(b[4]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _090_ (.A(a[3]),
    .B(b[3]),
    .X(_013_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _091_ (.A(a[2]),
    .B(b[2]),
    .X(_014_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _092_ (.Y(_015_),
    .A(a[2]),
    .B(b[2]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _093_ (.Y(_016_),
    .A(a[1]),
    .B(b[1]),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_dfrbpq_1 _094_ (.RESET_B(_049_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_007_),
    .Q(sum[0]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _095_ (.RESET_B(_047_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_005_),
    .Q(sum[1]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _096_ (.RESET_B(_046_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_004_),
    .Q(sum[2]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _097_ (.RESET_B(_050_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_000_),
    .Q(sum[3]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _098_ (.RESET_B(_043_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_001_),
    .Q(sum[4]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _099_ (.RESET_B(_044_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_002_),
    .Q(sum[5]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _100_ (.RESET_B(_048_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_006_),
    .Q(sum[6]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _101_ (.RESET_B(_045_),
    .VSS(VGND),
    .VDD(VPWR),
    .D(_003_),
    .Q(sum[7]),
    .CLK(clk));
 sg13g2_tiehi _102_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_043_));
 sg13g2_tiehi _103_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_044_));
 sg13g2_tiehi _104_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_045_));
 sg13g2_tiehi _105_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_046_));
 sg13g2_tiehi _106_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_047_));
 sg13g2_tiehi _107_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_048_));
 sg13g2_tiehi _108_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_049_));
 sg13g2_tiehi _109_ (.VDD(VPWR),
    .VSS(VGND),
    .L_HI(_050_));
endmodule
