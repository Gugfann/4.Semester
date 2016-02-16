----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Hex2_7segment_v1 is
    Port ( Hex :     in  STD_LOGIC_VECTOR (3 downto 0);
           abcdefg : out STD_LOGIC_VECTOR (1 to 7));
end Hex2_7segment_v1;

architecture Behavioral of Hex2_7segment_v1 is
   signal a,b,c,d,e,f,g: STD_LOGIC;
	signal Hexi: integer range 0 to 15;
begin
   Hexi    <= conv_integer( Hex);           -- Convert to integer
	abcdefg <= a & b & c & d & e & f & g;    -- Concentate to vector
	
	a <= '1' when Hexi=1 or Hexi=4 or Hexi=11 or Hexi=13 else '0';

   with Hexi select
   b <= '1' when 5|6|11|12|14|15,
        '0' when others;

   c <= (not Hex(3) and not Hex(2) and     Hex(1) and not Hex(0)) or -- "0010"
        (    Hex(3) and     Hex(2) and not Hex(1) and not Hex(0)) or -- "1100"
        (    Hex(3) and     Hex(2) and     Hex(1) and not Hex(0)) or -- "1110"
        (    Hex(3) and     Hex(2) and     Hex(1) and     Hex(0));   -- "1111"

	process( Hexi)
	begin
		d <= '0'; -- It's only in a process that default values allowed
		if (Hexi=1) or (Hexi=4) or (Hexi=7) or (Hexi=10) or (Hexi=15) then
			d <= '1';
		end if;
	end process;
	
	process( Hexi)
	begin
		if (Hexi=1)or(Hexi=3)or(Hexi=4) or (Hexi=5) or (Hexi=7) or Hexi=9 then
			e <= '1';
		else	
			e <= '0';
		end if;	
	end process;

	process( Hexi)
	begin
		case Hexi is
			when 1|2|3|7|13 => f <= '1';
			when others     => f <= '0';
		end case;	
	end process;

	process( Hexi)
		constant Segm_g: STD_LOGIC_VECTOR( 0 to 15) := "1100000100001000";
	begin
		g <= Segm_g( Hexi);	
	end process;

end Behavioral;

