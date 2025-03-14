library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity Definition
entity sync_2ff is
    port (
        clk:     in std_logic;
        async_d: in std_logic;
        sync_q:  out std_logic
    );
end entity sync_2ff;

architecture sync_2ff_ARCH of sync_2ff is
    signal ff1 : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            ff1 <= async_d;
            sync_q <= ff1;
        end if;
    end process;
end architecture sync_2ff_ARCH;
