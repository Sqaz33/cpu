library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder is
end tb_full_adder;

architecture sim of tb_full_adder is
  signal A, B, C_IN : std_logic;
  signal S, C_OUT  : std_logic;
begin
  -- экземпляр тестируемого модуля
  uut: entity work.FULL_ADDER
    port map (
      A => A,
      B => B,
      C_IN => C_IN,
      S => S,
      C_OUT => C_OUT
    );

  -- процесс стимулов
  stim: process
  begin
    A <= '1'; B <= '1'; C_IN <= '0'; wait for 10 ns;
    assert S = '0' report "11 failed" severity error;
    assert C_OUT = '1' report "11 failed" severity error;

    report "TEST PASSED" severity note;
    wait;
  end process;
end sim;