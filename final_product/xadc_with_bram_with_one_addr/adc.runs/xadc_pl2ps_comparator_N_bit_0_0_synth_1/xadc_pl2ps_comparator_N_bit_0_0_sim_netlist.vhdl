-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Dec 15 12:33:11 2019
-- Host        : DESKTOP-7FQ3E2M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xadc_pl2ps_comparator_N_bit_0_0_sim_netlist.vhdl
-- Design      : xadc_pl2ps_comparator_N_bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator_N_bit is
  port (
    OutBit : out STD_LOGIC;
    count : in STD_LOGIC_VECTOR ( 12 downto 0 );
    threshold : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator_N_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator_N_bit is
  signal OutBit_INST_0_i_10_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_11_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_12_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_13_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_14_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_15_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_1_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_1_n_1 : STD_LOGIC;
  signal OutBit_INST_0_i_1_n_2 : STD_LOGIC;
  signal OutBit_INST_0_i_1_n_3 : STD_LOGIC;
  signal OutBit_INST_0_i_2_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_3_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_4_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_5_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_6_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_7_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_8_n_0 : STD_LOGIC;
  signal OutBit_INST_0_i_9_n_0 : STD_LOGIC;
  signal OutBit_INST_0_n_2 : STD_LOGIC;
  signal OutBit_INST_0_n_3 : STD_LOGIC;
  signal NLW_OutBit_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_OutBit_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_OutBit_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
OutBit_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => OutBit_INST_0_i_1_n_0,
      CO(3) => NLW_OutBit_INST_0_CO_UNCONNECTED(3),
      CO(2) => OutBit,
      CO(1) => OutBit_INST_0_n_2,
      CO(0) => OutBit_INST_0_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => OutBit_INST_0_i_2_n_0,
      DI(1) => OutBit_INST_0_i_3_n_0,
      DI(0) => OutBit_INST_0_i_4_n_0,
      O(3 downto 0) => NLW_OutBit_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => OutBit_INST_0_i_5_n_0,
      S(1) => OutBit_INST_0_i_6_n_0,
      S(0) => OutBit_INST_0_i_7_n_0
    );
OutBit_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => OutBit_INST_0_i_1_n_0,
      CO(2) => OutBit_INST_0_i_1_n_1,
      CO(1) => OutBit_INST_0_i_1_n_2,
      CO(0) => OutBit_INST_0_i_1_n_3,
      CYINIT => '1',
      DI(3) => OutBit_INST_0_i_8_n_0,
      DI(2) => OutBit_INST_0_i_9_n_0,
      DI(1) => OutBit_INST_0_i_10_n_0,
      DI(0) => OutBit_INST_0_i_11_n_0,
      O(3 downto 0) => NLW_OutBit_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => OutBit_INST_0_i_12_n_0,
      S(2) => OutBit_INST_0_i_13_n_0,
      S(1) => OutBit_INST_0_i_14_n_0,
      S(0) => OutBit_INST_0_i_15_n_0
    );
OutBit_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(2),
      I1 => threshold(2),
      I2 => threshold(3),
      I3 => count(3),
      O => OutBit_INST_0_i_10_n_0
    );
OutBit_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(0),
      I1 => threshold(0),
      I2 => threshold(1),
      I3 => count(1),
      O => OutBit_INST_0_i_11_n_0
    );
OutBit_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(6),
      I1 => threshold(6),
      I2 => count(7),
      I3 => threshold(7),
      O => OutBit_INST_0_i_12_n_0
    );
OutBit_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(4),
      I1 => threshold(4),
      I2 => count(5),
      I3 => threshold(5),
      O => OutBit_INST_0_i_13_n_0
    );
OutBit_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(2),
      I1 => threshold(2),
      I2 => count(3),
      I3 => threshold(3),
      O => OutBit_INST_0_i_14_n_0
    );
OutBit_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(0),
      I1 => threshold(0),
      I2 => count(1),
      I3 => threshold(1),
      O => OutBit_INST_0_i_15_n_0
    );
OutBit_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count(12),
      I1 => threshold(12),
      O => OutBit_INST_0_i_2_n_0
    );
OutBit_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(10),
      I1 => threshold(10),
      I2 => threshold(11),
      I3 => count(11),
      O => OutBit_INST_0_i_3_n_0
    );
OutBit_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(8),
      I1 => threshold(8),
      I2 => threshold(9),
      I3 => count(9),
      O => OutBit_INST_0_i_4_n_0
    );
OutBit_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => threshold(12),
      I1 => count(12),
      O => OutBit_INST_0_i_5_n_0
    );
OutBit_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(10),
      I1 => threshold(10),
      I2 => count(11),
      I3 => threshold(11),
      O => OutBit_INST_0_i_6_n_0
    );
OutBit_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count(8),
      I1 => threshold(8),
      I2 => count(9),
      I3 => threshold(9),
      O => OutBit_INST_0_i_7_n_0
    );
OutBit_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(6),
      I1 => threshold(6),
      I2 => threshold(7),
      I3 => count(7),
      O => OutBit_INST_0_i_8_n_0
    );
OutBit_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => count(4),
      I1 => threshold(4),
      I2 => threshold(5),
      I3 => count(5),
      O => OutBit_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    count : in STD_LOGIC_VECTOR ( 12 downto 0 );
    threshold : in STD_LOGIC_VECTOR ( 12 downto 0 );
    OutBit : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "xadc_pl2ps_comparator_N_bit_0_0,comparator_N_bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "comparator_N_bit,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comparator_N_bit
     port map (
      OutBit => OutBit,
      count(12 downto 0) => count(12 downto 0),
      threshold(12 downto 0) => threshold(12 downto 0)
    );
end STRUCTURE;
