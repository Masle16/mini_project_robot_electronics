-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Dec 15 12:33:11 2019
-- Host        : DESKTOP-7FQ3E2M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/An-ck/Desktop/xadc_with_bram_with_one_addr/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_OR_bit_0_0/xadc_pl2ps_OR_bit_0_0_sim_netlist.vhdl
-- Design      : xadc_pl2ps_OR_bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_OR_bit_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    OutBit : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xadc_pl2ps_OR_bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xadc_pl2ps_OR_bit_0_0 : entity is "xadc_pl2ps_OR_bit_0_0,OR_bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xadc_pl2ps_OR_bit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of xadc_pl2ps_OR_bit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of xadc_pl2ps_OR_bit_0_0 : entity is "OR_bit,Vivado 2019.1";
end xadc_pl2ps_OR_bit_0_0;

architecture STRUCTURE of xadc_pl2ps_OR_bit_0_0 is
begin
OutBit_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A,
      I1 => B,
      O => OutBit
    );
end STRUCTURE;
