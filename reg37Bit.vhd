library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity Definition

entity reg37Bit is

	port (
	enable: 	in std_logic;
	rst:		in std_logic;
	clk: 		in std_logic;
	D:	In std_logic_vector(36 downto 0);
	Q:	out std_logic_vector(36 downto 0)
	);

end entity reg37Bit;


architecture reg37Bit_ARCH of reg37Bit is

	signal reg_val : unsigned(36 downto 0) := (others => '0');

begin
	process (clk)
	begin
		if rising_edge(clk) then
			if rst = '0' then
				reg_val <= (others => '0');
			elsif enable = '1' then
				reg_val <= unsigned(D) + 1;
			end if;
		end if;
	end process;
	Q <= std_logic_vector(reg_val);
end architecture reg37Bit_ARCH;