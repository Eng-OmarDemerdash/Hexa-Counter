library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity Definition

entity counterHw is

	port (
	enable: 	in std_logic;
	rst:		in std_logic;
	clk: 		in std_logic;
	HEX0:		out std_logic_vector(6 downto 0);
	HEX1:		out std_logic_vector(6 downto 0);
	HEX2:		out std_logic_vector(6 downto 0)
	);

end entity counterHw;


architecture counterHw_ARCH of counterHw is

	signal enable_reg, sync_rst, sync_enable : std_logic;
	signal reg_out, next_value: std_logic_vector(36 downto 0);

	component hexToSevenSegment is
		port (
			inHex: 	in std_logic_vector(3 downto 0);
			outHex: 	out std_logic_vector(6 downto 0)
		);
	end component;
	
	
	component sync_2ff is
	port (
		clk: 	   in std_logic;
		async_d: in std_logic;
		sync_q:  out std_logic
		);
	end component;
	
	component reg37Bit is
		port (
		enable: 	in std_logic;
		rst:		in std_logic;
		clk: 		in std_logic;
		D:	in std_logic_vector(36 downto 0);
		Q:	out std_logic_vector(36 downto 0)
		);
	end component;

begin
	
	-- Synchronizing Reset
	rst_sync : sync_2ff
		port map ( clk, rst, sync_rst);

	-- Synchronizing Enable Signal
	enablesync : sync_2ff
		port map ( clk, enable, sync_enable);

	-- Registering Enable Signal (Avoiding glitches)

	enable_reg <= not sync_enable;

	-- Increment Logic (Adder +1)
	next_value <= reg_out;

	-- 37-bit Register
	reg_inst: reg37Bit
		port map (
			enable  => enable_reg,
			rst     => sync_rst,
			clk     => clk,
			D       => next_value,
			Q       => reg_out
		);

	-- 7-Segment Display Conversions
	hex2_inst: hexToSevenSegment
		port map (reg_out(36 downto 33), HEX2);

	hex1_inst: hexToSevenSegment
		port map (reg_out(32 downto 29), HEX1);

	hex0_inst: hexToSevenSegment
		port map (reg_out(28 downto 25), HEX0);
		


end architecture counterHw_ARCH;