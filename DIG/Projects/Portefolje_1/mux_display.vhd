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

entity mux_display is
    Port ( clk : in  STD_LOGIC;
           bcd : in  STD_LOGIC_VECTOR (15 downto 0);
           dp : in  STD_LOGIC_VECTOR (3 downto 0);
           segments : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end mux_display;

architecture Behavioral of mux_display is

	signal mux_out:	std_logic_vector (3 downto 0) := "0000";
	signal temp_seg: 	std_logic_vector (6 downto 0) := "0000000";
	signal temp_dp: 	std_logic := '0';

begin

	segments <= temp_seg & temp_dp;

multiplexer: process(clk)
		variable counter: integer range 1 to 4 := 1;
	begin
	
		if rising_edge(clk) then
			if counter = 4 then
				counter := 1;
			else
				counter := counter + 1;
			end if;
			
		case counter is 
			when 1 => 	mux_out  <= bcd(3) & bcd(2) & bcd (1) & bcd (0);
							an 		<= "1110";
							temp_dp  <= not dp(0);
							
			when 2 => 	mux_out 		<= bcd(7) & bcd(6) & bcd (5) & bcd (4);
							an 		<= "1101";
							temp_dp  <= not dp(1);
							
			when 3 => 	mux_out	<= bcd(11) & bcd(10) & bcd (9) & bcd (8);
							an 		<= "1011";
							temp_dp  <= not dp(2);

			when 4 => 	mux_out	<= bcd(15) & bcd(14) & bcd (13) & bcd (12);
							an 		<= "0111";		
							temp_dp  <= not dp(3);
		end case;
			
		end if;
	end process;

   WITH mux_out SELECT
		temp_seg <= "1000000" when "0000",
						"1111001" when "0001",
						"0100100" when "0010",
						"0110000" when "0011",
						"0011001" when "0100",
						"0010010" when "0101",
						"0000010" when "0110",
						"1111000" when "0111",
						"0000000" when "1000",
						"0011000" when "1001",
						"0001000" when "1010",
						"0000011" when "1011",
						"1000110" when "1100",
						"0100001" when "1101",
						"0000110" when "1110",
						"0001110" when "1111",
						"0000000" when others;		
	
end Behavioral;

