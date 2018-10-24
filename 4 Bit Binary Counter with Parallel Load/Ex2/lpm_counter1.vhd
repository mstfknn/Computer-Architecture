-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COUNTER 

-- ============================================================
-- File Name: lpm_counter1.vhd
-- Megafunction Name(s):
-- 			LPM_COUNTER
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_counter1 IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		aload		: IN STD_LOGIC ;
		aset		: IN STD_LOGIC ;
		cin		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		sclr		: IN STD_LOGIC ;
		sload		: IN STD_LOGIC ;
		sset		: IN STD_LOGIC ;
		updown		: IN STD_LOGIC ;
		cout		: OUT STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END lpm_counter1;


ARCHITECTURE SYN OF lpm_counter1 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;



	COMPONENT lpm_counter
	GENERIC (
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			clk_en	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			sclr	: IN STD_LOGIC ;
			aload	: IN STD_LOGIC ;
			aset	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
			updown	: IN STD_LOGIC ;
			aclr	: IN STD_LOGIC ;
			cin	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			cnt_en	: IN STD_LOGIC ;
			cout	: OUT STD_LOGIC ;
			sload	: IN STD_LOGIC ;
			sset	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(3 DOWNTO 0);
	cout    <= sub_wire1;

	LPM_COUNTER_component : LPM_COUNTER
	GENERIC MAP (
		lpm_direction => "UNUSED",
		lpm_port_updown => "PORT_USED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 4
	)
	PORT MAP (
		clk_en => clk_en,
		clock => clock,
		sclr => sclr,
		aload => aload,
		aset => aset,
		updown => updown,
		aclr => aclr,
		cin => cin,
		data => data,
		cnt_en => cnt_en,
		sload => sload,
		sset => sset,
		q => sub_wire0,
		cout => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "1"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "1"
-- Retrieval info: PRIVATE: ASET NUMERIC "1"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "1"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "1"
-- Retrieval info: PRIVATE: Direction NUMERIC "2"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "1"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "1"
-- Retrieval info: PRIVATE: SSET NUMERIC "1"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "4"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_USED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
-- Retrieval info: USED_PORT: aload 0 0 0 0 INPUT NODEFVAL "aload"
-- Retrieval info: USED_PORT: aset 0 0 0 0 INPUT NODEFVAL "aset"
-- Retrieval info: USED_PORT: cin 0 0 0 0 INPUT NODEFVAL "cin"
-- Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL "clk_en"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL "cnt_en"
-- Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL "cout"
-- Retrieval info: USED_PORT: data 0 0 4 0 INPUT NODEFVAL "data[3..0]"
-- Retrieval info: USED_PORT: q 0 0 4 0 OUTPUT NODEFVAL "q[3..0]"
-- Retrieval info: USED_PORT: sclr 0 0 0 0 INPUT NODEFVAL "sclr"
-- Retrieval info: USED_PORT: sload 0 0 0 0 INPUT NODEFVAL "sload"
-- Retrieval info: USED_PORT: sset 0 0 0 0 INPUT NODEFVAL "sset"
-- Retrieval info: USED_PORT: updown 0 0 0 0 INPUT NODEFVAL "updown"
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @aload 0 0 0 0 aload 0 0 0 0
-- Retrieval info: CONNECT: @aset 0 0 0 0 aset 0 0 0 0
-- Retrieval info: CONNECT: @cin 0 0 0 0 cin 0 0 0 0
-- Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 4 0 data 0 0 4 0
-- Retrieval info: CONNECT: @sclr 0 0 0 0 sclr 0 0 0 0
-- Retrieval info: CONNECT: @sload 0 0 0 0 sload 0 0 0 0
-- Retrieval info: CONNECT: @sset 0 0 0 0 sset 0 0 0 0
-- Retrieval info: CONNECT: @updown 0 0 0 0 updown 0 0 0 0
-- Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 4 0 @q 0 0 4 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
