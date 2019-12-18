// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 13 15:21:51 2019
// Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xadc_pl2ps_PS_info_3_bits_0_0_stub.v
// Design      : xadc_pl2ps_PS_info_3_bits_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PS_info_3_bits,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data, pwm_inc, battery_lvl)
/* synthesis syn_black_box black_box_pad_pin="data[31:0],pwm_inc[1:0],battery_lvl" */;
  input [31:0]data;
  output [1:0]pwm_inc;
  output battery_lvl;
endmodule
