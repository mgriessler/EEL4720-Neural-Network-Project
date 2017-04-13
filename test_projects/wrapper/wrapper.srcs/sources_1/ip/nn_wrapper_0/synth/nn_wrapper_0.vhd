-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: user.org:user:nn_wrapper:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.nn_wrapper;

ENTITY nn_wrapper_0 IS
  PORT (
    input0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    input1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    input2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    input3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    final_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    final_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    final_2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC
  );
END nn_wrapper_0;

ARCHITECTURE nn_wrapper_0_arch OF nn_wrapper_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF nn_wrapper_0_arch: ARCHITECTURE IS "yes";
  COMPONENT nn_wrapper IS
    PORT (
      input0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      input1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      input2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      input3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      final_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      final_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      final_2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      clk : IN STD_LOGIC
    );
  END COMPONENT nn_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF nn_wrapper_0_arch: ARCHITECTURE IS "nn_wrapper,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF nn_wrapper_0_arch : ARCHITECTURE IS "nn_wrapper_0,nn_wrapper,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : nn_wrapper
    PORT MAP (
      input0 => input0,
      input1 => input1,
      input2 => input2,
      input3 => input3,
      final_0 => final_0,
      final_1 => final_1,
      final_2 => final_2,
      clk => clk
    );
END nn_wrapper_0_arch;
