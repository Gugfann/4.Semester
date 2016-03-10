library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt59 is
    Port ( ci : in STD_LOGIC;
			  clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           co : out  STD_LOGIC;
           bcd : out  STD_LOGIC_VECTOR (7 downto 0));
end cnt59;

architecture Behavioral of cnt59 is

	signal counter_l: unsigned (3 downto 0) := "0000";
	signal counter_h: unsigned (3 downto 0) := "0000";
	
begin

	bcd (7 downto 4) 		<= std_logic_vector(counter_h);
	bcd (3 downto 0) 		<= std_logic_vector(counter_l);
	
count: process(clk)
	begin
		if rising_edge(clk) then
			co <= '0';
			
			if en = '1' then		
			
				if counter_l = "1001" then
					counter_l <= "0000";
					
					if counter_h = "0101" then
						counter_h 	<= "0000";
						co				<= '1';
					else
						counter_h <= counter_h + 1;
					end if;
					
				else
					counter_l <= counter_l + 1;
				end if;
				
				if clr = '1' then
					counter_l 	<= "0000";
					counter_h 	<= "0000";
				end if;
				
			end if;
		end if;
	end process;
	
end Behavioral;

