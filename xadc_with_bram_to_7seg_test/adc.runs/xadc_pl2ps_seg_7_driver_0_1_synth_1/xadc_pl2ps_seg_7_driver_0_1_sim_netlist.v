// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Dec 11 14:55:30 2019
// Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xadc_pl2ps_seg_7_driver_0_1_sim_netlist.v
// Design      : xadc_pl2ps_seg_7_driver_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xadc_pl2ps_seg_7_driver_0_1,seg_7_driver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "seg_7_driver,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (BCD,
    en,
    LED_out);
  input [3:0]BCD;
  input en;
  output [6:0]LED_out;

  wire [3:0]BCD;
  wire [6:0]LED_out;
  wire en;

  LUT5 #(
    .INIT(32'hAA288AA8)) 
    \LED_out[0]_INST_0 
       (.I0(en),
        .I1(BCD[1]),
        .I2(BCD[2]),
        .I3(BCD[3]),
        .I4(BCD[0]),
        .O(LED_out[0]));
  LUT5 #(
    .INIT(32'h82A0AA22)) 
    \LED_out[1]_INST_0 
       (.I0(en),
        .I1(BCD[1]),
        .I2(BCD[3]),
        .I3(BCD[2]),
        .I4(BCD[0]),
        .O(LED_out[1]));
  LUT5 #(
    .INIT(32'h8880AA8A)) 
    \LED_out[2]_INST_0 
       (.I0(en),
        .I1(BCD[3]),
        .I2(BCD[2]),
        .I3(BCD[1]),
        .I4(BCD[0]),
        .O(LED_out[2]));
  LUT5 #(
    .INIT(32'h2A28AAA2)) 
    \LED_out[3]_INST_0 
       (.I0(en),
        .I1(BCD[2]),
        .I2(BCD[1]),
        .I3(BCD[3]),
        .I4(BCD[0]),
        .O(LED_out[3]));
  LUT5 #(
    .INIT(32'h0AA88AAA)) 
    \LED_out[4]_INST_0 
       (.I0(en),
        .I1(BCD[0]),
        .I2(BCD[2]),
        .I3(BCD[3]),
        .I4(BCD[1]),
        .O(LED_out[4]));
  LUT5 #(
    .INIT(32'h028A8A2A)) 
    \LED_out[5]_INST_0 
       (.I0(en),
        .I1(BCD[0]),
        .I2(BCD[2]),
        .I3(BCD[3]),
        .I4(BCD[1]),
        .O(LED_out[5]));
  LUT5 #(
    .INIT(32'hA2AA2A82)) 
    \LED_out[6]_INST_0 
       (.I0(en),
        .I1(BCD[0]),
        .I2(BCD[2]),
        .I3(BCD[3]),
        .I4(BCD[1]),
        .O(LED_out[6]));
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
