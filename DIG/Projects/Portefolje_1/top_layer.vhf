--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_layer.vhf
-- /___/   /\     Timestamp : 03/09/2016 23:03:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/top_layer.vhf" -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/top_layer.sch"
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

entity top_layer is
   port ( btn    : in    std_logic; 
          clk    : in    std_logic; 
          toggle : out   std_logic);
end top_layer;

architecture BEHAVIORAL of top_layer is
   signal XLXN_4 : std_logic;
   component clk_1khz
      port ( clk      : in    std_logic; 
             clk_1khz : out   std_logic);
   end component;
   
   component toggle_button
      port ( clk      : in    std_logic; 
             btn      : in    std_logic; 
             toggle   : out   std_logic; 
             debounce : out   std_logic; 
             pulse    : out   std_logic);
   end component;
   
begin
   XLXI_3 : clk_1khz
      port map (clk=>clk,
                clk_1khz=>XLXN_4);
   
   XLXI_4 : toggle_button
      port map (btn=>btn,
                clk=>XLXN_4,
                debounce=>open,
                pulse=>open,
                toggle=>toggle);
   
end BEHAVIORAL;


