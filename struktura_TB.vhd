library ieee;
use ieee.std_logic_1164.all;

entity struktura_tb is

end struktura_tb ;

architecture struktura16 of struktura_tb is
signal A, B, S : std_logic_vector(15 downto 0);
signal Cin, Cout : std_logic;

component struktura is
port (
      a,b : in std_logic_vector(15 downto 0);
      s: out std_logic_vector(15 downto 0);
      cin : in std_logic;
      cout : out std_logic); 

end component;

begin
    uut: struktura port map (a => A, b => B, s => S, cin => Cin, cout => Cout);
    process 
    begin
    
    A <= x"0123";
    B <= x"0163";
    Cin <= '0';

    wait for 10ns;
    A <= x"0128";
    B <= x"0003";
    Cin <= '1';
    wait for 10ns;

    A <= x"01F1";
    B <= x"012D";
    Cin <= '0';

    wait for 10ns;
    A <= x"5101";
    B <= x"0003";
    Cin <= '0';


    wait;
    end process;


end struktura16;
