library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt999 is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           co : out  STD_LOGIC;
           bcd : out  STD_LOGIC_VECTOR (3 downto 0));
end cnt999;

architecture Behavioral of cnt999 is

	signal counter: integer range 0 to 99 := 0;

begin

count: process(clk,clr,en)
		variable next_bcd: unsigned (3 downto 0) := "0000";
	begin
		if rising_edge(clk) then
			co <= '0';
			if en = '1' then
				if counter = 99 then
					counter <= 0;
					 
					if next_bcd = "1001" then
							co 			<= '1';
							next_bcd 	:= "0000";
					else							
							next_bcd		:= next_bcd + 1;
					end if;
				
				else
					counter <= counter + 1;
				end if;

				if clr = '1' then
					next_bcd := "0000";
					co			<= '0';	
				end if;
			end if;
		end if;
		
		bcd <= std_logic_vector(next_bcd);
		
	end process;

end Behavioral;

