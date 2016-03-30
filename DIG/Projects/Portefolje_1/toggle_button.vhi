
-- VHDL Instantiation Created from source file toggle_button.vhd -- 18:06:32 03/23/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT toggle_button
	PORT(
		clk : IN std_logic;
		btn : IN std_logic;          
		toggle : OUT std_logic;
		debounce : OUT std_logic;
		pulse : OUT std_logic
		);
	END COMPONENT;

	Inst_toggle_button: toggle_button PORT MAP(
		clk => ,
		btn => ,
		toggle => ,
		debounce => ,
		pulse => 
	);


