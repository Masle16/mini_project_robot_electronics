// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 13 09:48:23 2019
// Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/mikke/OneDrive/Skrivebord/Final_project/xadc_with_bram_with_fsm/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_fsm_addr_switcher_1_0/xadc_pl2ps_fsm_addr_switcher_1_0_sim_netlist.v
// Design      : xadc_pl2ps_fsm_addr_switcher_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xadc_pl2ps_fsm_addr_switcher_1_0,fsm_addr_switcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "fsm_addr_switcher,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module xadc_pl2ps_fsm_addr_switcher_1_0
   (clk,
    en,
    rst,
    data_from_addr,
    addr,
    pwm_inc,
    bat_lvl);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN xadc_pl2ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]data_from_addr;
  output [31:0]addr;
  output [1:0]pwm_inc;
  output bat_lvl;

  wire \<const0> ;
  wire [2:2]\^addr ;
  wire bat_lvl;
  wire clk;
  wire [31:0]data_from_addr;
  wire [1:0]pwm_inc;
  wire rst;

  assign addr[31] = \<const0> ;
  assign addr[30] = \<const0> ;
  assign addr[29] = \<const0> ;
  assign addr[28] = \<const0> ;
  assign addr[27] = \<const0> ;
  assign addr[26] = \<const0> ;
  assign addr[25] = \<const0> ;
  assign addr[24] = \<const0> ;
  assign addr[23] = \<const0> ;
  assign addr[22] = \<const0> ;
  assign addr[21] = \<const0> ;
  assign addr[20] = \<const0> ;
  assign addr[19] = \<const0> ;
  assign addr[18] = \<const0> ;
  assign addr[17] = \<const0> ;
  assign addr[16] = \<const0> ;
  assign addr[15] = \<const0> ;
  assign addr[14] = \<const0> ;
  assign addr[13] = \<const0> ;
  assign addr[12] = \<const0> ;
  assign addr[11] = \<const0> ;
  assign addr[10] = \<const0> ;
  assign addr[9] = \<const0> ;
  assign addr[8] = \<const0> ;
  assign addr[7] = \<const0> ;
  assign addr[6] = \<const0> ;
  assign addr[5] = \<const0> ;
  assign addr[4] = \<const0> ;
  assign addr[3] = \<const0> ;
  assign addr[2] = \^addr [2];
  assign addr[1] = \<const0> ;
  assign addr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher U0
       (.addr(\^addr ),
        .bat_lvl(bat_lvl),
        .clk(clk),
        .data_from_addr(data_from_addr[1:0]),
        .pwm_inc(pwm_inc),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fsm_addr_switcher" *) 
module xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher
   (addr,
    pwm_inc,
    bat_lvl,
    clk,
    rst,
    data_from_addr);
  output [0:0]addr;
  output [1:0]pwm_inc;
  output bat_lvl;
  input clk;
  input rst;
  input [1:0]data_from_addr;

  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire [0:0]addr;
  wire \addr_reg[2]_i_1_n_0 ;
  wire bat_lvl;
  wire clk;
  wire [1:0]data_from_addr;
  wire [1:0]pwm_inc;
  wire rst;
  wire [2:2]sig_addr;

  (* FSM_ENCODED_STATES = "s0:0001,s1:0010,s2:0100,s3:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .PRE(rst),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s0:0001,s1:0010,s2:0100,s3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s0:0001,s1:0010,s2:0100,s3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s0:0001,s1:0010,s2:0100,s3:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.CLR(1'b0),
        .D(sig_addr),
        .G(\addr_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(addr));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_reg[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\addr_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    bat_lvl_reg
       (.CLR(1'b0),
        .D(data_from_addr[0]),
        .G(\FSM_onehot_current_state_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(bat_lvl));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_inc_reg[0] 
       (.CLR(1'b0),
        .D(data_from_addr[0]),
        .G(\FSM_onehot_current_state_reg_n_0_[0] ),
        .GE(1'b1),
        .Q(pwm_inc[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_inc_reg[1] 
       (.CLR(1'b0),
        .D(data_from_addr[1]),
        .G(\FSM_onehot_current_state_reg_n_0_[0] ),
        .GE(1'b1),
        .Q(pwm_inc[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \sig_addr_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .G(\addr_reg[2]_i_1_n_0 ),
        .GE(1'b1),
        .Q(sig_addr));
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
