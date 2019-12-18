-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Dec 15 12:33:19 2019
-- Host        : DESKTOP-7FQ3E2M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/An-ck/Desktop/xadc_with_bram_with_one_addr/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_counter_N_bit_0_0/xadc_pl2ps_counter_N_bit_0_0_sim_netlist.vhdl
-- Design      : xadc_pl2ps_counter_N_bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_counter_N_bit_0_0_counter_N_bit is
  port (
    count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xadc_pl2ps_counter_N_bit_0_0_counter_N_bit : entity is "counter_N_bit";
end xadc_pl2ps_counter_N_bit_0_0_counter_N_bit;

architecture STRUCTURE of xadc_pl2ps_counter_N_bit_0_0_counter_N_bit is
  signal \^count\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \count_sig[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  count(12 downto 0) <= \^count\(12 downto 0);
\count_sig[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => \count_sig[3]_i_2_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[3]_i_1_n_7\,
      Q => \^count\(0)
    );
\count_sig_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[11]_i_1_n_5\,
      Q => \^count\(10)
    );
\count_sig_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[11]_i_1_n_4\,
      Q => \^count\(11)
    );
\count_sig_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[7]_i_1_n_0\,
      CO(3) => \count_sig_reg[11]_i_1_n_0\,
      CO(2) => \count_sig_reg[11]_i_1_n_1\,
      CO(1) => \count_sig_reg[11]_i_1_n_2\,
      CO(0) => \count_sig_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[11]_i_1_n_4\,
      O(2) => \count_sig_reg[11]_i_1_n_5\,
      O(1) => \count_sig_reg[11]_i_1_n_6\,
      O(0) => \count_sig_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^count\(11 downto 8)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[12]_i_1_n_7\,
      Q => \^count\(12)
    );
\count_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_sig_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \count_sig_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \^count\(12)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[3]_i_1_n_6\,
      Q => \^count\(1)
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[3]_i_1_n_5\,
      Q => \^count\(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[3]_i_1_n_4\,
      Q => \^count\(3)
    );
\count_sig_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[3]_i_1_n_0\,
      CO(2) => \count_sig_reg[3]_i_1_n_1\,
      CO(1) => \count_sig_reg[3]_i_1_n_2\,
      CO(0) => \count_sig_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_sig_reg[3]_i_1_n_4\,
      O(2) => \count_sig_reg[3]_i_1_n_5\,
      O(1) => \count_sig_reg[3]_i_1_n_6\,
      O(0) => \count_sig_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^count\(3 downto 1),
      S(0) => \count_sig[3]_i_2_n_0\
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[7]_i_1_n_7\,
      Q => \^count\(4)
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[7]_i_1_n_6\,
      Q => \^count\(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[7]_i_1_n_5\,
      Q => \^count\(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[7]_i_1_n_4\,
      Q => \^count\(7)
    );
\count_sig_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[3]_i_1_n_0\,
      CO(3) => \count_sig_reg[7]_i_1_n_0\,
      CO(2) => \count_sig_reg[7]_i_1_n_1\,
      CO(1) => \count_sig_reg[7]_i_1_n_2\,
      CO(0) => \count_sig_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[7]_i_1_n_4\,
      O(2) => \count_sig_reg[7]_i_1_n_5\,
      O(1) => \count_sig_reg[7]_i_1_n_6\,
      O(0) => \count_sig_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^count\(7 downto 4)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[11]_i_1_n_7\,
      Q => \^count\(8)
    );
\count_sig_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \count_sig_reg[11]_i_1_n_6\,
      Q => \^count\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_counter_N_bit_0_0 is
  port (
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xadc_pl2ps_counter_N_bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xadc_pl2ps_counter_N_bit_0_0 : entity is "xadc_pl2ps_counter_N_bit_0_0,counter_N_bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xadc_pl2ps_counter_N_bit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of xadc_pl2ps_counter_N_bit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of xadc_pl2ps_counter_N_bit_0_0 : entity is "counter_N_bit,Vivado 2019.1";
end xadc_pl2ps_counter_N_bit_0_0;

architecture STRUCTURE of xadc_pl2ps_counter_N_bit_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN xadc_pl2ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.xadc_pl2ps_counter_N_bit_0_0_counter_N_bit
     port map (
      clk => clk,
      count(12 downto 0) => count(12 downto 0),
      en => en,
      rst => rst
    );
end STRUCTURE;
