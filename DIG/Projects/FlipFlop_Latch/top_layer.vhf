--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_layer.vhf
-- /___/   /\     Timestamp : 02/23/2016 20:37:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/FlipFlop_Latch/top_layer.vhf" -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/FlipFlop_Latch/top_layer.sch"
--Design Name: top_layer
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IFD_MXILINX_top_layer is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end IFD_MXILINX_top_layer;

architecture BEHAVIORAL of IFD_MXILINX_top_layer is
   attribute BOX_TYPE         : string ;
   attribute IOB              : string ;
   attribute IOSTANDARD       : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   signal D_IN   : std_logic;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute IBUF_DELAY_VALUE of IBUF : component is "0";
   attribute IFD_DELAY_VALUE of IBUF : component is "AUTO";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute IOB of I_36_15 : label is "TRUE";
begin
   I_36_15 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>XLXN_2,
                CLR=>XLXN_1,
                D=>D_IN,
                Q=>Q);
   
   I_36_24 : IBUF
      port map (I=>D,
                O=>D_IN);
   
   I_36_26 : VCC
      port map (P=>XLXN_2);
   
   I_36_29 : GND
      port map (G=>XLXN_1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IFD8_MXILINX_top_layer is
   port ( C : in    std_logic; 
          D : in    std_logic_vector (7 downto 0); 
          Q : out   std_logic_vector (7 downto 0));
end IFD8_MXILINX_top_layer;

architecture BEHAVIORAL of IFD8_MXILINX_top_layer is
   attribute HU_SET     : string ;
   component IFD_MXILINX_top_layer
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of I_Q0 : label is "I_Q0_7";
   attribute HU_SET of I_Q1 : label is "I_Q1_6";
   attribute HU_SET of I_Q2 : label is "I_Q2_5";
   attribute HU_SET of I_Q3 : label is "I_Q3_4";
   attribute HU_SET of I_Q4 : label is "I_Q4_3";
   attribute HU_SET of I_Q5 : label is "I_Q5_2";
   attribute HU_SET of I_Q6 : label is "I_Q6_1";
   attribute HU_SET of I_Q7 : label is "I_Q7_0";
begin
   I_Q0 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(0),
                Q=>Q(0));
   
   I_Q1 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(1),
                Q=>Q(1));
   
   I_Q2 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(2),
                Q=>Q(2));
   
   I_Q3 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(3),
                Q=>Q(3));
   
   I_Q4 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(4),
                Q=>Q(4));
   
   I_Q5 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(5),
                Q=>Q(5));
   
   I_Q6 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(6),
                Q=>Q(6));
   
   I_Q7 : IFD_MXILINX_top_layer
      port map (C=>C,
                D=>D(7),
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_layer is
   port ( btn0 : in    std_logic; 
          Din  : in    std_logic_vector (7 downto 0); 
          Qout : out   std_logic_vector (7 downto 0));
end top_layer;

architecture BEHAVIORAL of top_layer is
   attribute HU_SET     : string ;
   component IFD8_MXILINX_top_layer
      port ( C : in    std_logic; 
             D : in    std_logic_vector (7 downto 0); 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_35 : label is "XLXI_35_8";
begin
   XLXI_35 : IFD8_MXILINX_top_layer
      port map (C=>btn0,
                D(7 downto 0)=>Din(7 downto 0),
                Q(7 downto 0)=>Qout(7 downto 0));
   
end BEHAVIORAL;


