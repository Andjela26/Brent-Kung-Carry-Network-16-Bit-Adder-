LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY struktura IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		cin : IN STD_LOGIC;
		cout : OUT STD_LOGIC);

END struktura;

ARCHITECTURE struktura16 OF struktura IS

	COMPONENT prefiks IS
		PORT (
			g1, p1, g2, p2 : IN STD_LOGIC;
			g, p : OUT STD_LOGIC);
	END COMPONENT prefiks;

	SIGNAL p_l0, g_l0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL p_l1, g_l1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL p_l2, g_l2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL p_l3, g_l3 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL p_l4, g_l4 : STD_LOGIC;

	SIGNAL p_l8, g_l8 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL p_l7, g_l7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL p_l6, g_l6 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL p_l5, g_l5 : STD_LOGIC;

	SIGNAL c : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN

	elements0 : FOR i IN 0 TO 15 GENERATE
		LAB1 : g_l0(i) <= a(i) AND b(i);
		LAB2 : p_l0(i) <= a(i) XOR b(i);
	END GENERATE;

	elements1 : FOR i IN 0 TO 7 GENERATE
		LAB3 : prefiks PORT MAP(
			g1 => g_l0(2 * i),
			p1 => p_l0(2 * i),
			g2 => g_l0(2 * i + 1),
			p2 => p_l0(2 * i + 1),
			g => g_l1(i),
			p => p_l1(i));
	END GENERATE;

	elements2 : FOR i IN 0 TO 3 GENERATE
		LAB4 : prefiks PORT MAP(
			g1 => g_l1(2 * i),
			p1 => p_l1(2 * i),
			g2 => g_l1(2 * i + 1),
			p2 => p_l1(2 * i + 1),
			g => g_l2(i),
			p => p_l2(i));
	END GENERATE;

	elements3 : FOR i IN 0 TO 1 GENERATE
		LAB5 : prefiks PORT MAP(
			g1 => g_l2(2 * i),
			p1 => p_l2(2 * i),
			g2 => g_l2(2 * i + 1),
			p2 => p_l2(2 * i + 1),
			g => g_l3(i),
			p => p_l3(i));
	END GENERATE;

	elements4 : prefiks PORT MAP(
		g1 => g_l3(0),
		p1 => p_l3(0),
		g2 => g_l3(1),
		p2 => p_l3(1),
		g => g_l4,
		p => p_l4);
	elements5 : prefiks PORT MAP(
		g1 => g_l3(0),
		p1 => p_l3(0),
		g2 => g_l2(2),
		p2 => p_l2(2),
		g => g_l5,
		p => p_l5);
	elements6_0 : prefiks PORT MAP(
		g1 => g_l2(0),
		p1 => p_l2(0),
		g2 => g_l1(2),
		p2 => p_l1(2),
		g => g_l6(0),
		p => p_l6(0));

	elements6_1 : prefiks PORT MAP(
		g1 => g_l3(0),
		p1 => p_l3(0),
		g2 => g_l1(4),
		p2 => p_l1(4),
		g => g_l6(1),
		p => p_l6(1));

	elements6_2 : prefiks PORT MAP(
		g1 => g_l5,
		p1 => p_l5,
		g2 => g_l1(6),
		p2 => p_l1(6),
		g => g_l6(2),
		p => p_l6(2));

	elements7_0 : prefiks PORT MAP(
		g1 => g_l1(0),
		p1 => p_l1(0),
		g2 => g_l0(2),
		p2 => p_l0(2),
		g => g_l7(0),
		p => p_l7(0));

	elements7_1 : prefiks PORT MAP(
		g1 => g_l2(0),
		p1 => p_l2(0),
		g2 => g_l0(4),
		p2 => p_l0(4),
		g => g_l7(1),
		p => p_l7(1));

	elements7_2 : prefiks PORT MAP(
		g1 => g_l6(0),
		p1 => p_l6(0),
		g2 => g_l0(6),
		p2 => p_l0(6),
		g => g_l7(2),
		p => p_l7(2));

	elements7_3 : prefiks PORT MAP(
		g1 => g_l3(0),
		p1 => p_l3(0),
		g2 => g_l0(8),
		p2 => p_l0(8),
		g => g_l7(3),
		p => p_l7(3));

	elements7_4 : prefiks PORT MAP(
		g1 => g_l6(1),
		p1 => p_l6(1),
		g2 => g_l0(10),
		p2 => p_l0(10),
		g => g_l7(4),
		p => p_l7(4));

	elements7_5 : prefiks PORT MAP(
		g1 => g_l5,
		p1 => p_l5,
		g2 => g_l0(12),
		p2 => p_l0(12),
		g => g_l7(5),
		p => p_l7(5));

	elements7_6 : prefiks PORT MAP(
		g1 => g_l6(2),
		p1 => p_l6(2),
		g2 => g_l0(14),
		p2 => p_l0(14),
		g => g_l7(6),
		p => p_l7(6));
	elements8_31 : p_l8(0) <= p_l0(0);
	elements8_32 : g_l8(0) <= g_l0(0);

	elements8_33 : p_l8(1) <= p_l1(0);
	elements8_34 : g_l8(1) <= g_l1(0);

	elements8_10 : p_l8(2) <= p_l7(0);
	elements8_11 : g_l8(2) <= g_l7(0);

	elements8_35 : p_l8(3) <= p_l2(0);
	elements8_36 : g_l8(3) <= g_l2(0);

	elements8_12 : p_l8(4) <= p_l7(1);
	elements8_13 : g_l8(4) <= g_l7(1);

	elements8_21 : p_l8(5) <= p_l6(0);
	elements8_22 : g_l8(5) <= g_l6(0);

	elements8_14 : p_l8(6) <= p_l7(2);
	elements8_15 : g_l8(6) <= g_l7(2);

	elements8_37 : p_l8(7) <= p_l3(0);
	elements8_38 : g_l8(7) <= g_l3(0);

	elements8_141 : p_l8(8) <= p_l7(3);
	elements8_151 : g_l8(8) <= g_l7(3);

	elements8_23 : p_l8(9) <= p_l6(1);
	elements8_24 : g_l8(9) <= g_l6(1);

	elements8_142 : p_l8(10) <= p_l7(4);
	elements8_152 : g_l8(10) <= g_l7(4);

	elements8_39 : p_l8(11) <= p_l5;
	elements8_310 : g_l8(11) <= g_l5;

	elements8_16 : p_l8(12) <= p_l7(5);
	elements8_17 : g_l8(12) <= g_l7(5);

	elements8_25 : p_l8(13) <= p_l6(2);
	elements8_26 : g_l8(13) <= g_l6(2);

	elements8_18 : p_l8(14) <= p_l7(6);
	elements8_19 : g_l8(14) <= g_l7(6);

	elements8_311 : p_l8(15) <= p_l4;
	elements8_312 : g_l8(15) <= g_l4;
	
	
	lab31_0 : c(0) <= cin;
	out_signal : FOR i IN 0 TO 14 GENERATE
		LAB32 : c(i + 1) <= g_l8(i) OR (p_l8(i) AND c(0));
	END GENERATE;
	out_signal_s : FOR i IN 0 TO 15 GENERATE
		LAB32 : s(i) <= p_l0(i) XOR c(i);
	END GENERATE;
	out_signal_cout : cout <= c(15);

END ARCHITECTURE struktura16;