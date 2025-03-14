library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity Definition

entity hexToSevenSegment is

	port (
	inHex: 	in std_logic_vector(3 downto 0);
	outHex: 	out std_logic_vector(6 downto 0)
	);

end entity hexToSevenSegment;

architecture hexToSevenSegment_arch of hexToSevenSegment is

	-- gfedcba

	begin
	process (inHex)
		begin
		case inHex is
			when "0000" => outHex <= "1000000"; -- 0
			when "0001" => outHex <= "1111001"; -- 1
			when "0010" => outHex <= "0100100"; -- 2
			when "0011" => outHex <= "0110000"; -- 3
			when "0100" => outHex <= "0011001"; -- 4
			when "0101" => outHex <= "0010010"; -- 5
			when "0110" => outHex <= "0000010"; -- 6
			when "0111" => outHex <= "1111000"; -- 7
			when "1000" => outHex <= "0000000"; -- 8
			when "1001" => outHex <= "0010000"; -- 9
			when "1010" => outHex <= "0001000"; -- A
			when "1011" => outHex <= "0000011"; -- B
			when "1100" => outHex <= "1000110"; -- C
			when "1101" => outHex <= "0100001"; -- D
			when "1110" => outHex <= "0000110"; -- E
			when "1111" => outHex <= "0001110"; -- F
			when others => outHex <= "1111111";
		end case;
	end process;


end architecture hexToSevenSegment_arch;