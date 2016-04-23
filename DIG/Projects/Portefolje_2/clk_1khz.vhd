library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_1khz is
    Port ( clk : in  STD_LOGIC;
           clk_1khz : out  STD_LOGIC);
end clk_1khz;

architecture Behavioral of clk_1khz is

signal clk_divider: integer range 0 to 49999 := 0;

begin

reducer: process(clk)
	begin
		if rising_edge(clk) then
			
			if clk_divider < 25000 then
				clk_1khz  <= '1';
				clk_divider <= clk_divider + 1;
				
			elsif clk_divider = 49999 then
				clk_divider <= 0;
				
			else
				clk_1khz <= '0';
				clk_divider <= clk_divider + 1;
			end if;
		end if;
	end process;

end Behavioral;

