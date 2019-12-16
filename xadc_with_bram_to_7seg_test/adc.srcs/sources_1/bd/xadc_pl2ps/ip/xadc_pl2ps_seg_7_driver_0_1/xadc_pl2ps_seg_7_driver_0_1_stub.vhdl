-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Dec 11 14:55:30 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mikke/OneDrive/Skrivebord/xadc_with_bram/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_seg_7_driver_0_1/xadc_pl2ps_seg_7_driver_0_1_stub.vhdl
-- Design      : xadc_pl2ps_seg_7_driver_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xadc_pl2ps_seg_7_driver_0_1 is
  Port ( 
    BCD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : in STD_LOGIC;
    LED_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end xadc_pl2ps_seg_7_driver_0_1;

architecture stub of xadc_pl2ps_seg_7_driver_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BCD[3:0],en,LED_out[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "seg_7_driver,Vivado 2019.1";
begin
end;
