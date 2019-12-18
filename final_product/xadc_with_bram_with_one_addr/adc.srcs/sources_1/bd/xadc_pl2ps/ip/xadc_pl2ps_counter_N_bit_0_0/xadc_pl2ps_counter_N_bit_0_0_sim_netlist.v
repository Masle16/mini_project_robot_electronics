// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec 15 12:33:19 2019
// Host        : DESKTOP-7FQ3E2M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/An-ck/Desktop/xadc_with_bram_with_one_addr/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_counter_N_bit_0_0/xadc_pl2ps_counter_N_bit_0_0_sim_netlist.v
// Design      : xadc_pl2ps_counter_N_bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xadc_pl2ps_counter_N_bit_0_0,counter_N_bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter_N_bit,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module xadc_pl2ps_counter_N_bit_0_0
   (en,
    rst,
    clk,
    count);
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN xadc_pl2ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [12:0]count;

  wire clk;
  wire [12:0]count;
  wire en;
  wire rst;

  xadc_pl2ps_counter_N_bit_0_0_counter_N_bit U0
       (.clk(clk),
        .count(count),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "counter_N_bit" *) 
module xadc_pl2ps_counter_N_bit_0_0_counter_N_bit
   (count,
    en,
    clk,
    rst);
  output [12:0]count;
  input en;
  input clk;
  input rst;

  wire clk;
  wire [12:0]count;
  wire \count_sig[3]_i_2_n_0 ;
  wire \count_sig_reg[11]_i_1_n_0 ;
  wire \count_sig_reg[11]_i_1_n_1 ;
  wire \count_sig_reg[11]_i_1_n_2 ;
  wire \count_sig_reg[11]_i_1_n_3 ;
  wire \count_sig_reg[11]_i_1_n_4 ;
  wire \count_sig_reg[11]_i_1_n_5 ;
  wire \count_sig_reg[11]_i_1_n_6 ;
  wire \count_sig_reg[11]_i_1_n_7 ;
  wire \count_sig_reg[12]_i_1_n_7 ;
  wire \count_sig_reg[3]_i_1_n_0 ;
  wire \count_sig_reg[3]_i_1_n_1 ;
  wire \count_sig_reg[3]_i_1_n_2 ;
  wire \count_sig_reg[3]_i_1_n_3 ;
  wire \count_sig_reg[3]_i_1_n_4 ;
  wire \count_sig_reg[3]_i_1_n_5 ;
  wire \count_sig_reg[3]_i_1_n_6 ;
  wire \count_sig_reg[3]_i_1_n_7 ;
  wire \count_sig_reg[7]_i_1_n_0 ;
  wire \count_sig_reg[7]_i_1_n_1 ;
  wire \count_sig_reg[7]_i_1_n_2 ;
  wire \count_sig_reg[7]_i_1_n_3 ;
  wire \count_sig_reg[7]_i_1_n_4 ;
  wire \count_sig_reg[7]_i_1_n_5 ;
  wire \count_sig_reg[7]_i_1_n_6 ;
  wire \count_sig_reg[7]_i_1_n_7 ;
  wire en;
  wire rst;
  wire [3:0]\NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_sig_reg[12]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[3]_i_2 
       (.I0(count[0]),
        .O(\count_sig[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[3]_i_1_n_7 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[10] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[11]_i_1_n_5 ),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[11] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[11]_i_1_n_4 ),
        .Q(count[11]));
  CARRY4 \count_sig_reg[11]_i_1 
       (.CI(\count_sig_reg[7]_i_1_n_0 ),
        .CO({\count_sig_reg[11]_i_1_n_0 ,\count_sig_reg[11]_i_1_n_1 ,\count_sig_reg[11]_i_1_n_2 ,\count_sig_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[11]_i_1_n_4 ,\count_sig_reg[11]_i_1_n_5 ,\count_sig_reg[11]_i_1_n_6 ,\count_sig_reg[11]_i_1_n_7 }),
        .S(count[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[12] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[12]_i_1_n_7 ),
        .Q(count[12]));
  CARRY4 \count_sig_reg[12]_i_1 
       (.CI(\count_sig_reg[11]_i_1_n_0 ),
        .CO(\NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sig_reg[12]_i_1_O_UNCONNECTED [3:1],\count_sig_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count[12]}));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[3]_i_1_n_6 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[3]_i_1_n_5 ),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[3]_i_1_n_4 ),
        .Q(count[3]));
  CARRY4 \count_sig_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_sig_reg[3]_i_1_n_0 ,\count_sig_reg[3]_i_1_n_1 ,\count_sig_reg[3]_i_1_n_2 ,\count_sig_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_sig_reg[3]_i_1_n_4 ,\count_sig_reg[3]_i_1_n_5 ,\count_sig_reg[3]_i_1_n_6 ,\count_sig_reg[3]_i_1_n_7 }),
        .S({count[3:1],\count_sig[3]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[7]_i_1_n_7 ),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[7]_i_1_n_6 ),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[7]_i_1_n_5 ),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[7]_i_1_n_4 ),
        .Q(count[7]));
  CARRY4 \count_sig_reg[7]_i_1 
       (.CI(\count_sig_reg[3]_i_1_n_0 ),
        .CO({\count_sig_reg[7]_i_1_n_0 ,\count_sig_reg[7]_i_1_n_1 ,\count_sig_reg[7]_i_1_n_2 ,\count_sig_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[7]_i_1_n_4 ,\count_sig_reg[7]_i_1_n_5 ,\count_sig_reg[7]_i_1_n_6 ,\count_sig_reg[7]_i_1_n_7 }),
        .S(count[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[11]_i_1_n_7 ),
        .Q(count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\count_sig_reg[11]_i_1_n_6 ),
        .Q(count[9]));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
