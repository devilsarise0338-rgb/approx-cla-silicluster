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
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire clknet_0_clk;
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
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sg13g2_inv_1 _051_ (.Y(_008_),
    .A(net15));
 sg13g2_xnor2_1 _052_ (.Y(_009_),
    .A(net1),
    .B(net8));
 sg13g2_xor2_1 _053_ (.B(net9),
    .A(net2),
    .X(_017_));
 sg13g2_nand3_1 _054_ (.B(net8),
    .C(_017_),
    .A(net1),
    .Y(_018_));
 sg13g2_xnor2_1 _055_ (.Y(_019_),
    .A(net3),
    .B(net10));
 sg13g2_a21oi_1 _056_ (.A1(_016_),
    .A2(_018_),
    .Y(_020_),
    .B1(_019_));
 sg13g2_a21o_1 _057_ (.A2(_018_),
    .A1(_016_),
    .B1(_019_),
    .X(_021_));
 sg13g2_xnor2_1 _058_ (.Y(_022_),
    .A(net4),
    .B(net11));
 sg13g2_inv_1 _059_ (.Y(_023_),
    .A(_022_));
 sg13g2_a21oi_1 _060_ (.A1(_015_),
    .A2(_021_),
    .Y(_024_),
    .B1(_022_));
 sg13g2_nor2_1 _061_ (.A(_013_),
    .B(_024_),
    .Y(_025_));
 sg13g2_xor2_1 _062_ (.B(net12),
    .A(net5),
    .X(_026_));
 sg13g2_nor2_1 _063_ (.A(net15),
    .B(_009_),
    .Y(_007_));
 sg13g2_nor2b_1 _064_ (.A(_025_),
    .B_N(_026_),
    .Y(_027_));
 sg13g2_o21ai_1 _065_ (.B1(_026_),
    .Y(_028_),
    .A1(_013_),
    .A2(_024_));
 sg13g2_xnor2_1 _066_ (.Y(_029_),
    .A(net6),
    .B(net13));
 sg13g2_inv_1 _067_ (.Y(_030_),
    .A(_029_));
 sg13g2_a21oi_1 _068_ (.A1(_012_),
    .A2(_028_),
    .Y(_031_),
    .B1(_029_));
 sg13g2_nand2_1 _069_ (.Y(_032_),
    .A(net7),
    .B(net14));
 sg13g2_xor2_1 _070_ (.B(net14),
    .A(net7),
    .X(_033_));
 sg13g2_or3_1 _071_ (.A(_010_),
    .B(_031_),
    .C(_033_),
    .X(_034_));
 sg13g2_o21ai_1 _072_ (.B1(_033_),
    .Y(_035_),
    .A1(_010_),
    .A2(_031_));
 sg13g2_and3_1 _073_ (.X(_006_),
    .A(_008_),
    .B(_034_),
    .C(_035_));
 sg13g2_and2_1 _074_ (.A(net6),
    .B(net13),
    .X(_010_));
 sg13g2_a21oi_1 _075_ (.A1(net1),
    .A2(net8),
    .Y(_036_),
    .B1(_017_));
 sg13g2_nor2_1 _076_ (.A(net15),
    .B(_036_),
    .Y(_037_));
 sg13g2_and2_1 _077_ (.A(_018_),
    .B(_037_),
    .X(_005_));
 sg13g2_nand3_1 _078_ (.B(_018_),
    .C(_019_),
    .A(_016_),
    .Y(_038_));
 sg13g2_nor2_1 _079_ (.A(net15),
    .B(_020_),
    .Y(_039_));
 sg13g2_and2_1 _080_ (.A(_038_),
    .B(_039_),
    .X(_004_));
 sg13g2_a21oi_1 _081_ (.A1(_032_),
    .A2(_035_),
    .Y(_003_),
    .B1(net15));
 sg13g2_nor3_1 _082_ (.A(_011_),
    .B(_027_),
    .C(_030_),
    .Y(_040_));
 sg13g2_nor3_1 _083_ (.A(net15),
    .B(_031_),
    .C(_040_),
    .Y(_002_));
 sg13g2_nor3_1 _084_ (.A(_013_),
    .B(_024_),
    .C(_026_),
    .Y(_041_));
 sg13g2_and2_1 _085_ (.A(net5),
    .B(net12),
    .X(_011_));
 sg13g2_nor3_1 _086_ (.A(net15),
    .B(_027_),
    .C(_041_),
    .Y(_001_));
 sg13g2_nor3_1 _087_ (.A(_014_),
    .B(_020_),
    .C(_023_),
    .Y(_042_));
 sg13g2_nor3_1 _088_ (.A(net15),
    .B(_024_),
    .C(_042_),
    .Y(_000_));
 sg13g2_nand2_1 _089_ (.Y(_012_),
    .A(net5),
    .B(net12));
 sg13g2_and2_1 _090_ (.A(net4),
    .B(net11),
    .X(_013_));
 sg13g2_and2_1 _091_ (.A(net3),
    .B(net10),
    .X(_014_));
 sg13g2_nand2_1 _092_ (.Y(_015_),
    .A(net3),
    .B(net10));
 sg13g2_nand2_1 _093_ (.Y(_016_),
    .A(net2),
    .B(net9));
 sg13g2_dfrbpq_1 _094_ (.RESET_B(net29),
    .D(_007_),
    .Q(net16),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_tiehi _094__30 (.L_HI(net29));
 sg13g2_dfrbpq_1 _095_ (.RESET_B(net27),
    .D(_005_),
    .Q(net17),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_tiehi _095__28 (.L_HI(net27));
 sg13g2_dfrbpq_1 _096_ (.RESET_B(net26),
    .D(_004_),
    .Q(net18),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_tiehi _096__27 (.L_HI(net26));
 sg13g2_dfrbpq_1 _097_ (.RESET_B(net30),
    .D(_000_),
    .Q(net19),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_tiehi _097__31 (.L_HI(net30));
 sg13g2_dfrbpq_1 _098_ (.RESET_B(net),
    .D(_001_),
    .Q(net20),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _098__24 (.L_HI(net));
 sg13g2_dfrbpq_1 _099_ (.RESET_B(net24),
    .D(_002_),
    .Q(net21),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _099__25 (.L_HI(net24));
 sg13g2_dfrbpq_1 _100_ (.RESET_B(net28),
    .D(_006_),
    .Q(net22),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _100__29 (.L_HI(net28));
 sg13g2_dfrbpq_1 _101_ (.RESET_B(net25),
    .D(_003_),
    .Q(net23),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _101__26 (.L_HI(net25));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_16 clkbuf_1_0__f_clk (.X(clknet_1_0__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_1_1__f_clk (.X(clknet_1_1__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_1 input1 (.A(a[0]),
    .X(net1));
 sg13g2_buf_1 input10 (.A(b[2]),
    .X(net10));
 sg13g2_buf_1 input11 (.A(b[3]),
    .X(net11));
 sg13g2_buf_1 input12 (.A(b[4]),
    .X(net12));
 sg13g2_buf_1 input13 (.A(b[5]),
    .X(net13));
 sg13g2_buf_1 input14 (.A(b[6]),
    .X(net14));
 sg13g2_buf_1 input15 (.A(rst),
    .X(net15));
 sg13g2_buf_1 input2 (.A(a[1]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(a[2]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(a[3]),
    .X(net4));
 sg13g2_buf_1 input5 (.A(a[4]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(a[5]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(a[6]),
    .X(net7));
 sg13g2_buf_1 input8 (.A(b[0]),
    .X(net8));
 sg13g2_buf_1 input9 (.A(b[1]),
    .X(net9));
 sg13g2_buf_1 output16 (.A(net16),
    .X(sum[0]));
 sg13g2_buf_1 output17 (.A(net17),
    .X(sum[1]));
 sg13g2_buf_1 output18 (.A(net18),
    .X(sum[2]));
 sg13g2_buf_1 output19 (.A(net19),
    .X(sum[3]));
 sg13g2_buf_1 output20 (.A(net20),
    .X(sum[4]));
 sg13g2_buf_1 output21 (.A(net21),
    .X(sum[5]));
 sg13g2_buf_1 output22 (.A(net22),
    .X(sum[6]));
 sg13g2_buf_1 output23 (.A(net23),
    .X(sum[7]));
endmodule
