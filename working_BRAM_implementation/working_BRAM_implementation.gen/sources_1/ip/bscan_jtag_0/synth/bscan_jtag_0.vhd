-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:ip:bscan_jtag:1.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY bscan_jtag;
USE bscan_jtag.bscan_jtag_v1_0_0_bscan_jtag;

ENTITY bscan_jtag_0 IS
  PORT (
    S_BSCAN_bscanid_en : IN STD_LOGIC;
    S_BSCAN_capture : IN STD_LOGIC;
    S_BSCAN_drck : IN STD_LOGIC;
    S_BSCAN_reset : IN STD_LOGIC;
    S_BSCAN_runtest : IN STD_LOGIC;
    S_BSCAN_sel : IN STD_LOGIC;
    S_BSCAN_shift : IN STD_LOGIC;
    S_BSCAN_tck : IN STD_LOGIC;
    S_BSCAN_tdi : IN STD_LOGIC;
    S_BSCAN_tms : IN STD_LOGIC;
    S_BSCAN_update : IN STD_LOGIC;
    S_BSCAN_tdo : OUT STD_LOGIC;
    JTAG_TDO : IN STD_LOGIC;
    JTAG_TDI : OUT STD_LOGIC;
    JTAG_TMS : OUT STD_LOGIC;
    JTAG_TCK : OUT STD_LOGIC
  );
END bscan_jtag_0;

ARCHITECTURE bscan_jtag_0_arch OF bscan_jtag_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bscan_jtag_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bscan_jtag_v1_0_0_bscan_jtag IS
    GENERIC (
      enable_tck_bufg : INTEGER
    );
    PORT (
      S_BSCAN_bscanid_en : IN STD_LOGIC;
      S_BSCAN_capture : IN STD_LOGIC;
      S_BSCAN_drck : IN STD_LOGIC;
      S_BSCAN_reset : IN STD_LOGIC;
      S_BSCAN_runtest : IN STD_LOGIC;
      S_BSCAN_sel : IN STD_LOGIC;
      S_BSCAN_shift : IN STD_LOGIC;
      S_BSCAN_tck : IN STD_LOGIC;
      S_BSCAN_tdi : IN STD_LOGIC;
      S_BSCAN_tms : IN STD_LOGIC;
      S_BSCAN_update : IN STD_LOGIC;
      S_BSCAN_tdo : OUT STD_LOGIC;
      JTAG_TDO : IN STD_LOGIC;
      JTAG_TDI : OUT STD_LOGIC;
      JTAG_TMS : OUT STD_LOGIC;
      JTAG_TCK : OUT STD_LOGIC
    );
  END COMPONENT bscan_jtag_v1_0_0_bscan_jtag;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bscan_jtag_0_arch: ARCHITECTURE IS "bscan_jtag_v1_0_0_bscan_jtag,Vivado 2022.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bscan_jtag_0_arch : ARCHITECTURE IS "bscan_jtag_0,bscan_jtag_v1_0_0_bscan_jtag,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF bscan_jtag_0_arch: ARCHITECTURE IS "bscan_jtag_0,bscan_jtag_v1_0_0_bscan_jtag,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=bscan_jtag,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,enable_tck_bufg=1}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF JTAG_TCK: SIGNAL IS "xilinx.com:interface:jtag:2.0 M_JTAG TCK";
  ATTRIBUTE X_INTERFACE_INFO OF JTAG_TDI: SIGNAL IS "xilinx.com:interface:jtag:2.0 M_JTAG TDI";
  ATTRIBUTE X_INTERFACE_INFO OF JTAG_TDO: SIGNAL IS "xilinx.com:interface:jtag:2.0 M_JTAG TDO";
  ATTRIBUTE X_INTERFACE_INFO OF JTAG_TMS: SIGNAL IS "xilinx.com:interface:jtag:2.0 M_JTAG TMS";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_bscanid_en: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_capture: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_drck: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_reset: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_runtest: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_sel: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_shift: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tck: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tdi: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tdo: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tms: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_update: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
BEGIN
  U0 : bscan_jtag_v1_0_0_bscan_jtag
    GENERIC MAP (
      enable_tck_bufg => 1
    )
    PORT MAP (
      S_BSCAN_bscanid_en => S_BSCAN_bscanid_en,
      S_BSCAN_capture => S_BSCAN_capture,
      S_BSCAN_drck => S_BSCAN_drck,
      S_BSCAN_reset => S_BSCAN_reset,
      S_BSCAN_runtest => S_BSCAN_runtest,
      S_BSCAN_sel => S_BSCAN_sel,
      S_BSCAN_shift => S_BSCAN_shift,
      S_BSCAN_tck => S_BSCAN_tck,
      S_BSCAN_tdi => S_BSCAN_tdi,
      S_BSCAN_tms => S_BSCAN_tms,
      S_BSCAN_update => S_BSCAN_update,
      S_BSCAN_tdo => S_BSCAN_tdo,
      JTAG_TDO => JTAG_TDO,
      JTAG_TDI => JTAG_TDI,
      JTAG_TMS => JTAG_TMS,
      JTAG_TCK => JTAG_TCK
    );
END bscan_jtag_0_arch;
