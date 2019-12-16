-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Dec 12 10:17:39 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/mikke/OneDrive/Skrivebord/xadc_with_bram-workpls/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_msb_31_0_to_3_0_0_0/xadc_pl2ps_msb_31_0_to_3_0_0_0_stub.vhdl
-- Design      : xadc_pl2ps_msb_31_0_to_3_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xadc_pl2ps_msb_31_0_to_3_0_0_0 is
  Port ( 
    I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end xadc_pl2ps_msb_31_0_to_3_0_0_0;

architecture stub of xadc_pl2ps_msb_31_0_to_3_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I[31:0],Q[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "msb_31_0_to_3_0,Vivado 2019.1";
begin
end;
