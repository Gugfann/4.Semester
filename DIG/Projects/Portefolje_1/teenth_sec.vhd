library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teenth_sec is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           lcd : out  STD_LOGIC_VECTOR (7 downto 0));
end teenth_sec;

architecture Behavioral of teenth_sec is

begin

with bcd select
	lcd <=	"00000000" when "0000",
				"00000001" when "0001",
				"00000011" when "0010",
				"00000111" when "0011",
				"00001111" when "0100",
				"00011111" when "0101",
				"00111111" when "0110",
				"01111111" when "0111",
				"11111111" when "1000",
				"11111110" when "1001",
				"00000000" when others;

end Behavioral;

