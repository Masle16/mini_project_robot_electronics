-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:seg_7_driver:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY xadc_pl2ps_seg_7_driver_0_1 IS
  PORT (
    BCD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    en : IN STD_LOGIC;
    LED_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END xadc_pl2ps_seg_7_driver_0_1;

ARCHITECTURE xadc_pl2ps_seg_7_driver_0_1_arch OF xadc_pl2ps_seg_7_driver_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF xadc_pl2ps_seg_7_driver_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT seg_7_driver IS
    PORT (
      BCD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      en : IN STD_LOGIC;
      LED_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
  END COMPONENT seg_7_driver;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF xadc_pl2ps_seg_7_driver_0_1_arch: ARCHITECTURE IS "seg_7_driver,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF xadc_pl2ps_seg_7_driver_0_1_arch : ARCHITECTURE IS "xadc_pl2ps_seg_7_driver_0_1,seg_7_driver,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF xadc_pl2ps_seg_7_driver_0_1_arch: ARCHITECTURE IS "xadc_pl2ps_seg_7_driver_0_1,seg_7_driver,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=seg_7_driver,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF xadc_pl2ps_seg_7_driver_0_1_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : seg_7_driver
    PORT MAP (
      BCD => BCD,
      en => en,
      LED_out => LED_out
    );
END xadc_pl2ps_seg_7_driver_0_1_arch;
