// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Wed Dec 21 20:30:49 2016
// Host        : Lappytoppy running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -force -mode funcsim
//               /home/jaxc/FPGA/DJ-Jaxc/DJ/DJ.srcs/sources_1/bd/top/ip/top_Jaxc_I2S_0_0/top_Jaxc_I2S_0_0_sim_netlist.v
// Design      : top_Jaxc_I2S_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_Jaxc_I2S_0_0,Jaxc_I2S,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Jaxc_I2S,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module top_Jaxc_I2S_0_0
   (CLK_100M,
    PBDAT,
    BCLK,
    PBLRC,
    MUTE,
    MCLK,
    int_out,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK_100M CLK" *) input CLK_100M;
  (* x_interface_info = "xilinx.com:signal:data:1.0 Audio_out DATA" *) output PBDAT;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 BCLK CLK" *) output BCLK;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PBLRC CLK" *) output PBLRC;
  output MUTE;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 MCLK CLK" *) output MCLK;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 Buffer_emtpy INTERRUPT" *) output int_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [10:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [10:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;

  wire BCLK;
  (* IBUF_LOW_PWR *) wire CLK_100M;
  wire MCLK;
  wire MUTE;
  wire PBDAT;
  wire PBLRC;
  wire int_out;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_S_AXI_ADDR_WIDTH = "11" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  top_Jaxc_I2S_0_0_Jaxc_I2S U0
       (.BCLK(BCLK),
        .CLK_100M(CLK_100M),
        .MCLK(MCLK),
        .MUTE(MUTE),
        .PBDAT(PBDAT),
        .PBLRC(PBLRC),
        .int_out(int_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "CLK_DIV" *) 
module top_Jaxc_I2S_0_0_CLK_DIV
   (BCLK,
    MCLK,
    reset);
  output BCLK;
  input MCLK;
  input reset;

  wire BCLK;
  wire CLK_out_int_i_1__0_n_0;
  wire MCLK;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    CLK_out_int_i_1__0
       (.I0(cnt),
        .I1(BCLK),
        .O(CLK_out_int_i_1__0_n_0));
  FDCE CLK_out_int_reg
       (.C(MCLK),
        .CE(1'b1),
        .CLR(reset),
        .D(CLK_out_int_i_1__0_n_0),
        .Q(BCLK));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt),
        .O(\cnt[0]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(MCLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt));
endmodule

(* ORIG_REF_NAME = "CLK_DIV" *) 
module top_Jaxc_I2S_0_0_CLK_DIV__parameterized1
   (PBLRC,
    \crnt_reg[PBLRC] ,
    BCLK,
    reset,
    s_axi_aresetn);
  output PBLRC;
  output \crnt_reg[PBLRC] ;
  input BCLK;
  input reset;
  input s_axi_aresetn;

  wire BCLK;
  wire CLK_out_int_i_1_n_0;
  wire PBLRC;
  wire [4:0]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \crnt_reg[PBLRC] ;
  wire n_0_0;
  wire reset;
  wire s_axi_aresetn;

  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    CLK_out_int_i_1
       (.I0(cnt[2]),
        .I1(cnt[4]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .I5(PBLRC),
        .O(CLK_out_int_i_1_n_0));
  FDCE CLK_out_int_reg
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(CLK_out_int_i_1_n_0),
        .Q(PBLRC));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \cnt[4]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[4]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(n_0_0),
        .CE(1'b1),
        .CLR(reset),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \crnt[PBLRC]_i_1 
       (.I0(PBLRC),
        .I1(s_axi_aresetn),
        .O(\crnt_reg[PBLRC] ));
  LUT1 #(
    .INIT(2'h1)) 
    i_0
       (.I0(BCLK),
        .O(n_0_0));
endmodule

(* ORIG_REF_NAME = "I2S_controller" *) 
module top_Jaxc_I2S_0_0_I2S_controller
   (PBDAT,
    new_sample,
    CLK_out_int_reg,
    BCLK,
    CLK_out_int_reg_0,
    s_axi_aresetn,
    SR,
    Q);
  output PBDAT;
  output [0:0]new_sample;
  input CLK_out_int_reg;
  input BCLK;
  input CLK_out_int_reg_0;
  input s_axi_aresetn;
  input [0:0]SR;
  input [63:0]Q;

  wire BCLK;
  wire CLK_out_int_reg;
  wire CLK_out_int_reg_0;
  wire PBDAT;
  wire [63:0]Q;
  wire [0:0]SR;
  wire \crnt[state][0]_i_1_n_0 ;
  wire \crnt[state][1]_i_1_n_0 ;
  wire \crnt_reg[PBLRC]__0 ;
  wire \crnt_reg[sample_l_n_0_][10] ;
  wire \crnt_reg[sample_l_n_0_][11] ;
  wire \crnt_reg[sample_l_n_0_][12] ;
  wire \crnt_reg[sample_l_n_0_][13] ;
  wire \crnt_reg[sample_l_n_0_][14] ;
  wire \crnt_reg[sample_l_n_0_][15] ;
  wire \crnt_reg[sample_l_n_0_][16] ;
  wire \crnt_reg[sample_l_n_0_][17] ;
  wire \crnt_reg[sample_l_n_0_][18] ;
  wire \crnt_reg[sample_l_n_0_][19] ;
  wire \crnt_reg[sample_l_n_0_][1] ;
  wire \crnt_reg[sample_l_n_0_][20] ;
  wire \crnt_reg[sample_l_n_0_][21] ;
  wire \crnt_reg[sample_l_n_0_][22] ;
  wire \crnt_reg[sample_l_n_0_][23] ;
  wire \crnt_reg[sample_l_n_0_][24] ;
  wire \crnt_reg[sample_l_n_0_][25] ;
  wire \crnt_reg[sample_l_n_0_][26] ;
  wire \crnt_reg[sample_l_n_0_][27] ;
  wire \crnt_reg[sample_l_n_0_][28] ;
  wire \crnt_reg[sample_l_n_0_][29] ;
  wire \crnt_reg[sample_l_n_0_][2] ;
  wire \crnt_reg[sample_l_n_0_][30] ;
  wire \crnt_reg[sample_l_n_0_][31] ;
  wire \crnt_reg[sample_l_n_0_][3] ;
  wire \crnt_reg[sample_l_n_0_][4] ;
  wire \crnt_reg[sample_l_n_0_][5] ;
  wire \crnt_reg[sample_l_n_0_][6] ;
  wire \crnt_reg[sample_l_n_0_][7] ;
  wire \crnt_reg[sample_l_n_0_][8] ;
  wire \crnt_reg[sample_l_n_0_][9] ;
  wire \crnt_reg[sample_r_n_0_][10] ;
  wire \crnt_reg[sample_r_n_0_][11] ;
  wire \crnt_reg[sample_r_n_0_][12] ;
  wire \crnt_reg[sample_r_n_0_][13] ;
  wire \crnt_reg[sample_r_n_0_][14] ;
  wire \crnt_reg[sample_r_n_0_][15] ;
  wire \crnt_reg[sample_r_n_0_][16] ;
  wire \crnt_reg[sample_r_n_0_][17] ;
  wire \crnt_reg[sample_r_n_0_][18] ;
  wire \crnt_reg[sample_r_n_0_][19] ;
  wire \crnt_reg[sample_r_n_0_][1] ;
  wire \crnt_reg[sample_r_n_0_][20] ;
  wire \crnt_reg[sample_r_n_0_][21] ;
  wire \crnt_reg[sample_r_n_0_][22] ;
  wire \crnt_reg[sample_r_n_0_][23] ;
  wire \crnt_reg[sample_r_n_0_][24] ;
  wire \crnt_reg[sample_r_n_0_][25] ;
  wire \crnt_reg[sample_r_n_0_][26] ;
  wire \crnt_reg[sample_r_n_0_][27] ;
  wire \crnt_reg[sample_r_n_0_][28] ;
  wire \crnt_reg[sample_r_n_0_][29] ;
  wire \crnt_reg[sample_r_n_0_][2] ;
  wire \crnt_reg[sample_r_n_0_][30] ;
  wire \crnt_reg[sample_r_n_0_][31] ;
  wire \crnt_reg[sample_r_n_0_][3] ;
  wire \crnt_reg[sample_r_n_0_][4] ;
  wire \crnt_reg[sample_r_n_0_][5] ;
  wire \crnt_reg[sample_r_n_0_][6] ;
  wire \crnt_reg[sample_r_n_0_][7] ;
  wire \crnt_reg[sample_r_n_0_][8] ;
  wire \crnt_reg[sample_r_n_0_][9] ;
  wire \crnt_reg[state_n_0_][0] ;
  wire \crnt_reg[state_n_0_][1] ;
  wire n_0_0;
  wire [0:0]new_sample;
  wire [0:31]\nxt[sample_l] ;
  wire [0:31]\nxt[sample_r] ;
  wire \nxt[sample_r]_inferred__0/i__n_0 ;
  wire [0:0]\nxt[state] ;
  wire p_0_in;
  wire p_1_in;
  wire s_axi_aresetn;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    PBDAT__0
       (.I0(p_1_in),
        .I1(\crnt_reg[state_n_0_][0] ),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(p_0_in),
        .O(PBDAT));
  LUT1 #(
    .INIT(2'h1)) 
    \crnt[sample_l][0]_i_1 
       (.I0(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[state] ));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][0]_i_2 
       (.I0(\crnt_reg[sample_l_n_0_][1] ),
        .I1(Q[31]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [0]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][10]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][11] ),
        .I1(Q[21]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [10]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][11]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][12] ),
        .I1(Q[20]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [11]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][12]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][13] ),
        .I1(Q[19]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [12]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][13]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][14] ),
        .I1(Q[18]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [13]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][14]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][15] ),
        .I1(Q[17]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [14]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][15]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][16] ),
        .I1(Q[16]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [15]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][16]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][17] ),
        .I1(Q[15]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [16]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][17]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][18] ),
        .I1(Q[14]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [17]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][18]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][19] ),
        .I1(Q[13]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [18]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][19]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][20] ),
        .I1(Q[12]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [19]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][1]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][2] ),
        .I1(Q[30]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [1]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][20]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][21] ),
        .I1(Q[11]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [20]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][21]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][22] ),
        .I1(Q[10]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [21]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][22]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][23] ),
        .I1(Q[9]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [22]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][23]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][24] ),
        .I1(Q[8]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [23]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][24]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][25] ),
        .I1(Q[7]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [24]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][25]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][26] ),
        .I1(Q[6]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [25]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][26]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][27] ),
        .I1(Q[5]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [26]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][27]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][28] ),
        .I1(Q[4]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [27]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][28]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][29] ),
        .I1(Q[3]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [28]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][29]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][30] ),
        .I1(Q[2]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [29]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][2]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][3] ),
        .I1(Q[29]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [2]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][30]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][31] ),
        .I1(Q[1]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \crnt[sample_l][31]_i_1 
       (.I0(Q[0]),
        .I1(CLK_out_int_reg_0),
        .I2(\crnt_reg[PBLRC]__0 ),
        .I3(\crnt_reg[state_n_0_][1] ),
        .O(\nxt[sample_l] [31]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][3]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][4] ),
        .I1(Q[28]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [3]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][4]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][5] ),
        .I1(Q[27]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [4]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][5]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][6] ),
        .I1(Q[26]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [5]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][6]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][7] ),
        .I1(Q[25]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [6]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][7]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][8] ),
        .I1(Q[24]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [7]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][8]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][9] ),
        .I1(Q[23]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [8]));
  LUT5 #(
    .INIT(32'hACCCACAC)) 
    \crnt[sample_l][9]_i_1 
       (.I0(\crnt_reg[sample_l_n_0_][10] ),
        .I1(Q[22]),
        .I2(\crnt_reg[state_n_0_][1] ),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(CLK_out_int_reg_0),
        .O(\nxt[sample_l] [9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][0]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][1] ),
        .I1(Q[63]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][10]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][11] ),
        .I1(Q[53]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][11]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][12] ),
        .I1(Q[52]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][12]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][13] ),
        .I1(Q[51]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][13]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][14] ),
        .I1(Q[50]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][14]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][15] ),
        .I1(Q[49]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][15]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][16] ),
        .I1(Q[48]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][16]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][17] ),
        .I1(Q[47]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][17]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][18] ),
        .I1(Q[46]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][18]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][19] ),
        .I1(Q[45]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][19]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][20] ),
        .I1(Q[44]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][1]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][2] ),
        .I1(Q[62]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][20]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][21] ),
        .I1(Q[43]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][21]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][22] ),
        .I1(Q[42]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][22]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][23] ),
        .I1(Q[41]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][23]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][24] ),
        .I1(Q[40]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [23]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][24]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][25] ),
        .I1(Q[39]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [24]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][25]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][26] ),
        .I1(Q[38]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][26]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][27] ),
        .I1(Q[37]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][27]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][28] ),
        .I1(Q[36]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][28]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][29] ),
        .I1(Q[35]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][29]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][30] ),
        .I1(Q[34]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][2]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][3] ),
        .I1(Q[61]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][30]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][31] ),
        .I1(Q[33]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \crnt[sample_r][31]_i_1 
       (.I0(Q[32]),
        .I1(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][3]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][4] ),
        .I1(Q[60]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][4]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][5] ),
        .I1(Q[59]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][5]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][6] ),
        .I1(Q[58]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][6]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][7] ),
        .I1(Q[57]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][7]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][8] ),
        .I1(Q[56]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][8]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][9] ),
        .I1(Q[55]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \crnt[sample_r][9]_i_1 
       (.I0(\crnt_reg[sample_r_n_0_][10] ),
        .I1(Q[54]),
        .I2(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r] [9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20720000)) 
    \crnt[state][0]_i_1 
       (.I0(\crnt_reg[state_n_0_][0] ),
        .I1(\crnt_reg[state_n_0_][1] ),
        .I2(CLK_out_int_reg_0),
        .I3(\crnt_reg[PBLRC]__0 ),
        .I4(s_axi_aresetn),
        .O(\crnt[state][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0B200000)) 
    \crnt[state][1]_i_1 
       (.I0(\crnt_reg[PBLRC]__0 ),
        .I1(CLK_out_int_reg_0),
        .I2(\crnt_reg[state_n_0_][0] ),
        .I3(\crnt_reg[state_n_0_][1] ),
        .I4(s_axi_aresetn),
        .O(\crnt[state][1]_i_1_n_0 ));
  FDRE \crnt_reg[PBLRC] 
       (.C(n_0_0),
        .CE(1'b1),
        .D(CLK_out_int_reg),
        .Q(\crnt_reg[PBLRC]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[sample_l][0] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [0]),
        .Q(p_0_in),
        .R(SR));
  FDRE \crnt_reg[sample_l][10] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [10]),
        .Q(\crnt_reg[sample_l_n_0_][10] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][11] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [11]),
        .Q(\crnt_reg[sample_l_n_0_][11] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][12] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [12]),
        .Q(\crnt_reg[sample_l_n_0_][12] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][13] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [13]),
        .Q(\crnt_reg[sample_l_n_0_][13] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][14] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [14]),
        .Q(\crnt_reg[sample_l_n_0_][14] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][15] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [15]),
        .Q(\crnt_reg[sample_l_n_0_][15] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][16] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [16]),
        .Q(\crnt_reg[sample_l_n_0_][16] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][17] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [17]),
        .Q(\crnt_reg[sample_l_n_0_][17] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][18] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [18]),
        .Q(\crnt_reg[sample_l_n_0_][18] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][19] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [19]),
        .Q(\crnt_reg[sample_l_n_0_][19] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][1] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [1]),
        .Q(\crnt_reg[sample_l_n_0_][1] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][20] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [20]),
        .Q(\crnt_reg[sample_l_n_0_][20] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][21] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [21]),
        .Q(\crnt_reg[sample_l_n_0_][21] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][22] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [22]),
        .Q(\crnt_reg[sample_l_n_0_][22] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][23] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [23]),
        .Q(\crnt_reg[sample_l_n_0_][23] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][24] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [24]),
        .Q(\crnt_reg[sample_l_n_0_][24] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][25] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [25]),
        .Q(\crnt_reg[sample_l_n_0_][25] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][26] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [26]),
        .Q(\crnt_reg[sample_l_n_0_][26] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][27] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [27]),
        .Q(\crnt_reg[sample_l_n_0_][27] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][28] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [28]),
        .Q(\crnt_reg[sample_l_n_0_][28] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][29] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [29]),
        .Q(\crnt_reg[sample_l_n_0_][29] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][2] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [2]),
        .Q(\crnt_reg[sample_l_n_0_][2] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][30] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [30]),
        .Q(\crnt_reg[sample_l_n_0_][30] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][31] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [31]),
        .Q(\crnt_reg[sample_l_n_0_][31] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][3] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [3]),
        .Q(\crnt_reg[sample_l_n_0_][3] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][4] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [4]),
        .Q(\crnt_reg[sample_l_n_0_][4] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][5] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [5]),
        .Q(\crnt_reg[sample_l_n_0_][5] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][6] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [6]),
        .Q(\crnt_reg[sample_l_n_0_][6] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][7] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [7]),
        .Q(\crnt_reg[sample_l_n_0_][7] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][8] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [8]),
        .Q(\crnt_reg[sample_l_n_0_][8] ),
        .R(SR));
  FDRE \crnt_reg[sample_l][9] 
       (.C(n_0_0),
        .CE(\nxt[state] ),
        .D(\nxt[sample_l] [9]),
        .Q(\crnt_reg[sample_l_n_0_][9] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][0] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [0]),
        .Q(p_1_in),
        .R(SR));
  FDRE \crnt_reg[sample_r][10] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [10]),
        .Q(\crnt_reg[sample_r_n_0_][10] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][11] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [11]),
        .Q(\crnt_reg[sample_r_n_0_][11] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][12] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [12]),
        .Q(\crnt_reg[sample_r_n_0_][12] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][13] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [13]),
        .Q(\crnt_reg[sample_r_n_0_][13] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][14] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [14]),
        .Q(\crnt_reg[sample_r_n_0_][14] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][15] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [15]),
        .Q(\crnt_reg[sample_r_n_0_][15] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][16] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [16]),
        .Q(\crnt_reg[sample_r_n_0_][16] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][17] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [17]),
        .Q(\crnt_reg[sample_r_n_0_][17] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][18] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [18]),
        .Q(\crnt_reg[sample_r_n_0_][18] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][19] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [19]),
        .Q(\crnt_reg[sample_r_n_0_][19] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][1] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [1]),
        .Q(\crnt_reg[sample_r_n_0_][1] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][20] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [20]),
        .Q(\crnt_reg[sample_r_n_0_][20] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][21] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [21]),
        .Q(\crnt_reg[sample_r_n_0_][21] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][22] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [22]),
        .Q(\crnt_reg[sample_r_n_0_][22] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][23] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [23]),
        .Q(\crnt_reg[sample_r_n_0_][23] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][24] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [24]),
        .Q(\crnt_reg[sample_r_n_0_][24] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][25] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [25]),
        .Q(\crnt_reg[sample_r_n_0_][25] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][26] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [26]),
        .Q(\crnt_reg[sample_r_n_0_][26] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][27] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [27]),
        .Q(\crnt_reg[sample_r_n_0_][27] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][28] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [28]),
        .Q(\crnt_reg[sample_r_n_0_][28] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][29] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [29]),
        .Q(\crnt_reg[sample_r_n_0_][29] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][2] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [2]),
        .Q(\crnt_reg[sample_r_n_0_][2] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][30] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [30]),
        .Q(\crnt_reg[sample_r_n_0_][30] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][31] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [31]),
        .Q(\crnt_reg[sample_r_n_0_][31] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][3] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [3]),
        .Q(\crnt_reg[sample_r_n_0_][3] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][4] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [4]),
        .Q(\crnt_reg[sample_r_n_0_][4] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][5] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [5]),
        .Q(\crnt_reg[sample_r_n_0_][5] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][6] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [6]),
        .Q(\crnt_reg[sample_r_n_0_][6] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][7] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [7]),
        .Q(\crnt_reg[sample_r_n_0_][7] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][8] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [8]),
        .Q(\crnt_reg[sample_r_n_0_][8] ),
        .R(SR));
  FDRE \crnt_reg[sample_r][9] 
       (.C(n_0_0),
        .CE(\nxt[sample_r]_inferred__0/i__n_0 ),
        .D(\nxt[sample_r] [9]),
        .Q(\crnt_reg[sample_r_n_0_][9] ),
        .R(SR));
  FDRE \crnt_reg[state][0] 
       (.C(n_0_0),
        .CE(1'b1),
        .D(\crnt[state][0]_i_1_n_0 ),
        .Q(\crnt_reg[state_n_0_][0] ),
        .R(1'b0));
  FDRE \crnt_reg[state][1] 
       (.C(n_0_0),
        .CE(1'b1),
        .D(\crnt[state][1]_i_1_n_0 ),
        .Q(\crnt_reg[state_n_0_][1] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i_0
       (.I0(BCLK),
        .O(n_0_0));
  LUT4 #(
    .INIT(16'h5175)) 
    \nxt[sample_r]_inferred__0/i_ 
       (.I0(\crnt_reg[state_n_0_][1] ),
        .I1(\crnt_reg[PBLRC]__0 ),
        .I2(CLK_out_int_reg_0),
        .I3(\crnt_reg[state_n_0_][0] ),
        .O(\nxt[sample_r]_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    req_new_sample
       (.I0(\crnt_reg[state_n_0_][1] ),
        .I1(\crnt_reg[state_n_0_][0] ),
        .I2(\crnt_reg[PBLRC]__0 ),
        .I3(CLK_out_int_reg_0),
        .O(new_sample));
endmodule

(* C_S_AXI_ADDR_WIDTH = "11" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "Jaxc_I2S" *) 
module top_Jaxc_I2S_0_0_Jaxc_I2S
   (CLK_100M,
    PBDAT,
    BCLK,
    PBLRC,
    MUTE,
    MCLK,
    int_out,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input CLK_100M;
  output PBDAT;
  output BCLK;
  output PBLRC;
  output MUTE;
  output MCLK;
  output int_out;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire BCLK;
  wire CLK_100M;
  wire MCLK;
  wire PBDAT;
  wire PBLRC;
  wire PBLRC_gen_n_1;
  wire int_out;
  wire reset;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_MCLK_gen_locked_UNCONNECTED;

  assign MUTE = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  top_Jaxc_I2S_0_0_CLK_DIV BCLK_gen
       (.BCLK(BCLK),
        .MCLK(MCLK),
        .reset(reset));
  GND GND
       (.G(\<const0> ));
  top_Jaxc_I2S_0_0_clk_wiz_0 MCLK_gen
       (.clk_in1(CLK_100M),
        .clk_out1(MCLK),
        .locked(NLW_MCLK_gen_locked_UNCONNECTED),
        .reset(reset));
  top_Jaxc_I2S_0_0_CLK_DIV__parameterized1 PBLRC_gen
       (.BCLK(BCLK),
        .PBLRC(PBLRC),
        .\crnt_reg[PBLRC] (PBLRC_gen_n_1),
        .reset(reset),
        .s_axi_aresetn(s_axi_aresetn));
  VCC VCC
       (.P(\<const1> ));
  top_Jaxc_I2S_0_0_Jaxc_slave_AXI slave
       (.BCLK(BCLK),
        .CLK_out_int_reg(PBLRC_gen_n_1),
        .CLK_out_int_reg_0(PBLRC),
        .PBDAT(PBDAT),
        .int_out(int_out),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Jaxc_slave_AXI" *) 
module top_Jaxc_I2S_0_0_Jaxc_slave_AXI
   (reset,
    s_axi_awready,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rvalid,
    int_out,
    s_axi_rdata,
    PBDAT,
    s_axi_aclk,
    s_axi_aresetn,
    CLK_out_int_reg,
    BCLK,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_awvalid,
    CLK_out_int_reg_0,
    s_axi_wdata,
    s_axi_bready,
    s_axi_awaddr,
    s_axi_araddr);
  output reset;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_bvalid;
  output s_axi_arready;
  output s_axi_rvalid;
  output int_out;
  output [31:0]s_axi_rdata;
  output PBDAT;
  input s_axi_aclk;
  input s_axi_aresetn;
  input CLK_out_int_reg;
  input BCLK;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input CLK_out_int_reg_0;
  input [31:0]s_axi_wdata;
  input s_axi_bready;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;

  wire BCLK;
  wire CLK_out_int_reg;
  wire CLK_out_int_reg_0;
  wire \FSM_onehot_crnt[write_state][0]_i_1_n_0 ;
  wire \FSM_onehot_crnt[write_state][2]_i_1_n_0 ;
  wire \FSM_onehot_crnt[write_state][3]_i_2_n_0 ;
  wire \FSM_onehot_crnt[write_state][3]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_crnt_reg[write_state_n_0_][0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_crnt_reg[write_state_n_0_][1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_crnt_reg[write_state_n_0_][2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_crnt_reg[write_state_n_0_][3] ;
  wire PBDAT;
  wire [63:0]Sample_in;
  wire [63:0]Sample_in_buf;
  wire axi_read_valid;
  wire axi_read_valid_i_1_n_0;
  wire axi_rec_read;
  wire buffer_full;
  wire buffer_full_i_1_n_0;
  wire cnt_out0;
  wire [7:0]cnt_out_reg__0;
  wire \crnt[read_state]_i_1_n_0 ;
  wire \crnt[write_state] ;
  wire \crnt_reg[axi_arready]__0 ;
  wire \crnt_reg[axi_awready]__0 ;
  wire \crnt_reg[axi_bvalid]__0 ;
  wire \crnt_reg[axi_rvalid]__0 ;
  wire \crnt_reg[axi_wready]__0 ;
  wire \crnt_reg[read_state_n_0_] ;
  wire enb;
  wire int_out;
  wire int_out_i_2_n_0;
  wire [8:0]loc_addr;
  wire loc_addr17_out;
  wire \loc_addr[8]_i_1_n_0 ;
  wire [2:0]new_sample;
  wire \nxt[axi_arready] ;
  wire \nxt[axi_awready] ;
  wire \nxt[axi_bvalid] ;
  wire \nxt[axi_rvalid] ;
  wire \nxt[axi_wready] ;
  wire \nxt[write_state_n_0_] ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [31:0]p_1_in;
  wire [8:0]p_2_in;
  wire [7:0]read_addr;
  wire read_enable;
  wire read_enable0;
  wire req_read;
  wire req_sample_n_1;
  wire req_sample_n_2;
  wire req_sample_n_3;
  wire reset;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire slv_reg_in;
  wire \slv_reg_in_reg_n_0_[0] ;
  wire \slv_reg_in_reg_n_0_[10] ;
  wire \slv_reg_in_reg_n_0_[11] ;
  wire \slv_reg_in_reg_n_0_[12] ;
  wire \slv_reg_in_reg_n_0_[13] ;
  wire \slv_reg_in_reg_n_0_[14] ;
  wire \slv_reg_in_reg_n_0_[15] ;
  wire \slv_reg_in_reg_n_0_[16] ;
  wire \slv_reg_in_reg_n_0_[17] ;
  wire \slv_reg_in_reg_n_0_[18] ;
  wire \slv_reg_in_reg_n_0_[19] ;
  wire \slv_reg_in_reg_n_0_[1] ;
  wire \slv_reg_in_reg_n_0_[20] ;
  wire \slv_reg_in_reg_n_0_[21] ;
  wire \slv_reg_in_reg_n_0_[22] ;
  wire \slv_reg_in_reg_n_0_[23] ;
  wire \slv_reg_in_reg_n_0_[24] ;
  wire \slv_reg_in_reg_n_0_[25] ;
  wire \slv_reg_in_reg_n_0_[26] ;
  wire \slv_reg_in_reg_n_0_[27] ;
  wire \slv_reg_in_reg_n_0_[28] ;
  wire \slv_reg_in_reg_n_0_[29] ;
  wire \slv_reg_in_reg_n_0_[2] ;
  wire \slv_reg_in_reg_n_0_[30] ;
  wire \slv_reg_in_reg_n_0_[31] ;
  wire \slv_reg_in_reg_n_0_[3] ;
  wire \slv_reg_in_reg_n_0_[4] ;
  wire \slv_reg_in_reg_n_0_[5] ;
  wire \slv_reg_in_reg_n_0_[6] ;
  wire \slv_reg_in_reg_n_0_[7] ;
  wire \slv_reg_in_reg_n_0_[8] ;
  wire \slv_reg_in_reg_n_0_[9] ;
  wire [63:0]slv_reg_out;
  wire write_ram;
  wire \write_ram[0]_i_1_n_0 ;

  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_crnt[write_state][0]_i_1 
       (.I0(buffer_full),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I2(\FSM_onehot_crnt_reg[write_state_n_0_][2] ),
        .I3(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .O(\FSM_onehot_crnt[write_state][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_crnt[write_state][2]_i_1 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .O(\FSM_onehot_crnt[write_state][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8A8A8A8A8)) 
    \FSM_onehot_crnt[write_state][3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\nxt[write_state_n_0_] ),
        .I2(\FSM_onehot_crnt[write_state][3]_i_3_n_0 ),
        .I3(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I4(\crnt_reg[axi_wready]__0 ),
        .I5(s_axi_wvalid),
        .O(\crnt[write_state] ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_crnt[write_state][3]_i_2 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I2(buffer_full),
        .I3(\FSM_onehot_crnt_reg[write_state_n_0_][2] ),
        .O(\FSM_onehot_crnt[write_state][3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_crnt[write_state][3]_i_3 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .I1(\crnt_reg[axi_awready]__0 ),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_crnt[write_state][3]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_crnt_reg[write_state][0] 
       (.C(s_axi_aclk),
        .CE(\crnt[write_state] ),
        .D(\FSM_onehot_crnt[write_state][0]_i_1_n_0 ),
        .Q(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_crnt_reg[write_state][1] 
       (.C(s_axi_aclk),
        .CE(\crnt[write_state] ),
        .D(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .Q(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_crnt_reg[write_state][2] 
       (.C(s_axi_aclk),
        .CE(\crnt[write_state] ),
        .D(\FSM_onehot_crnt[write_state][2]_i_1_n_0 ),
        .Q(\FSM_onehot_crnt_reg[write_state_n_0_][2] ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_crnt_reg[write_state][3] 
       (.C(s_axi_aclk),
        .CE(\crnt[write_state] ),
        .D(\FSM_onehot_crnt[write_state][3]_i_2_n_0 ),
        .Q(\FSM_onehot_crnt_reg[write_state_n_0_][3] ),
        .R(1'b0));
  top_Jaxc_I2S_0_0_I2S_controller I2S
       (.BCLK(BCLK),
        .CLK_out_int_reg(CLK_out_int_reg),
        .CLK_out_int_reg_0(CLK_out_int_reg_0),
        .PBDAT(PBDAT),
        .Q(Sample_in),
        .SR(reset),
        .new_sample(new_sample[2]),
        .s_axi_aresetn(s_axi_aresetn));
  (* CHECK_LICENSE_TYPE = "Output_buffer_Block_RAM,blk_mem_gen_v8_3_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
  top_Jaxc_I2S_0_0_Output_buffer_Block_RAM RAM
       (.addra(loc_addr),
        .addrb(read_addr),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina({\slv_reg_in_reg_n_0_[31] ,\slv_reg_in_reg_n_0_[30] ,\slv_reg_in_reg_n_0_[29] ,\slv_reg_in_reg_n_0_[28] ,\slv_reg_in_reg_n_0_[27] ,\slv_reg_in_reg_n_0_[26] ,\slv_reg_in_reg_n_0_[25] ,\slv_reg_in_reg_n_0_[24] ,\slv_reg_in_reg_n_0_[23] ,\slv_reg_in_reg_n_0_[22] ,\slv_reg_in_reg_n_0_[21] ,\slv_reg_in_reg_n_0_[20] ,\slv_reg_in_reg_n_0_[19] ,\slv_reg_in_reg_n_0_[18] ,\slv_reg_in_reg_n_0_[17] ,\slv_reg_in_reg_n_0_[16] ,\slv_reg_in_reg_n_0_[15] ,\slv_reg_in_reg_n_0_[14] ,\slv_reg_in_reg_n_0_[13] ,\slv_reg_in_reg_n_0_[12] ,\slv_reg_in_reg_n_0_[11] ,\slv_reg_in_reg_n_0_[10] ,\slv_reg_in_reg_n_0_[9] ,\slv_reg_in_reg_n_0_[8] ,\slv_reg_in_reg_n_0_[7] ,\slv_reg_in_reg_n_0_[6] ,\slv_reg_in_reg_n_0_[5] ,\slv_reg_in_reg_n_0_[4] ,\slv_reg_in_reg_n_0_[3] ,\slv_reg_in_reg_n_0_[2] ,\slv_reg_in_reg_n_0_[1] ,\slv_reg_in_reg_n_0_[0] }),
        .doutb(slv_reg_out),
        .enb(enb),
        .wea(write_ram));
  LUT2 #(
    .INIT(4'hE)) 
    RAM_i_1
       (.I0(read_enable),
        .I1(axi_read_valid),
        .O(enb));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \S_AXI_out[S_AXI_ARREADY]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(\crnt_reg[axi_arready]__0 ),
        .O(\nxt[axi_arready] ));
  LUT3 #(
    .INIT(8'h2A)) 
    \S_AXI_out[S_AXI_AWREADY]_i_1 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .I1(\crnt_reg[axi_awready]__0 ),
        .I2(s_axi_awvalid),
        .O(\nxt[axi_awready] ));
  LUT4 #(
    .INIT(16'h0222)) 
    \S_AXI_out[S_AXI_BVALID]_i_1 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][2] ),
        .I1(buffer_full),
        .I2(s_axi_bready),
        .I3(\crnt_reg[axi_bvalid]__0 ),
        .O(\nxt[axi_bvalid] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][0]_i_1 
       (.I0(slv_reg_out[32]),
        .I1(slv_reg_out[0]),
        .I2(loc_addr[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][10]_i_1 
       (.I0(slv_reg_out[42]),
        .I1(slv_reg_out[10]),
        .I2(loc_addr[0]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][11]_i_1 
       (.I0(slv_reg_out[43]),
        .I1(slv_reg_out[11]),
        .I2(loc_addr[0]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][12]_i_1 
       (.I0(slv_reg_out[44]),
        .I1(slv_reg_out[12]),
        .I2(loc_addr[0]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][13]_i_1 
       (.I0(slv_reg_out[45]),
        .I1(slv_reg_out[13]),
        .I2(loc_addr[0]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][14]_i_1 
       (.I0(slv_reg_out[46]),
        .I1(slv_reg_out[14]),
        .I2(loc_addr[0]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][15]_i_1 
       (.I0(slv_reg_out[47]),
        .I1(slv_reg_out[15]),
        .I2(loc_addr[0]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][16]_i_1 
       (.I0(slv_reg_out[48]),
        .I1(slv_reg_out[16]),
        .I2(loc_addr[0]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][17]_i_1 
       (.I0(slv_reg_out[49]),
        .I1(slv_reg_out[17]),
        .I2(loc_addr[0]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][18]_i_1 
       (.I0(slv_reg_out[50]),
        .I1(slv_reg_out[18]),
        .I2(loc_addr[0]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][19]_i_1 
       (.I0(slv_reg_out[51]),
        .I1(slv_reg_out[19]),
        .I2(loc_addr[0]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][1]_i_1 
       (.I0(slv_reg_out[33]),
        .I1(slv_reg_out[1]),
        .I2(loc_addr[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][20]_i_1 
       (.I0(slv_reg_out[52]),
        .I1(slv_reg_out[20]),
        .I2(loc_addr[0]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][21]_i_1 
       (.I0(slv_reg_out[53]),
        .I1(slv_reg_out[21]),
        .I2(loc_addr[0]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][22]_i_1 
       (.I0(slv_reg_out[54]),
        .I1(slv_reg_out[22]),
        .I2(loc_addr[0]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][23]_i_1 
       (.I0(slv_reg_out[55]),
        .I1(slv_reg_out[23]),
        .I2(loc_addr[0]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][24]_i_1 
       (.I0(slv_reg_out[56]),
        .I1(slv_reg_out[24]),
        .I2(loc_addr[0]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][25]_i_1 
       (.I0(slv_reg_out[57]),
        .I1(slv_reg_out[25]),
        .I2(loc_addr[0]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][26]_i_1 
       (.I0(slv_reg_out[58]),
        .I1(slv_reg_out[26]),
        .I2(loc_addr[0]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][27]_i_1 
       (.I0(slv_reg_out[59]),
        .I1(slv_reg_out[27]),
        .I2(loc_addr[0]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][28]_i_1 
       (.I0(slv_reg_out[60]),
        .I1(slv_reg_out[28]),
        .I2(loc_addr[0]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][29]_i_1 
       (.I0(slv_reg_out[61]),
        .I1(slv_reg_out[29]),
        .I2(loc_addr[0]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][2]_i_1 
       (.I0(slv_reg_out[34]),
        .I1(slv_reg_out[2]),
        .I2(loc_addr[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][30]_i_1 
       (.I0(slv_reg_out[62]),
        .I1(slv_reg_out[30]),
        .I2(loc_addr[0]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][31]_i_1 
       (.I0(slv_reg_out[63]),
        .I1(slv_reg_out[31]),
        .I2(loc_addr[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][3]_i_1 
       (.I0(slv_reg_out[35]),
        .I1(slv_reg_out[3]),
        .I2(loc_addr[0]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][4]_i_1 
       (.I0(slv_reg_out[36]),
        .I1(slv_reg_out[4]),
        .I2(loc_addr[0]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][5]_i_1 
       (.I0(slv_reg_out[37]),
        .I1(slv_reg_out[5]),
        .I2(loc_addr[0]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][6]_i_1 
       (.I0(slv_reg_out[38]),
        .I1(slv_reg_out[6]),
        .I2(loc_addr[0]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][7]_i_1 
       (.I0(slv_reg_out[39]),
        .I1(slv_reg_out[7]),
        .I2(loc_addr[0]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][8]_i_1 
       (.I0(slv_reg_out[40]),
        .I1(slv_reg_out[8]),
        .I2(loc_addr[0]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \S_AXI_out[S_AXI_RDATA][9]_i_1 
       (.I0(slv_reg_out[41]),
        .I1(slv_reg_out[9]),
        .I2(loc_addr[0]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \S_AXI_out[S_AXI_RVALID]_i_1 
       (.I0(\crnt_reg[axi_rvalid]__0 ),
        .I1(s_axi_rready),
        .I2(\crnt_reg[read_state_n_0_] ),
        .O(\nxt[axi_rvalid] ));
  LUT3 #(
    .INIT(8'h2A)) 
    \S_AXI_out[S_AXI_WREADY]_i_1 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I1(\crnt_reg[axi_wready]__0 ),
        .I2(s_axi_wvalid),
        .O(\nxt[axi_wready] ));
  FDRE \S_AXI_out_reg[S_AXI_ARREADY] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\nxt[axi_arready] ),
        .Q(s_axi_arready),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_AWREADY] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\nxt[axi_awready] ),
        .Q(s_axi_awready),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_BVALID] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\nxt[axi_bvalid] ),
        .Q(s_axi_bvalid),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(s_axi_rdata[0]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(s_axi_rdata[10]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(s_axi_rdata[11]),
        .S(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(s_axi_rdata[12]),
        .S(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(s_axi_rdata[13]),
        .S(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(s_axi_rdata[14]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(s_axi_rdata[15]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(s_axi_rdata[16]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(s_axi_rdata[17]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(s_axi_rdata[18]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(s_axi_rdata[19]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(s_axi_rdata[1]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(s_axi_rdata[20]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(s_axi_rdata[21]),
        .S(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(s_axi_rdata[22]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(s_axi_rdata[23]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(s_axi_rdata[24]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(s_axi_rdata[25]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(s_axi_rdata[26]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(s_axi_rdata[27]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(s_axi_rdata[28]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(s_axi_rdata[29]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(s_axi_rdata[2]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(s_axi_rdata[30]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(s_axi_rdata[31]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(s_axi_rdata[3]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(s_axi_rdata[4]),
        .R(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(s_axi_rdata[5]),
        .S(reset));
  FDSE \S_AXI_out_reg[S_AXI_RDATA][6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(s_axi_rdata[6]),
        .S(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(s_axi_rdata[7]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(s_axi_rdata[8]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RDATA][9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(s_axi_rdata[9]),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_RVALID] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\nxt[axi_rvalid] ),
        .Q(s_axi_rvalid),
        .R(reset));
  FDRE \S_AXI_out_reg[S_AXI_WREADY] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\nxt[axi_wready] ),
        .Q(s_axi_wready),
        .R(reset));
  FDRE \Sample_in_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[0]),
        .Q(Sample_in_buf[0]),
        .R(reset));
  FDRE \Sample_in_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[10]),
        .Q(Sample_in_buf[10]),
        .R(reset));
  FDRE \Sample_in_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[11]),
        .Q(Sample_in_buf[11]),
        .R(reset));
  FDRE \Sample_in_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[12]),
        .Q(Sample_in_buf[12]),
        .R(reset));
  FDRE \Sample_in_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[13]),
        .Q(Sample_in_buf[13]),
        .R(reset));
  FDRE \Sample_in_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[14]),
        .Q(Sample_in_buf[14]),
        .R(reset));
  FDRE \Sample_in_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[15]),
        .Q(Sample_in_buf[15]),
        .R(reset));
  FDRE \Sample_in_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[16]),
        .Q(Sample_in_buf[16]),
        .R(reset));
  FDRE \Sample_in_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[17]),
        .Q(Sample_in_buf[17]),
        .R(reset));
  FDRE \Sample_in_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[18]),
        .Q(Sample_in_buf[18]),
        .R(reset));
  FDRE \Sample_in_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[19]),
        .Q(Sample_in_buf[19]),
        .R(reset));
  FDRE \Sample_in_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[1]),
        .Q(Sample_in_buf[1]),
        .R(reset));
  FDRE \Sample_in_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[20]),
        .Q(Sample_in_buf[20]),
        .R(reset));
  FDRE \Sample_in_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[21]),
        .Q(Sample_in_buf[21]),
        .R(reset));
  FDRE \Sample_in_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[22]),
        .Q(Sample_in_buf[22]),
        .R(reset));
  FDRE \Sample_in_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[23]),
        .Q(Sample_in_buf[23]),
        .R(reset));
  FDRE \Sample_in_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[24]),
        .Q(Sample_in_buf[24]),
        .R(reset));
  FDRE \Sample_in_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[25]),
        .Q(Sample_in_buf[25]),
        .R(reset));
  FDRE \Sample_in_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[26]),
        .Q(Sample_in_buf[26]),
        .R(reset));
  FDRE \Sample_in_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[27]),
        .Q(Sample_in_buf[27]),
        .R(reset));
  FDRE \Sample_in_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[28]),
        .Q(Sample_in_buf[28]),
        .R(reset));
  FDRE \Sample_in_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[29]),
        .Q(Sample_in_buf[29]),
        .R(reset));
  FDRE \Sample_in_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[2]),
        .Q(Sample_in_buf[2]),
        .R(reset));
  FDRE \Sample_in_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[30]),
        .Q(Sample_in_buf[30]),
        .R(reset));
  FDRE \Sample_in_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[31]),
        .Q(Sample_in_buf[31]),
        .R(reset));
  FDRE \Sample_in_buf_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[32]),
        .Q(Sample_in_buf[32]),
        .R(reset));
  FDRE \Sample_in_buf_reg[33] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[33]),
        .Q(Sample_in_buf[33]),
        .R(reset));
  FDRE \Sample_in_buf_reg[34] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[34]),
        .Q(Sample_in_buf[34]),
        .R(reset));
  FDRE \Sample_in_buf_reg[35] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[35]),
        .Q(Sample_in_buf[35]),
        .R(reset));
  FDRE \Sample_in_buf_reg[36] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[36]),
        .Q(Sample_in_buf[36]),
        .R(reset));
  FDRE \Sample_in_buf_reg[37] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[37]),
        .Q(Sample_in_buf[37]),
        .R(reset));
  FDRE \Sample_in_buf_reg[38] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[38]),
        .Q(Sample_in_buf[38]),
        .R(reset));
  FDRE \Sample_in_buf_reg[39] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[39]),
        .Q(Sample_in_buf[39]),
        .R(reset));
  FDRE \Sample_in_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[3]),
        .Q(Sample_in_buf[3]),
        .R(reset));
  FDRE \Sample_in_buf_reg[40] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[40]),
        .Q(Sample_in_buf[40]),
        .R(reset));
  FDRE \Sample_in_buf_reg[41] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[41]),
        .Q(Sample_in_buf[41]),
        .R(reset));
  FDRE \Sample_in_buf_reg[42] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[42]),
        .Q(Sample_in_buf[42]),
        .R(reset));
  FDRE \Sample_in_buf_reg[43] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[43]),
        .Q(Sample_in_buf[43]),
        .R(reset));
  FDRE \Sample_in_buf_reg[44] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[44]),
        .Q(Sample_in_buf[44]),
        .R(reset));
  FDRE \Sample_in_buf_reg[45] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[45]),
        .Q(Sample_in_buf[45]),
        .R(reset));
  FDRE \Sample_in_buf_reg[46] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[46]),
        .Q(Sample_in_buf[46]),
        .R(reset));
  FDRE \Sample_in_buf_reg[47] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[47]),
        .Q(Sample_in_buf[47]),
        .R(reset));
  FDRE \Sample_in_buf_reg[48] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[48]),
        .Q(Sample_in_buf[48]),
        .R(reset));
  FDRE \Sample_in_buf_reg[49] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[49]),
        .Q(Sample_in_buf[49]),
        .R(reset));
  FDRE \Sample_in_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[4]),
        .Q(Sample_in_buf[4]),
        .R(reset));
  FDRE \Sample_in_buf_reg[50] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[50]),
        .Q(Sample_in_buf[50]),
        .R(reset));
  FDRE \Sample_in_buf_reg[51] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[51]),
        .Q(Sample_in_buf[51]),
        .R(reset));
  FDRE \Sample_in_buf_reg[52] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[52]),
        .Q(Sample_in_buf[52]),
        .R(reset));
  FDRE \Sample_in_buf_reg[53] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[53]),
        .Q(Sample_in_buf[53]),
        .R(reset));
  FDRE \Sample_in_buf_reg[54] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[54]),
        .Q(Sample_in_buf[54]),
        .R(reset));
  FDRE \Sample_in_buf_reg[55] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[55]),
        .Q(Sample_in_buf[55]),
        .R(reset));
  FDRE \Sample_in_buf_reg[56] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[56]),
        .Q(Sample_in_buf[56]),
        .R(reset));
  FDRE \Sample_in_buf_reg[57] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[57]),
        .Q(Sample_in_buf[57]),
        .R(reset));
  FDRE \Sample_in_buf_reg[58] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[58]),
        .Q(Sample_in_buf[58]),
        .R(reset));
  FDRE \Sample_in_buf_reg[59] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[59]),
        .Q(Sample_in_buf[59]),
        .R(reset));
  FDRE \Sample_in_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[5]),
        .Q(Sample_in_buf[5]),
        .R(reset));
  FDRE \Sample_in_buf_reg[60] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[60]),
        .Q(Sample_in_buf[60]),
        .R(reset));
  FDRE \Sample_in_buf_reg[61] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[61]),
        .Q(Sample_in_buf[61]),
        .R(reset));
  FDRE \Sample_in_buf_reg[62] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[62]),
        .Q(Sample_in_buf[62]),
        .R(reset));
  FDRE \Sample_in_buf_reg[63] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[63]),
        .Q(Sample_in_buf[63]),
        .R(reset));
  FDRE \Sample_in_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[6]),
        .Q(Sample_in_buf[6]),
        .R(reset));
  FDRE \Sample_in_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[7]),
        .Q(Sample_in_buf[7]),
        .R(reset));
  FDRE \Sample_in_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[8]),
        .Q(Sample_in_buf[8]),
        .R(reset));
  FDRE \Sample_in_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_out[9]),
        .Q(Sample_in_buf[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    axi_read_valid_i_1
       (.I0(axi_rec_read),
        .I1(buffer_full),
        .I2(read_enable),
        .I3(req_read),
        .I4(s_axi_aresetn),
        .O(axi_read_valid_i_1_n_0));
  FDRE axi_read_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_read_valid_i_1_n_0),
        .Q(axi_read_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_rec_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\crnt_reg[read_state_n_0_] ),
        .O(loc_addr17_out));
  FDRE axi_rec_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(loc_addr17_out),
        .Q(axi_rec_read),
        .R(reset));
  LUT6 #(
    .INIT(64'h8F808F808F800080)) 
    buffer_full_i_1
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I2(slv_reg_in),
        .I3(buffer_full),
        .I4(req_read),
        .I5(read_enable),
        .O(buffer_full_i_1_n_0));
  FDRE buffer_full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(buffer_full_i_1_n_0),
        .Q(buffer_full),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_out[0]_i_1 
       (.I0(cnt_out_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_out[1]_i_1 
       (.I0(cnt_out_reg__0[0]),
        .I1(cnt_out_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_out[2]_i_1 
       (.I0(cnt_out_reg__0[1]),
        .I1(cnt_out_reg__0[0]),
        .I2(cnt_out_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_out[3]_i_1 
       (.I0(cnt_out_reg__0[2]),
        .I1(cnt_out_reg__0[0]),
        .I2(cnt_out_reg__0[1]),
        .I3(cnt_out_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_out[4]_i_1 
       (.I0(cnt_out_reg__0[3]),
        .I1(cnt_out_reg__0[1]),
        .I2(cnt_out_reg__0[0]),
        .I3(cnt_out_reg__0[2]),
        .I4(cnt_out_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_out[5]_i_1 
       (.I0(cnt_out_reg__0[4]),
        .I1(cnt_out_reg__0[2]),
        .I2(cnt_out_reg__0[0]),
        .I3(cnt_out_reg__0[1]),
        .I4(cnt_out_reg__0[3]),
        .I5(cnt_out_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_out[6]_i_1 
       (.I0(int_out_i_2_n_0),
        .I1(cnt_out_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt_out[7]_i_3 
       (.I0(cnt_out_reg__0[6]),
        .I1(int_out_i_2_n_0),
        .I2(cnt_out_reg__0[7]),
        .O(p_0_in__0[7]));
  FDRE \cnt_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[0]),
        .Q(cnt_out_reg__0[0]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[1]),
        .Q(cnt_out_reg__0[1]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[2]),
        .Q(cnt_out_reg__0[2]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[3]),
        .Q(cnt_out_reg__0[3]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[4]),
        .Q(cnt_out_reg__0[4]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[5]),
        .Q(cnt_out_reg__0[5]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[6]),
        .Q(cnt_out_reg__0[6]),
        .R(req_sample_n_3));
  FDRE \cnt_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(cnt_out0),
        .D(p_0_in__0[7]),
        .Q(cnt_out_reg__0[7]),
        .R(req_sample_n_3));
  LUT6 #(
    .INIT(64'h7F70F0F07070F0F0)) 
    \crnt[read_state]_i_1 
       (.I0(s_axi_rready),
        .I1(\crnt_reg[axi_rvalid]__0 ),
        .I2(\crnt_reg[read_state_n_0_] ),
        .I3(s_axi_arvalid),
        .I4(s_axi_aresetn),
        .I5(\crnt_reg[axi_arready]__0 ),
        .O(\crnt[read_state]_i_1_n_0 ));
  FDRE \crnt_reg[axi_arready] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\nxt[axi_arready] ),
        .Q(\crnt_reg[axi_arready]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[axi_awready] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\nxt[axi_awready] ),
        .Q(\crnt_reg[axi_awready]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[axi_bvalid] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\nxt[axi_bvalid] ),
        .Q(\crnt_reg[axi_bvalid]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[axi_rvalid] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\nxt[axi_rvalid] ),
        .Q(\crnt_reg[axi_rvalid]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[axi_wready] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(\nxt[axi_wready] ),
        .Q(\crnt_reg[axi_wready]__0 ),
        .R(1'b0));
  FDRE \crnt_reg[read_state] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\crnt[read_state]_i_1_n_0 ),
        .Q(\crnt_reg[read_state_n_0_] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    int_out_i_2
       (.I0(cnt_out_reg__0[4]),
        .I1(cnt_out_reg__0[2]),
        .I2(cnt_out_reg__0[0]),
        .I3(cnt_out_reg__0[1]),
        .I4(cnt_out_reg__0[3]),
        .I5(cnt_out_reg__0[5]),
        .O(int_out_i_2_n_0));
  FDRE int_out_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_sample_n_1),
        .Q(int_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[1]),
        .O(p_2_in[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[2]),
        .O(p_2_in[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[3]),
        .O(p_2_in[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[5]),
        .O(p_2_in[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[6]),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[7]),
        .O(p_2_in[7]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \loc_addr[8]_i_1 
       (.I0(s_axi_awvalid),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .I2(s_axi_arvalid),
        .I3(\crnt_reg[read_state_n_0_] ),
        .O(\loc_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \loc_addr[8]_i_2 
       (.I0(s_axi_awaddr[8]),
        .I1(\crnt_reg[read_state_n_0_] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[8]),
        .O(p_2_in[8]));
  FDRE \loc_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(loc_addr[0]),
        .R(reset));
  FDRE \loc_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(loc_addr[1]),
        .R(reset));
  FDRE \loc_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(loc_addr[2]),
        .R(reset));
  FDRE \loc_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(loc_addr[3]),
        .R(reset));
  FDRE \loc_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(loc_addr[4]),
        .R(reset));
  FDRE \loc_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(loc_addr[5]),
        .R(reset));
  FDRE \loc_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(loc_addr[6]),
        .R(reset));
  FDRE \loc_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(loc_addr[7]),
        .R(reset));
  FDRE \loc_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\loc_addr[8]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(loc_addr[8]),
        .R(reset));
  top_Jaxc_I2S_0_0_cross_domain_bus new_input_sample
       (.BCLK(BCLK),
        .Q(Sample_in),
        .SR(reset),
        .\Sample_in_buf_reg[63] (Sample_in_buf),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  FDRE \new_sample_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(new_sample[1]),
        .Q(new_sample[0]),
        .R(reset));
  LUT4 #(
    .INIT(16'h2000)) 
    \nxt[write_state] 
       (.I0(\FSM_onehot_crnt_reg[write_state_n_0_][2] ),
        .I1(buffer_full),
        .I2(s_axi_bready),
        .I3(\crnt_reg[axi_bvalid]__0 ),
        .O(\nxt[write_state_n_0_] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[0]_i_1 
       (.I0(loc_addr[1]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[1]_i_1 
       (.I0(loc_addr[2]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[2]_i_1 
       (.I0(loc_addr[3]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[3]_i_1 
       (.I0(loc_addr[4]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[4]_i_1 
       (.I0(loc_addr[5]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[5]_i_1 
       (.I0(loc_addr[6]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[6]_i_1 
       (.I0(loc_addr[7]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_addr[7]_i_1 
       (.I0(loc_addr[8]),
        .I1(axi_read_valid),
        .I2(cnt_out_reg__0[7]),
        .O(p_0_in[7]));
  FDRE \read_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[0]),
        .Q(read_addr[0]),
        .R(1'b0));
  FDRE \read_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[1]),
        .Q(read_addr[1]),
        .R(1'b0));
  FDRE \read_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[2]),
        .Q(read_addr[2]),
        .R(1'b0));
  FDRE \read_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[3]),
        .Q(read_addr[3]),
        .R(1'b0));
  FDRE \read_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[4]),
        .Q(read_addr[4]),
        .R(1'b0));
  FDRE \read_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[5]),
        .Q(read_addr[5]),
        .R(1'b0));
  FDRE \read_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[6]),
        .Q(read_addr[6]),
        .R(1'b0));
  FDRE \read_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_aresetn),
        .D(p_0_in[7]),
        .Q(read_addr[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    read_enable_i_1
       (.I0(req_read),
        .I1(write_ram),
        .O(read_enable0));
  FDRE read_enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(read_enable0),
        .Q(read_enable),
        .R(reset));
  FDRE req_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(req_sample_n_2),
        .Q(req_read),
        .R(reset));
  top_Jaxc_I2S_0_0_cross_domain_bit req_sample
       (.E(cnt_out0),
        .Q(cnt_out_reg__0[7:6]),
        .SR(reset),
        .\cnt_out_reg[0] (req_sample_n_3),
        .\cnt_out_reg[4] (int_out_i_2_n_0),
        .int_out_reg(req_sample_n_1),
        .new_sample({new_sample[2],new_sample[0]}),
        .\new_sample_reg[0] (new_sample[1]),
        .req_read(req_read),
        .req_read_reg(req_sample_n_2),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .wea(write_ram));
  LUT4 #(
    .INIT(16'h0888)) 
    \slv_reg_in[31]_i_1 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_crnt_reg[write_state_n_0_][1] ),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_crnt_reg[write_state_n_0_][0] ),
        .O(slv_reg_in));
  FDRE \slv_reg_in_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg_in_reg_n_0_[0] ),
        .R(reset));
  FDRE \slv_reg_in_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg_in_reg_n_0_[10] ),
        .R(reset));
  FDRE \slv_reg_in_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg_in_reg_n_0_[11] ),
        .R(reset));
  FDRE \slv_reg_in_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg_in_reg_n_0_[12] ),
        .R(reset));
  FDRE \slv_reg_in_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg_in_reg_n_0_[13] ),
        .R(reset));
  FDRE \slv_reg_in_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg_in_reg_n_0_[14] ),
        .R(reset));
  FDRE \slv_reg_in_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg_in_reg_n_0_[15] ),
        .R(reset));
  FDRE \slv_reg_in_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg_in_reg_n_0_[16] ),
        .R(reset));
  FDRE \slv_reg_in_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg_in_reg_n_0_[17] ),
        .R(reset));
  FDRE \slv_reg_in_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg_in_reg_n_0_[18] ),
        .R(reset));
  FDRE \slv_reg_in_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg_in_reg_n_0_[19] ),
        .R(reset));
  FDRE \slv_reg_in_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg_in_reg_n_0_[1] ),
        .R(reset));
  FDRE \slv_reg_in_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[20]),
        .Q(\slv_reg_in_reg_n_0_[20] ),
        .R(reset));
  FDRE \slv_reg_in_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[21]),
        .Q(\slv_reg_in_reg_n_0_[21] ),
        .R(reset));
  FDRE \slv_reg_in_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[22]),
        .Q(\slv_reg_in_reg_n_0_[22] ),
        .R(reset));
  FDRE \slv_reg_in_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[23]),
        .Q(\slv_reg_in_reg_n_0_[23] ),
        .R(reset));
  FDRE \slv_reg_in_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[24]),
        .Q(\slv_reg_in_reg_n_0_[24] ),
        .R(reset));
  FDRE \slv_reg_in_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[25]),
        .Q(\slv_reg_in_reg_n_0_[25] ),
        .R(reset));
  FDRE \slv_reg_in_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[26]),
        .Q(\slv_reg_in_reg_n_0_[26] ),
        .R(reset));
  FDRE \slv_reg_in_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[27]),
        .Q(\slv_reg_in_reg_n_0_[27] ),
        .R(reset));
  FDRE \slv_reg_in_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[28]),
        .Q(\slv_reg_in_reg_n_0_[28] ),
        .R(reset));
  FDRE \slv_reg_in_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[29]),
        .Q(\slv_reg_in_reg_n_0_[29] ),
        .R(reset));
  FDRE \slv_reg_in_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg_in_reg_n_0_[2] ),
        .R(reset));
  FDRE \slv_reg_in_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[30]),
        .Q(\slv_reg_in_reg_n_0_[30] ),
        .R(reset));
  FDRE \slv_reg_in_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[31]),
        .Q(\slv_reg_in_reg_n_0_[31] ),
        .R(reset));
  FDRE \slv_reg_in_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg_in_reg_n_0_[3] ),
        .R(reset));
  FDRE \slv_reg_in_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg_in_reg_n_0_[4] ),
        .R(reset));
  FDRE \slv_reg_in_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg_in_reg_n_0_[5] ),
        .R(reset));
  FDRE \slv_reg_in_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg_in_reg_n_0_[6] ),
        .R(reset));
  FDRE \slv_reg_in_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg_in_reg_n_0_[7] ),
        .R(reset));
  FDRE \slv_reg_in_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg_in_reg_n_0_[8] ),
        .R(reset));
  FDRE \slv_reg_in_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_in),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg_in_reg_n_0_[9] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \write_ram[0]_i_1 
       (.I0(buffer_full),
        .I1(s_axi_aresetn),
        .I2(req_read),
        .I3(read_enable),
        .O(\write_ram[0]_i_1_n_0 ));
  FDRE \write_ram_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\write_ram[0]_i_1_n_0 ),
        .Q(write_ram),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Output_buffer_Block_RAM,blk_mem_gen_v8_3_4,{}" *) (* ORIG_REF_NAME = "Output_buffer_Block_RAM" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "blk_mem_gen_v8_3_4,Vivado 2016.3" *) 
