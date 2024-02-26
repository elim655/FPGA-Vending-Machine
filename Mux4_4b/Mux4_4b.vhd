-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Standard Edition"
-- CREATED		"Thu Sep  7 11:49:17 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Mux4_4b IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		W0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		W1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		W2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		W3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OUT :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Mux4_4b;

ARCHITECTURE bdf_type OF Mux4_4b IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT busmux_1
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_1: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_1: COMPONENT IS true;

COMPONENT busmux_2
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_2: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_2: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : busmux_0
PORT MAP(sel => S0,
		 dataa => W0,
		 datab => W1,
		 result => SYNTHESIZED_WIRE_0);


b2v_inst1 : busmux_1
PORT MAP(sel => S0,
		 dataa => W2,
		 datab => W3,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst2 : busmux_2
PORT MAP(sel => S1,
		 dataa => SYNTHESIZED_WIRE_0,
		 datab => SYNTHESIZED_WIRE_1,
		 result => OUT);


END bdf_type;