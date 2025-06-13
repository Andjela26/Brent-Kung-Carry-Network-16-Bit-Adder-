
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY prefiks IS
  PORT (
    g1, p1, g2, p2 : IN STD_LOGIC;
    g, p : OUT STD_LOGIC);
END prefiks;

ARCHITECTURE conect OF prefiks IS
BEGIN

  g <= g2 OR (p2 AND g1);
  p <= p2 AND p1;

END ARCHITECTURE conect;