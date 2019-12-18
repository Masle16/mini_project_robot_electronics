// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec 15 12:33:12 2019
// Host        : DESKTOP-7FQ3E2M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/An-ck/Desktop/xadc_with_bram_with_one_addr/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_comparator_N_bit_0_1/xadc_pl2ps_comparator_N_bit_0_1_sim_netlist.v
// Design      : xadc_pl2ps_comparator_N_bit_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xadc_pl2ps_comparator_N_bit_0_1,comparator_N_bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "comparator_N_bit,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module xadc_pl2ps_comparator_N_bit_0_1
   (count,
    threshold,
    OutBit);
  input [12:0]count;
  input [12:0]threshold;
  output OutBit;

  wire OutBit;
  wire [12:0]count;
  wire [12:0]threshold;

  xadc_pl2ps_comparator_N_bit_0_1_comparator_N_bit U0
       (.OutBit(OutBit),
        .count(count),
        .threshold(threshold));
endmodule

(* ORIG_REF_NAME = "comparator_N_bit" *) 
module xadc_pl2ps_comparator_N_bit_0_1_comparator_N_bit
   (OutBit,
    count,
    threshold);
  output OutBit;
  input [12:0]count;
  input [12:0]threshold;

  wire OutBit;
  wire OutBit_INST_0_i_10_n_0;
  wire OutBit_INST_0_i_11_n_0;
  wire OutBit_INST_0_i_12_n_0;
  wire OutBit_INST_0_i_13_n_0;
  wire OutBit_INST_0_i_14_n_0;
  wire OutBit_INST_0_i_15_n_0;
  wire OutBit_INST_0_i_1_n_0;
  wire OutBit_INST_0_i_1_n_1;
  wire OutBit_INST_0_i_1_n_2;
  wire OutBit_INST_0_i_1_n_3;
  wire OutBit_INST_0_i_2_n_0;
  wire OutBit_INST_0_i_3_n_0;
  wire OutBit_INST_0_i_4_n_0;
  wire OutBit_INST_0_i_5_n_0;
  wire OutBit_INST_0_i_6_n_0;
  wire OutBit_INST_0_i_7_n_0;
  wire OutBit_INST_0_i_8_n_0;
  wire OutBit_INST_0_i_9_n_0;
  wire OutBit_INST_0_n_2;
  wire OutBit_INST_0_n_3;
  wire [12:0]count;
  wire [12:0]threshold;
  wire [3:3]NLW_OutBit_INST_0_CO_UNCONNECTED;
  wire [3:0]NLW_OutBit_INST_0_O_UNCONNECTED;
  wire [3:0]NLW_OutBit_INST_0_i_1_O_UNCONNECTED;

  CARRY4 OutBit_INST_0
       (.CI(OutBit_INST_0_i_1_n_0),
        .CO({NLW_OutBit_INST_0_CO_UNCONNECTED[3],OutBit,OutBit_INST_0_n_2,OutBit_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,OutBit_INST_0_i_2_n_0,OutBit_INST_0_i_3_n_0,OutBit_INST_0_i_4_n_0}),
        .O(NLW_OutBit_INST_0_O_UNCONNECTED[3:0]),
        .S({1'b0,OutBit_INST_0_i_5_n_0,OutBit_INST_0_i_6_n_0,OutBit_INST_0_i_7_n_0}));
  CARRY4 OutBit_INST_0_i_1
       (.CI(1'b0),
        .CO({OutBit_INST_0_i_1_n_0,OutBit_INST_0_i_1_n_1,OutBit_INST_0_i_1_n_2,OutBit_INST_0_i_1_n_3}),
        .CYINIT(1'b1),
        .DI({OutBit_INST_0_i_8_n_0,OutBit_INST_0_i_9_n_0,OutBit_INST_0_i_10_n_0,OutBit_INST_0_i_11_n_0}),
        .O(NLW_OutBit_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({OutBit_INST_0_i_12_n_0,OutBit_INST_0_i_13_n_0,OutBit_INST_0_i_14_n_0,OutBit_INST_0_i_15_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_10
       (.I0(count[2]),
        .I1(threshold[2]),
        .I2(threshold[3]),
        .I3(count[3]),
        .O(OutBit_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_11
       (.I0(count[0]),
        .I1(threshold[0]),
        .I2(threshold[1]),
        .I3(count[1]),
        .O(OutBit_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_12
       (.I0(count[6]),
        .I1(threshold[6]),
        .I2(count[7]),
        .I3(threshold[7]),
        .O(OutBit_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_13
       (.I0(count[4]),
        .I1(threshold[4]),
        .I2(count[5]),
        .I3(threshold[5]),
        .O(OutBit_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_14
       (.I0(count[2]),
        .I1(threshold[2]),
        .I2(count[3]),
        .I3(threshold[3]),
        .O(OutBit_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_15
       (.I0(count[0]),
        .I1(threshold[0]),
        .I2(count[1]),
        .I3(threshold[1]),
        .O(OutBit_INST_0_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    OutBit_INST_0_i_2
       (.I0(count[12]),
        .I1(threshold[12]),
        .O(OutBit_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_3
       (.I0(count[10]),
        .I1(threshold[10]),
        .I2(threshold[11]),
        .I3(count[11]),
        .O(OutBit_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_4
       (.I0(count[8]),
        .I1(threshold[8]),
        .I2(threshold[9]),
        .I3(count[9]),
        .O(OutBit_INST_0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    OutBit_INST_0_i_5
       (.I0(threshold[12]),
        .I1(count[12]),
        .O(OutBit_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_6
       (.I0(count[10]),
        .I1(threshold[10]),
        .I2(count[11]),
        .I3(threshold[11]),
        .O(OutBit_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    OutBit_INST_0_i_7
       (.I0(count[8]),
        .I1(threshold[8]),
        .I2(count[9]),
        .I3(threshold[9]),
        .O(OutBit_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_8
       (.I0(count[6]),
        .I1(threshold[6]),
        .I2(threshold[7]),
        .I3(count[7]),
        .O(OutBit_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    OutBit_INST_0_i_9
       (.I0(count[4]),
        .I1(threshold[4]),
        .I2(threshold[5]),
        .I3(count[5]),
        .O(OutBit_INST_0_i_9_n_0));
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
