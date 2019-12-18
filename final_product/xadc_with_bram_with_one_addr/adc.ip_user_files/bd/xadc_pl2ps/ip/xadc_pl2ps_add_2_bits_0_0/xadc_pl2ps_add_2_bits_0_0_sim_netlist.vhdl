-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Dec 12 16:37:25 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/mikke/OneDrive/Skrivebord/Final
--               project/xadc_with_bram_with_fsm/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_add_2_bits_0_0/xadc_pl2ps_add_2_bits_0_0_sim_netlist.vhdl}
-- Design      : xadc_pl2ps_add_2_bits_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_add_2_bits_0_0 is
  port (
    I : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xadc_pl2ps_add_2_bits_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xadc_pl2ps_add_2_bits_0_0 : entity is "xadc_pl2ps_add_2_bits_0_0,add_2_bits,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xadc_pl2ps_add_2_bits_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of xadc_pl2ps_add_2_bits_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of xadc_pl2ps_add_2_bits_0_0 : entity is "add_2_bits,Vivado 2019.1";
end xadc_pl2ps_add_2_bits_0_0;

architecture STRUCTURE of xadc_pl2ps_add_2_bits_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(3) <= \<const0>\;
  Q(2) <= \<const0>\;
  Q(1 downto 0) <= \^i\(1 downto 0);
  \^i\(1 downto 0) <= I(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
