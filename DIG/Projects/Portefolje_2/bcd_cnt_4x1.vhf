--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bcd_cnt_4x1.vhf
-- /___/   /\     Timestamp : 04/23/2016 23:35:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_2/bcd_cnt_4x1.vhf" -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_2/bcd_cnt_4x1.sch"
--Design Name: bcd_cnt_4x1
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

entity bcd_cnt_4x1 is
   port ( clk    : in    std_logic; 
          clr    : in    std_logic; 
          enable : in    std_logic; 
          bcd    : out   std_logic_vector (15 downto 0));
end bcd_cnt_4x1;

architecture BEHAVIORAL of bcd_cnt_4x1 is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component cnt_bcd
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>enable,
                bcd(3 downto 0)=>bcd(3 downto 0),
                co=>XLXN_3);
   
   XLXI_2 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_3,
                bcd(3 downto 0)=>bcd(7 downto 4),
                co=>XLXN_2);
   
   XLXI_3 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_2,
                bcd(3 downto 0)=>bcd(11 downto 8),
                co=>XLXN_1);
   
   XLXI_4 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_1,
                bcd(3 downto 0)=>bcd(15 downto 12),
                co=>open);
   
end BEHAVIORAL;


