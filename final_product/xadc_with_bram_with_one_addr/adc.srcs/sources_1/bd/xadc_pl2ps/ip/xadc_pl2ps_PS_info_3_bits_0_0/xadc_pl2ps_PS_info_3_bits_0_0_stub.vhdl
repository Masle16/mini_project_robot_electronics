-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 13 15:21:51 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mikke/OneDrive/Skrivebord/Final_project/xadc_with_bram_with_one_addr/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_PS_info_3_bits_0_0/xadc_pl2ps_PS_info_3_bits_0_0_stub.vhdl
-- Design      : xadc_pl2ps_PS_info_3_bits_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xadc_pl2ps_PS_info_3_bits_0_0 is
  Port ( 
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_inc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    battery_lvl : out STD_LOGIC
  );

end xadc_pl2ps_PS_info_3_bits_0_0;

architecture stub of xadc_pl2ps_PS_info_3_bits_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data[31:0],pwm_inc[1:0],battery_lvl";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PS_info_3_bits,Vivado 2019.1";
begin
end;
