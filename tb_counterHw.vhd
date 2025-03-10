library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_counterHw is
end entity tb_counterHw;

architecture behavioral of tb_counterHw is

    -- Signals to drive the DUT
    signal tb_enable : std_logic := '0';
    signal tb_rst    : std_logic := '1';
    signal tb_clk    : std_logic := '0';
    signal tb_HEX0   : std_logic_vector(6 downto 0);
    signal tb_HEX1   : std_logic_vector(6 downto 0);
    signal tb_HEX2   : std_logic_vector(6 downto 0);

begin

    -- Instantiate the counter design
    uut: entity work.counterHw
        port map (
            enable => tb_enable,
            rst    => tb_rst,
            clk    => tb_clk,
            HEX0   => tb_HEX0,
            HEX1   => tb_HEX1,
            HEX2   => tb_HEX2
        );

    -- Clock generation: 10 ns period (5 ns low, 5 ns high)
    clk_gen: process
    begin
        while true loop
            tb_clk <= '0';
            wait for 5 ns;
            tb_clk <= '1';
            wait for 5 ns;
        end loop;
    end process clk_gen;

    -- Stimulus process: Apply reset and enable signals
    stim_proc: process
    begin
        -- Assert reset initially
        tb_rst <= '1';
        wait for 20 ns;
        
        -- Release reset
        tb_rst <= '0';
        wait for 20 ns;

        -- Enable the counter and let it run
        tb_enable <= '1';
        wait for 100 ns;

        -- Disable the counter to test pause behavior
        tb_enable <= '0';
        wait for 50 ns;

        -- Re-enable the counter
        tb_enable <= '1';
        wait for 100 ns;

        -- Terminate simulation with an assertion failure
        assert false report "End of simulation" severity failure;
    end process stim_proc;

end architecture behavioral;
