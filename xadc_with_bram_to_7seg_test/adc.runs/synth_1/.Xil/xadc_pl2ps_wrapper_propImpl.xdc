set_property SRC_FILE_INFO {cfile:C:/Users/mikke/OneDrive/Skrivebord/xadc_with_bram-workpls/adc.srcs/constrs_1/imports/pyng_z2_related_matrials/pynq-z2_v1.0.xdc rfile:../../../adc.srcs/constrs_1/imports/pyng_z2_related_matrials/pynq-z2_v1.0.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sysclk }];
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED_out[0] }]; #IO_L21P_T3_DQS_34 Sch=ar[8]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { LED_out[1] }]; #IO_L21N_T3_DQS_34 Sch=ar[9]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED_out[6] }]; #IO_L9P_T1_DQS_34 Sch=ar[10]
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { LED_out[5] }]; #IO_L19N_T3_VREF_34 Sch=ar[11]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { LED_out[4] }]; #IO_L23N_T3_34 Sch=ar[12]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { LED_out[3] }]; #IO_L23P_T3_34 Sch=ar[13]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS33 } [get_ports { LED_out[2] }]; #IO_L20N_T3_13 Sch=a
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS33 } [get_ports { Vaux1 }]; #IO_L18N_T2_13 Sch=a[0]
set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS33 } [get_ports { Vaux9 }]; #IO_L20P_T3_13 Sch=a[1]
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B20 [get_ports Vaux0_v_n]
set_property src_info {type:XDC file:1 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN L10 [get_ports Vp_Vn_v_n]
set_property src_info {type:XDC file:1 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D18 [get_ports Vaux1_v_n]
