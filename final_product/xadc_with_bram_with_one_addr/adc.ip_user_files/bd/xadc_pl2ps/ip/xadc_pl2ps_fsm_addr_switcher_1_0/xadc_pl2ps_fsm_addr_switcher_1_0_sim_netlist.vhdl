-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec 13 09:48:23 2019
-- Host        : DESKTOP-K3AUEPM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/mikke/OneDrive/Skrivebord/Final_project/xadc_with_bram_with_fsm/adc.srcs/sources_1/bd/xadc_pl2ps/ip/xadc_pl2ps_fsm_addr_switcher_1_0/xadc_pl2ps_fsm_addr_switcher_1_0_sim_netlist.vhdl
-- Design      : xadc_pl2ps_fsm_addr_switcher_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher is
  port (
    addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_inc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bat_lvl : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_from_addr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher : entity is "fsm_addr_switcher";
end xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher;

architecture STRUCTURE of xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher is
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_addr : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s0:0001,s1:0010,s2:0100,s3:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s0:0001,s1:0010,s2:0100,s3:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s0:0001,s1:0010,s2:0100,s3:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s0:0001,s1:0010,s2:0100,s3:1000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \addr_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of bat_lvl_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_inc_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_inc_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \sig_addr_reg[2]\ : label is "LD";
begin
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      PRE => rst,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\
    );
\addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sig_addr(2),
      G => \addr_reg[2]_i_1_n_0\,
      GE => '1',
      Q => addr(0)
    );
\addr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \addr_reg[2]_i_1_n_0\
    );
bat_lvl_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_from_addr(0),
      G => \FSM_onehot_current_state_reg_n_0_[2]\,
      GE => '1',
      Q => bat_lvl
    );
\pwm_inc_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_from_addr(0),
      G => \FSM_onehot_current_state_reg_n_0_[0]\,
      GE => '1',
      Q => pwm_inc(0)
    );
\pwm_inc_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_from_addr(1),
      G => \FSM_onehot_current_state_reg_n_0_[0]\,
      GE => '1',
      Q => pwm_inc(1)
    );
\sig_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      G => \addr_reg[2]_i_1_n_0\,
      GE => '1',
      Q => sig_addr(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xadc_pl2ps_fsm_addr_switcher_1_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_from_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_inc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bat_lvl : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xadc_pl2ps_fsm_addr_switcher_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xadc_pl2ps_fsm_addr_switcher_1_0 : entity is "xadc_pl2ps_fsm_addr_switcher_1_0,fsm_addr_switcher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xadc_pl2ps_fsm_addr_switcher_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of xadc_pl2ps_fsm_addr_switcher_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of xadc_pl2ps_fsm_addr_switcher_1_0 : entity is "fsm_addr_switcher,Vivado 2019.1";
end xadc_pl2ps_fsm_addr_switcher_1_0;

architecture STRUCTURE of xadc_pl2ps_fsm_addr_switcher_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN xadc_pl2ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr(31) <= \<const0>\;
  addr(30) <= \<const0>\;
  addr(29) <= \<const0>\;
  addr(28) <= \<const0>\;
  addr(27) <= \<const0>\;
  addr(26) <= \<const0>\;
  addr(25) <= \<const0>\;
  addr(24) <= \<const0>\;
  addr(23) <= \<const0>\;
  addr(22) <= \<const0>\;
  addr(21) <= \<const0>\;
  addr(20) <= \<const0>\;
  addr(19) <= \<const0>\;
  addr(18) <= \<const0>\;
  addr(17) <= \<const0>\;
  addr(16) <= \<const0>\;
  addr(15) <= \<const0>\;
  addr(14) <= \<const0>\;
  addr(13) <= \<const0>\;
  addr(12) <= \<const0>\;
  addr(11) <= \<const0>\;
  addr(10) <= \<const0>\;
  addr(9) <= \<const0>\;
  addr(8) <= \<const0>\;
  addr(7) <= \<const0>\;
  addr(6) <= \<const0>\;
  addr(5) <= \<const0>\;
  addr(4) <= \<const0>\;
  addr(3) <= \<const0>\;
  addr(2) <= \^addr\(2);
  addr(1) <= \<const0>\;
  addr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.xadc_pl2ps_fsm_addr_switcher_1_0_fsm_addr_switcher
     port map (
      addr(0) => \^addr\(2),
      bat_lvl => bat_lvl,
      clk => clk,
      data_from_addr(1 downto 0) => data_from_addr(1 downto 0),
      pwm_inc(1 downto 0) => pwm_inc(1 downto 0),
      rst => rst
    );
end STRUCTURE;
