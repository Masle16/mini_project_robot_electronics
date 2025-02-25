// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Dec 11 14:55:30 2019
// Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/mikke/OneDrive/Skrivebord/xadc_with_bram/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_seg_7_driver_0_1/xadc_pl2ps_seg_7_driver_0_1_stub.v
// Design      : xadc_pl2ps_seg_7_driver_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "seg_7_driver,Vivado 2019.1" *)
module xadc_pl2ps_seg_7_driver_0_1(BCD, en, LED_out)
/* synthesis syn_black_box black_box_pad_pin="BCD[3:0],en,LED_out[6:0]" */;
  input [3:0]BCD;
  input en;
  output [6:0]LED_out;
endmodule
