-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Dec 11 14:55:30 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xadc_pl2ps_seg_7_driver_0_1_sim_netlist.vhdl
-- Design      : xadc_pl2ps_seg_7_driver_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    BCD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : in STD_LOGIC;
    LED_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xadc_pl2ps_seg_7_driver_0_1,seg_7_driver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "seg_7_driver,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
\LED_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA288AA8"
    )
        port map (
      I0 => en,
      I1 => BCD(1),
      I2 => BCD(2),
      I3 => BCD(3),
      I4 => BCD(0),
      O => LED_out(0)
    );
\LED_out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82A0AA22"
    )
        port map (
      I0 => en,
      I1 => BCD(1),
      I2 => BCD(3),
      I3 => BCD(2),
      I4 => BCD(0),
      O => LED_out(1)
    );
\LED_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8880AA8A"
    )
        port map (
      I0 => en,
      I1 => BCD(3),
      I2 => BCD(2),
      I3 => BCD(1),
      I4 => BCD(0),
      O => LED_out(2)
    );
\LED_out[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A28AAA2"
    )
        port map (
      I0 => en,
      I1 => BCD(2),
      I2 => BCD(1),
      I3 => BCD(3),
      I4 => BCD(0),
      O => LED_out(3)
    );
\LED_out[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AA88AAA"
    )
        port map (
      I0 => en,
      I1 => BCD(0),
      I2 => BCD(2),
      I3 => BCD(3),
      I4 => BCD(1),
      O => LED_out(4)
    );
\LED_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"028A8A2A"
    )
        port map (
      I0 => en,
      I1 => BCD(0),
      I2 => BCD(2),
      I3 => BCD(3),
      I4 => BCD(1),
      O => LED_out(5)
    );
\LED_out[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA2A82"
    )
        port map (
      I0 => en,
      I1 => BCD(0),
      I2 => BCD(2),
      I3 => BCD(3),
      I4 => BCD(1),
      O => LED_out(6)
    );
end STRUCTURE;