module top_Jaxc_I2S_0_0_Output_buffer_Block_RAM
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.677075 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Output_buffer_Block_RAM.mem" *) 
  (* C_INIT_FILE_NAME = "Output_buffer_Block_RAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  top_Jaxc_I2S_0_0_blk_mem_gen_v8_3_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0" *) 
module top_Jaxc_I2S_0_0_clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  top_Jaxc_I2S_0_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module top_Jaxc_I2S_0_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(48.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(78.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* ORIG_REF_NAME = "cross_domain_bit" *) 
module top_Jaxc_I2S_0_0_cross_domain_bit
   (\new_sample_reg[0] ,
    int_out_reg,
    req_read_reg,
    \cnt_out_reg[0] ,
    E,
    new_sample,
    s_axi_aclk,
    SR,
    \cnt_out_reg[4] ,
    Q,
    s_axi_aresetn,
    wea,
    req_read);
  output [0:0]\new_sample_reg[0] ;
  output int_out_reg;
  output req_read_reg;
  output [0:0]\cnt_out_reg[0] ;
  output [0:0]E;
  input [1:0]new_sample;
  input s_axi_aclk;
  input [0:0]SR;
  input \cnt_out_reg[4] ;
  input [1:0]Q;
  input s_axi_aresetn;
  input [0:0]wea;
  input req_read;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk_b_i_buffer;
  wire [0:0]\cnt_out_reg[0] ;
  wire \cnt_out_reg[4] ;
  wire int_out_reg;
  wire [1:0]new_sample;
  wire [0:0]\new_sample_reg[0] ;
  wire req_read;
  wire req_read_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]wea;

  FDCE clk_b_i_buffer_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(new_sample[1]),
        .Q(clk_b_i_buffer));
  FDCE clk_b_o_buffer_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer),
        .Q(\new_sample_reg[0] ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \cnt_out[7]_i_1 
       (.I0(\cnt_out_reg[4] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\new_sample_reg[0] ),
        .I4(new_sample[0]),
        .I5(s_axi_aresetn),
        .O(\cnt_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_out[7]_i_2 
       (.I0(\new_sample_reg[0] ),
        .I1(new_sample[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    int_out_i_1
       (.I0(\cnt_out_reg[4] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axi_aresetn),
        .I4(new_sample[0]),
        .I5(\new_sample_reg[0] ),
        .O(int_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    req_read_i_1
       (.I0(wea),
        .I1(req_read),
        .I2(\new_sample_reg[0] ),
        .I3(new_sample[0]),
        .O(req_read_reg));
endmodule

(* ORIG_REF_NAME = "cross_domain_bus" *) 
module top_Jaxc_I2S_0_0_cross_domain_bus
   (SR,
    Q,
    s_axi_aresetn,
    BCLK,
    \Sample_in_buf_reg[63] ,
    s_axi_aclk);
  output [0:0]SR;
  output [63:0]Q;
  input s_axi_aresetn;
  input BCLK;
  input [63:0]\Sample_in_buf_reg[63] ;
  input s_axi_aclk;

  wire BCLK;
  wire [63:0]Q;
  wire [0:0]SR;
  wire [63:0]\Sample_in_buf_reg[63] ;
  wire [63:0]clk_a_buffer;
  wire [63:0]clk_b_i_buffer;
  wire clk_b_o_buffer_regn_0_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  LUT1 #(
    .INIT(2'h1)) 
    CLK_out_int_i_2
       (.I0(s_axi_aresetn),
        .O(SR));
  FDCE \clk_a_buffer_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [0]),
        .Q(clk_a_buffer[0]));
  FDCE \clk_a_buffer_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [10]),
        .Q(clk_a_buffer[10]));
  FDCE \clk_a_buffer_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [11]),
        .Q(clk_a_buffer[11]));
  FDCE \clk_a_buffer_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [12]),
        .Q(clk_a_buffer[12]));
  FDCE \clk_a_buffer_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [13]),
        .Q(clk_a_buffer[13]));
  FDCE \clk_a_buffer_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [14]),
        .Q(clk_a_buffer[14]));
  FDCE \clk_a_buffer_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [15]),
        .Q(clk_a_buffer[15]));
  FDCE \clk_a_buffer_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [16]),
        .Q(clk_a_buffer[16]));
  FDCE \clk_a_buffer_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [17]),
        .Q(clk_a_buffer[17]));
  FDCE \clk_a_buffer_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [18]),
        .Q(clk_a_buffer[18]));
  FDCE \clk_a_buffer_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [19]),
        .Q(clk_a_buffer[19]));
  FDCE \clk_a_buffer_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [1]),
        .Q(clk_a_buffer[1]));
  FDCE \clk_a_buffer_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [20]),
        .Q(clk_a_buffer[20]));
  FDCE \clk_a_buffer_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [21]),
        .Q(clk_a_buffer[21]));
  FDCE \clk_a_buffer_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [22]),
        .Q(clk_a_buffer[22]));
  FDCE \clk_a_buffer_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [23]),
        .Q(clk_a_buffer[23]));
  FDCE \clk_a_buffer_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [24]),
        .Q(clk_a_buffer[24]));
  FDCE \clk_a_buffer_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [25]),
        .Q(clk_a_buffer[25]));
  FDCE \clk_a_buffer_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [26]),
        .Q(clk_a_buffer[26]));
  FDCE \clk_a_buffer_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [27]),
        .Q(clk_a_buffer[27]));
  FDCE \clk_a_buffer_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [28]),
        .Q(clk_a_buffer[28]));
  FDCE \clk_a_buffer_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [29]),
        .Q(clk_a_buffer[29]));
  FDCE \clk_a_buffer_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [2]),
        .Q(clk_a_buffer[2]));
  FDCE \clk_a_buffer_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [30]),
        .Q(clk_a_buffer[30]));
  FDCE \clk_a_buffer_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [31]),
        .Q(clk_a_buffer[31]));
  FDCE \clk_a_buffer_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [32]),
        .Q(clk_a_buffer[32]));
  FDCE \clk_a_buffer_reg[33] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [33]),
        .Q(clk_a_buffer[33]));
  FDCE \clk_a_buffer_reg[34] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [34]),
        .Q(clk_a_buffer[34]));
  FDCE \clk_a_buffer_reg[35] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [35]),
        .Q(clk_a_buffer[35]));
  FDCE \clk_a_buffer_reg[36] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [36]),
        .Q(clk_a_buffer[36]));
  FDCE \clk_a_buffer_reg[37] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [37]),
        .Q(clk_a_buffer[37]));
  FDCE \clk_a_buffer_reg[38] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [38]),
        .Q(clk_a_buffer[38]));
  FDCE \clk_a_buffer_reg[39] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [39]),
        .Q(clk_a_buffer[39]));
  FDCE \clk_a_buffer_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [3]),
        .Q(clk_a_buffer[3]));
  FDCE \clk_a_buffer_reg[40] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [40]),
        .Q(clk_a_buffer[40]));
  FDCE \clk_a_buffer_reg[41] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [41]),
        .Q(clk_a_buffer[41]));
  FDCE \clk_a_buffer_reg[42] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [42]),
        .Q(clk_a_buffer[42]));
  FDCE \clk_a_buffer_reg[43] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [43]),
        .Q(clk_a_buffer[43]));
  FDCE \clk_a_buffer_reg[44] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [44]),
        .Q(clk_a_buffer[44]));
  FDCE \clk_a_buffer_reg[45] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [45]),
        .Q(clk_a_buffer[45]));
  FDCE \clk_a_buffer_reg[46] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [46]),
        .Q(clk_a_buffer[46]));
  FDCE \clk_a_buffer_reg[47] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [47]),
        .Q(clk_a_buffer[47]));
  FDCE \clk_a_buffer_reg[48] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [48]),
        .Q(clk_a_buffer[48]));
  FDCE \clk_a_buffer_reg[49] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [49]),
        .Q(clk_a_buffer[49]));
  FDCE \clk_a_buffer_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [4]),
        .Q(clk_a_buffer[4]));
  FDCE \clk_a_buffer_reg[50] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [50]),
        .Q(clk_a_buffer[50]));
  FDCE \clk_a_buffer_reg[51] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [51]),
        .Q(clk_a_buffer[51]));
  FDCE \clk_a_buffer_reg[52] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [52]),
        .Q(clk_a_buffer[52]));
  FDCE \clk_a_buffer_reg[53] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [53]),
        .Q(clk_a_buffer[53]));
  FDCE \clk_a_buffer_reg[54] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [54]),
        .Q(clk_a_buffer[54]));
  FDCE \clk_a_buffer_reg[55] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [55]),
        .Q(clk_a_buffer[55]));
  FDCE \clk_a_buffer_reg[56] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [56]),
        .Q(clk_a_buffer[56]));
  FDCE \clk_a_buffer_reg[57] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [57]),
        .Q(clk_a_buffer[57]));
  FDCE \clk_a_buffer_reg[58] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [58]),
        .Q(clk_a_buffer[58]));
  FDCE \clk_a_buffer_reg[59] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [59]),
        .Q(clk_a_buffer[59]));
  FDCE \clk_a_buffer_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [5]),
        .Q(clk_a_buffer[5]));
  FDCE \clk_a_buffer_reg[60] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [60]),
        .Q(clk_a_buffer[60]));
  FDCE \clk_a_buffer_reg[61] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [61]),
        .Q(clk_a_buffer[61]));
  FDCE \clk_a_buffer_reg[62] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [62]),
        .Q(clk_a_buffer[62]));
  FDCE \clk_a_buffer_reg[63] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [63]),
        .Q(clk_a_buffer[63]));
  FDCE \clk_a_buffer_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [6]),
        .Q(clk_a_buffer[6]));
  FDCE \clk_a_buffer_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [7]),
        .Q(clk_a_buffer[7]));
  FDCE \clk_a_buffer_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [8]),
        .Q(clk_a_buffer[8]));
  FDCE \clk_a_buffer_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\Sample_in_buf_reg[63] [9]),
        .Q(clk_a_buffer[9]));
  FDCE \clk_b_i_buffer_reg[0] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[0]),
        .Q(clk_b_i_buffer[0]));
  FDCE \clk_b_i_buffer_reg[10] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[10]),
        .Q(clk_b_i_buffer[10]));
  FDCE \clk_b_i_buffer_reg[11] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[11]),
        .Q(clk_b_i_buffer[11]));
  FDCE \clk_b_i_buffer_reg[12] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[12]),
        .Q(clk_b_i_buffer[12]));
  FDCE \clk_b_i_buffer_reg[13] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[13]),
        .Q(clk_b_i_buffer[13]));
  FDCE \clk_b_i_buffer_reg[14] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[14]),
        .Q(clk_b_i_buffer[14]));
  FDCE \clk_b_i_buffer_reg[15] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[15]),
        .Q(clk_b_i_buffer[15]));
  FDCE \clk_b_i_buffer_reg[16] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[16]),
        .Q(clk_b_i_buffer[16]));
  FDCE \clk_b_i_buffer_reg[17] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[17]),
        .Q(clk_b_i_buffer[17]));
  FDCE \clk_b_i_buffer_reg[18] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[18]),
        .Q(clk_b_i_buffer[18]));
  FDCE \clk_b_i_buffer_reg[19] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[19]),
        .Q(clk_b_i_buffer[19]));
  FDCE \clk_b_i_buffer_reg[1] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[1]),
        .Q(clk_b_i_buffer[1]));
  FDCE \clk_b_i_buffer_reg[20] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[20]),
        .Q(clk_b_i_buffer[20]));
  FDCE \clk_b_i_buffer_reg[21] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[21]),
        .Q(clk_b_i_buffer[21]));
  FDCE \clk_b_i_buffer_reg[22] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[22]),
        .Q(clk_b_i_buffer[22]));
  FDCE \clk_b_i_buffer_reg[23] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[23]),
        .Q(clk_b_i_buffer[23]));
  FDCE \clk_b_i_buffer_reg[24] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[24]),
        .Q(clk_b_i_buffer[24]));
  FDCE \clk_b_i_buffer_reg[25] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[25]),
        .Q(clk_b_i_buffer[25]));
  FDCE \clk_b_i_buffer_reg[26] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[26]),
        .Q(clk_b_i_buffer[26]));
  FDCE \clk_b_i_buffer_reg[27] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[27]),
        .Q(clk_b_i_buffer[27]));
  FDCE \clk_b_i_buffer_reg[28] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[28]),
        .Q(clk_b_i_buffer[28]));
  FDCE \clk_b_i_buffer_reg[29] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[29]),
        .Q(clk_b_i_buffer[29]));
  FDCE \clk_b_i_buffer_reg[2] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[2]),
        .Q(clk_b_i_buffer[2]));
  FDCE \clk_b_i_buffer_reg[30] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[30]),
        .Q(clk_b_i_buffer[30]));
  FDCE \clk_b_i_buffer_reg[31] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[31]),
        .Q(clk_b_i_buffer[31]));
  FDCE \clk_b_i_buffer_reg[32] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[32]),
        .Q(clk_b_i_buffer[32]));
  FDCE \clk_b_i_buffer_reg[33] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[33]),
        .Q(clk_b_i_buffer[33]));
  FDCE \clk_b_i_buffer_reg[34] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[34]),
        .Q(clk_b_i_buffer[34]));
  FDCE \clk_b_i_buffer_reg[35] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[35]),
        .Q(clk_b_i_buffer[35]));
  FDCE \clk_b_i_buffer_reg[36] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[36]),
        .Q(clk_b_i_buffer[36]));
  FDCE \clk_b_i_buffer_reg[37] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[37]),
        .Q(clk_b_i_buffer[37]));
  FDCE \clk_b_i_buffer_reg[38] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[38]),
        .Q(clk_b_i_buffer[38]));
  FDCE \clk_b_i_buffer_reg[39] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[39]),
        .Q(clk_b_i_buffer[39]));
  FDCE \clk_b_i_buffer_reg[3] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[3]),
        .Q(clk_b_i_buffer[3]));
  FDCE \clk_b_i_buffer_reg[40] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[40]),
        .Q(clk_b_i_buffer[40]));
  FDCE \clk_b_i_buffer_reg[41] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[41]),
        .Q(clk_b_i_buffer[41]));
  FDCE \clk_b_i_buffer_reg[42] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[42]),
        .Q(clk_b_i_buffer[42]));
  FDCE \clk_b_i_buffer_reg[43] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[43]),
        .Q(clk_b_i_buffer[43]));
  FDCE \clk_b_i_buffer_reg[44] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[44]),
        .Q(clk_b_i_buffer[44]));
  FDCE \clk_b_i_buffer_reg[45] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[45]),
        .Q(clk_b_i_buffer[45]));
  FDCE \clk_b_i_buffer_reg[46] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[46]),
        .Q(clk_b_i_buffer[46]));
  FDCE \clk_b_i_buffer_reg[47] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[47]),
        .Q(clk_b_i_buffer[47]));
  FDCE \clk_b_i_buffer_reg[48] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[48]),
        .Q(clk_b_i_buffer[48]));
  FDCE \clk_b_i_buffer_reg[49] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[49]),
        .Q(clk_b_i_buffer[49]));
  FDCE \clk_b_i_buffer_reg[4] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[4]),
        .Q(clk_b_i_buffer[4]));
  FDCE \clk_b_i_buffer_reg[50] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[50]),
        .Q(clk_b_i_buffer[50]));
  FDCE \clk_b_i_buffer_reg[51] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[51]),
        .Q(clk_b_i_buffer[51]));
  FDCE \clk_b_i_buffer_reg[52] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[52]),
        .Q(clk_b_i_buffer[52]));
  FDCE \clk_b_i_buffer_reg[53] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[53]),
        .Q(clk_b_i_buffer[53]));
  FDCE \clk_b_i_buffer_reg[54] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[54]),
        .Q(clk_b_i_buffer[54]));
  FDCE \clk_b_i_buffer_reg[55] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[55]),
        .Q(clk_b_i_buffer[55]));
  FDCE \clk_b_i_buffer_reg[56] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[56]),
        .Q(clk_b_i_buffer[56]));
  FDCE \clk_b_i_buffer_reg[57] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[57]),
        .Q(clk_b_i_buffer[57]));
  FDCE \clk_b_i_buffer_reg[58] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[58]),
        .Q(clk_b_i_buffer[58]));
  FDCE \clk_b_i_buffer_reg[59] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[59]),
        .Q(clk_b_i_buffer[59]));
  FDCE \clk_b_i_buffer_reg[5] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[5]),
        .Q(clk_b_i_buffer[5]));
  FDCE \clk_b_i_buffer_reg[60] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[60]),
        .Q(clk_b_i_buffer[60]));
  FDCE \clk_b_i_buffer_reg[61] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[61]),
        .Q(clk_b_i_buffer[61]));
  FDCE \clk_b_i_buffer_reg[62] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[62]),
        .Q(clk_b_i_buffer[62]));
  FDCE \clk_b_i_buffer_reg[63] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[63]),
        .Q(clk_b_i_buffer[63]));
  FDCE \clk_b_i_buffer_reg[6] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[6]),
        .Q(clk_b_i_buffer[6]));
  FDCE \clk_b_i_buffer_reg[7] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[7]),
        .Q(clk_b_i_buffer[7]));
  FDCE \clk_b_i_buffer_reg[8] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[8]),
        .Q(clk_b_i_buffer[8]));
  FDCE \clk_b_i_buffer_reg[9] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_a_buffer[9]),
        .Q(clk_b_i_buffer[9]));
  FDCE \clk_b_o_buffer_reg[0] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[0]),
        .Q(Q[0]));
  FDCE \clk_b_o_buffer_reg[10] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[10]),
        .Q(Q[10]));
  FDCE \clk_b_o_buffer_reg[11] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[11]),
        .Q(Q[11]));
  FDCE \clk_b_o_buffer_reg[12] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[12]),
        .Q(Q[12]));
  FDCE \clk_b_o_buffer_reg[13] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[13]),
        .Q(Q[13]));
  FDCE \clk_b_o_buffer_reg[14] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[14]),
        .Q(Q[14]));
  FDCE \clk_b_o_buffer_reg[15] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[15]),
        .Q(Q[15]));
  FDCE \clk_b_o_buffer_reg[16] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[16]),
        .Q(Q[16]));
  FDCE \clk_b_o_buffer_reg[17] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[17]),
        .Q(Q[17]));
  FDCE \clk_b_o_buffer_reg[18] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[18]),
        .Q(Q[18]));
  FDCE \clk_b_o_buffer_reg[19] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[19]),
        .Q(Q[19]));
  FDCE \clk_b_o_buffer_reg[1] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[1]),
        .Q(Q[1]));
  FDCE \clk_b_o_buffer_reg[20] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[20]),
        .Q(Q[20]));
  FDCE \clk_b_o_buffer_reg[21] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[21]),
        .Q(Q[21]));
  FDCE \clk_b_o_buffer_reg[22] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[22]),
        .Q(Q[22]));
  FDCE \clk_b_o_buffer_reg[23] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[23]),
        .Q(Q[23]));
  FDCE \clk_b_o_buffer_reg[24] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[24]),
        .Q(Q[24]));
  FDCE \clk_b_o_buffer_reg[25] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[25]),
        .Q(Q[25]));
  FDCE \clk_b_o_buffer_reg[26] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[26]),
        .Q(Q[26]));
  FDCE \clk_b_o_buffer_reg[27] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[27]),
        .Q(Q[27]));
  FDCE \clk_b_o_buffer_reg[28] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[28]),
        .Q(Q[28]));
  FDCE \clk_b_o_buffer_reg[29] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[29]),
        .Q(Q[29]));
  FDCE \clk_b_o_buffer_reg[2] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[2]),
        .Q(Q[2]));
  FDCE \clk_b_o_buffer_reg[30] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[30]),
        .Q(Q[30]));
  FDCE \clk_b_o_buffer_reg[31] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[31]),
        .Q(Q[31]));
  FDCE \clk_b_o_buffer_reg[32] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[32]),
        .Q(Q[32]));
  FDCE \clk_b_o_buffer_reg[33] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[33]),
        .Q(Q[33]));
  FDCE \clk_b_o_buffer_reg[34] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[34]),
        .Q(Q[34]));
  FDCE \clk_b_o_buffer_reg[35] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[35]),
        .Q(Q[35]));
  FDCE \clk_b_o_buffer_reg[36] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[36]),
        .Q(Q[36]));
  FDCE \clk_b_o_buffer_reg[37] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[37]),
        .Q(Q[37]));
  FDCE \clk_b_o_buffer_reg[38] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[38]),
        .Q(Q[38]));
  FDCE \clk_b_o_buffer_reg[39] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[39]),
        .Q(Q[39]));
  FDCE \clk_b_o_buffer_reg[3] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[3]),
        .Q(Q[3]));
  FDCE \clk_b_o_buffer_reg[40] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[40]),
        .Q(Q[40]));
  FDCE \clk_b_o_buffer_reg[41] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[41]),
        .Q(Q[41]));
  FDCE \clk_b_o_buffer_reg[42] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[42]),
        .Q(Q[42]));
  FDCE \clk_b_o_buffer_reg[43] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[43]),
        .Q(Q[43]));
  FDCE \clk_b_o_buffer_reg[44] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[44]),
        .Q(Q[44]));
  FDCE \clk_b_o_buffer_reg[45] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[45]),
        .Q(Q[45]));
  FDCE \clk_b_o_buffer_reg[46] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[46]),
        .Q(Q[46]));
  FDCE \clk_b_o_buffer_reg[47] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[47]),
        .Q(Q[47]));
  FDCE \clk_b_o_buffer_reg[48] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[48]),
        .Q(Q[48]));
  FDCE \clk_b_o_buffer_reg[49] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[49]),
        .Q(Q[49]));
  FDCE \clk_b_o_buffer_reg[4] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[4]),
        .Q(Q[4]));
  FDCE \clk_b_o_buffer_reg[50] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[50]),
        .Q(Q[50]));
  FDCE \clk_b_o_buffer_reg[51] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[51]),
        .Q(Q[51]));
  FDCE \clk_b_o_buffer_reg[52] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[52]),
        .Q(Q[52]));
  FDCE \clk_b_o_buffer_reg[53] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[53]),
        .Q(Q[53]));
  FDCE \clk_b_o_buffer_reg[54] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[54]),
        .Q(Q[54]));
  FDCE \clk_b_o_buffer_reg[55] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[55]),
        .Q(Q[55]));
  FDCE \clk_b_o_buffer_reg[56] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[56]),
        .Q(Q[56]));
  FDCE \clk_b_o_buffer_reg[57] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[57]),
        .Q(Q[57]));
  FDCE \clk_b_o_buffer_reg[58] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[58]),
        .Q(Q[58]));
  FDCE \clk_b_o_buffer_reg[59] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[59]),
        .Q(Q[59]));
  FDCE \clk_b_o_buffer_reg[5] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[5]),
        .Q(Q[5]));
  FDCE \clk_b_o_buffer_reg[60] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[60]),
        .Q(Q[60]));
  FDCE \clk_b_o_buffer_reg[61] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[61]),
        .Q(Q[61]));
  FDCE \clk_b_o_buffer_reg[62] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[62]),
        .Q(Q[62]));
  FDCE \clk_b_o_buffer_reg[63] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[63]),
        .Q(Q[63]));
  FDCE \clk_b_o_buffer_reg[6] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[6]),
        .Q(Q[6]));
  FDCE \clk_b_o_buffer_reg[7] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[7]),
        .Q(Q[7]));
  FDCE \clk_b_o_buffer_reg[8] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[8]),
        .Q(Q[8]));
  FDCE \clk_b_o_buffer_reg[9] 
       (.C(clk_b_o_buffer_regn_0_0),
        .CE(1'b1),
        .CLR(SR),
        .D(clk_b_i_buffer[9]),
        .Q(Q[9]));
  LUT1 #(
    .INIT(2'h1)) 
    clk_b_o_buffer_regi_0
       (.I0(BCLK),
        .O(clk_b_o_buffer_regn_0_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_generic_cstr
   (doutb,
    clkb,
    clka,
    enb,
    wea,
    addrb,
    addra,
    dina);
  output [63:0]doutb;
  input clkb;
  input clka;
  input enb;
  input [0:0]wea;
  input [7:0]addrb;
  input [8:0]addra;
  input [31:0]dina;

  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;

  top_Jaxc_I2S_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_prim_width
   (doutb,
    clkb,
    clka,
    enb,
    wea,
    addrb,
    addra,
    dina);
  output [63:0]doutb;
  input clkb;
  input clka;
  input enb;
  input [0:0]wea;
  input [7:0]addrb;
  input [8:0]addra;
  input [31:0]dina;

  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;

  top_Jaxc_I2S_0_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_prim_wrapper_init
   (doutb,
    clkb,
    clka,
    enb,
    wea,
    addrb,
    addra,
    dina);
  output [63:0]doutb;
  input clkb;
  input clka;
  input enb;
  input [0:0]wea;
  input [7:0]addrb;
  input [8:0]addra;
  input [31:0]dina;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_85 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_86 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_89 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_90 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_92 ;
  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_01(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_02(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_03(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_04(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_05(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_06(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_07(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_08(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_09(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0A(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0B(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0C(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0D(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0E(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_0F(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_10(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_11(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_12(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_13(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_14(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_15(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_16(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_17(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_18(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_19(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1A(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1B(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1C(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1D(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1E(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_1F(256'h7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF7FFFFFFF),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram 
       (.ADDRARDADDR({1'b1,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(dina),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(doutb[31:0]),
        .DOBDO(doutb[63:32]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_85 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_86 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_88 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_89 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_90 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(wea),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_sp.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_top
   (doutb,
    clkb,
    clka,
    enb,
    wea,
    addrb,
    addra,
    dina);
  output [63:0]doutb;
  input clkb;
  input clka;
  input enb;
  input [0:0]wea;
  input [7:0]addrb;
  input [8:0]addra;
  input [31:0]dina;

  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;

  top_Jaxc_I2S_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .enb(enb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "9" *) (* C_ADDRB_WIDTH = "8" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.677075 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Output_buffer_Block_RAM.mem" *) 
(* C_INIT_FILE_NAME = "Output_buffer_Block_RAM.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "512" *) (* C_READ_DEPTH_B = "256" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "64" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "512" *) (* C_WRITE_DEPTH_B = "256" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "READ_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "64" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_v8_3_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [8:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [7:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [7:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_Jaxc_I2S_0_0_blk_mem_gen_v8_3_4_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_4_synth" *) 
module top_Jaxc_I2S_0_0_blk_mem_gen_v8_3_4_synth
   (doutb,
    clkb,
    clka,
    enb,
    wea,
    addrb,
    addra,
    dina);
  output [63:0]doutb;
  input clkb;
  input clka;
  input enb;
  input [0:0]wea;
  input [7:0]addrb;
  input [8:0]addra;
  input [31:0]dina;

  wire [8:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire enb;
  wire [0:0]wea;

  top_Jaxc_I2S_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .enb(enb),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
