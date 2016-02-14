--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Seven_Seg_Driver_drc.vhf
-- /___/   /\     Timestamp : 02/14/2016 20:02:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Kristian\Programmer\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl Seven_Seg_Driver_drc.vhf -w C:/Kristian/Programmer/Xilinx/Karnaugh/Seven_Seg_Driver.sch
--Design Name: Seven_Seg_Driver
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

entity INV4_MXILINX_Seven_Seg_Driver is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          O0 : out   std_logic; 
          O1 : out   std_logic; 
          O2 : out   std_logic; 
          O3 : out   std_logic);
end INV4_MXILINX_Seven_Seg_Driver;

architecture BEHAVIORAL of INV4_MXILINX_Seven_Seg_Driver is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_37 : INV
      port map (I=>I3,
                O=>O3);
   
   I_36_38 : INV
      port map (I=>I2,
                O=>O2);
   
   I_36_39 : INV
      port map (I=>I1,
                O=>O1);
   
   I_36_40 : INV
      port map (I=>I0,
                O=>O0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Seven_Seg_Driver is
   port ( btn  : in    std_logic_vector (3 downto 0); 
          sw   : in    std_logic_vector (7 downto 0); 
          en0  : out   std_logic; 
          en1  : out   std_logic; 
          en2  : out   std_logic; 
          en3  : out   std_logic; 
          led0 : out   std_logic; 
          led1 : out   std_logic; 
          led2 : out   std_logic; 
          led3 : out   std_logic; 
          seg  : out   std_logic_vector (7 downto 0));
end Seven_Seg_Driver;

architecture BEHAVIORAL of Seven_Seg_Driver is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal not_sw0  : std_logic;
   signal not_sw1  : std_logic;
   signal not_sw2  : std_logic;
   signal not_sw3  : std_logic;
   signal switch0  : std_logic;
   signal switch1  : std_logic;
   signal switch2  : std_logic;
   signal switch3  : std_logic;
   signal XLXN_52  : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_55  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_108 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_139 : std_logic;
   signal XLXN_140 : std_logic;
   signal XLXN_141 : std_logic;
   signal XLXN_142 : std_logic;
   signal XLXN_164 : std_logic;
   signal XLXN_168 : std_logic;
   signal XLXN_175 : std_logic;
   signal XLXN_176 : std_logic;
   signal XLXN_177 : std_logic;
   signal XLXN_178 : std_logic;
   signal XLXN_191 : std_logic;
   signal XLXN_192 : std_logic;
   signal XLXN_193 : std_logic;
   signal XLXN_194 : std_logic;
   signal XLXN_196 : std_logic;
   signal XLXN_198 : std_logic;
   signal XLXN_199 : std_logic;
   signal XLXN_202 : std_logic;
   signal XLXN_203 : std_logic;
   signal XLXN_204 : std_logic;
   signal XLXN_205 : std_logic;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component INV4_MXILINX_Seven_Seg_Driver
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
begin
   XLXI_1 : BUF
      port map (I=>sw(4),
                O=>en0);
   
   XLXI_2 : BUF
      port map (I=>sw(5),
                O=>en1);
   
   XLXI_3 : BUF
      port map (I=>sw(6),
                O=>en2);
   
   XLXI_4 : BUF
      port map (I=>sw(7),
                O=>en3);
   
   XLXI_5 : INV4_MXILINX_Seven_Seg_Driver
      port map (I0=>sw(3),
                I1=>sw(2),
                I2=>sw(1),
                I3=>sw(0),
                O0=>not_sw3,
                O1=>not_sw2,
                O2=>not_sw1,
                O3=>not_sw0);
   
   XLXI_13 : AND2
      port map (I0=>switch1,
                I1=>not_sw3,
                O=>XLXN_52);
   
   XLXI_14 : AND3
      port map (I0=>switch0,
                I1=>switch2,
                I2=>not_sw3,
                O=>XLXN_55);
   
   XLXI_15 : AND3
      port map (I0=>not_sw0,
                I1=>not_sw1,
                I2=>not_sw2,
                O=>XLXN_98);
   
   XLXI_16 : AND3
      port map (I0=>not_sw1,
                I1=>not_sw2,
                I2=>switch3,
                O=>XLXN_54);
   
   XLXI_17 : AND2
      port map (I0=>not_sw2,
                I1=>not_sw3,
                O=>XLXN_108);
   
   XLXI_18 : AND2
      port map (I0=>not_sw1,
                I1=>not_sw2,
                O=>XLXN_199);
   
   XLXI_19 : AND3
      port map (I0=>not_sw0,
                I1=>not_sw1,
                I2=>not_sw3,
                O=>XLXN_196);
   
   XLXI_20 : AND3
      port map (I0=>switch0,
                I1=>switch1,
                I2=>not_sw3,
                O=>XLXN_198);
   
   XLXI_21 : AND2
      port map (I0=>not_sw1,
                I1=>not_sw3,
                O=>XLXN_202);
   
   XLXI_22 : AND2
      port map (I0=>not_sw1,
                I1=>not_sw2,
                O=>XLXN_205);
   
   XLXI_23 : AND2
      port map (I0=>switch2,
                I1=>not_sw3,
                O=>XLXN_203);
   
   XLXI_24 : AND2
      port map (I0=>switch0,
                I1=>not_sw3,
                O=>XLXN_204);
   
   XLXI_25 : AND3
      port map (I0=>not_sw0,
                I1=>not_sw1,
                I2=>not_sw2,
                O=>XLXN_139);
   
   XLXI_26 : AND3
      port map (I0=>switch1,
                I1=>not_sw2,
                I2=>not_sw3,
                O=>XLXN_138);
   
   XLXI_27 : AND3
      port map (I0=>not_sw1,
                I1=>not_sw2,
                I2=>switch3,
                O=>XLXN_140);
   
   XLXI_28 : AND3
      port map (I0=>not_sw0,
                I1=>switch1,
                I2=>not_sw3,
                O=>XLXN_141);
   
   XLXI_29 : AND4
      port map (I0=>switch0,
                I1=>not_sw1,
                I2=>switch2,
                I3=>not_sw3,
                O=>XLXN_142);
   
   XLXI_30 : AND3
      port map (I0=>not_sw0,
                I1=>not_sw1,
                I2=>not_sw2,
                O=>XLXN_164);
   
   XLXI_31 : AND3
      port map (I0=>not_sw0,
                I1=>switch1,
                I2=>not_sw3,
                O=>XLXN_168);
   
   XLXI_32 : AND3
      port map (I0=>not_sw0,
                I1=>not_sw1,
                I2=>not_sw3,
                O=>XLXN_175);
   
   XLXI_33 : AND3
      port map (I0=>not_sw1,
                I1=>switch2,
                I2=>not_sw3,
                O=>XLXN_176);
   
   XLXI_34 : AND3
      port map (I0=>not_sw1,
                I1=>not_sw2,
                I2=>switch3,
                O=>XLXN_177);
   
   XLXI_35 : AND3
      port map (I0=>not_sw0,
                I1=>switch2,
                I2=>not_sw3,
                O=>XLXN_178);
   
   XLXI_36 : AND3
      port map (I0=>not_sw1,
                I1=>switch2,
                I2=>not_sw3,
                O=>XLXN_191);
   
   XLXI_37 : AND3
      port map (I0=>not_sw0,
                I1=>switch1,
                I2=>not_sw3,
                O=>XLXN_192);
   
   XLXI_38 : AND3
      port map (I0=>not_sw1,
                I1=>not_sw2,
                I2=>switch3,
                O=>XLXN_194);
   
   XLXI_39 : AND3
      port map (I0=>switch1,
                I1=>not_sw2,
                I2=>not_sw3,
                O=>XLXN_193);
   
   XLXI_40 : BUF
      port map (I=>btn(0),
                O=>seg(7));
   
   XLXI_41 : BUF
      port map (I=>sw(0),
                O=>switch0);
   
   XLXI_42 : BUF
      port map (I=>sw(1),
                O=>switch1);
   
   XLXI_43 : BUF
      port map (I=>sw(2),
                O=>switch2);
   
   XLXI_44 : BUF
      port map (I=>sw(3),
                O=>switch3);
   
   XLXI_45 : BUF
      port map (I=>sw(0),
                O=>led0);
   
   XLXI_46 : BUF
      port map (I=>sw(1),
                O=>led1);
   
   XLXI_47 : BUF
      port map (I=>sw(2),
                O=>led2);
   
   XLXI_48 : BUF
      port map (I=>sw(3),
                O=>led3);
   
   XLXI_49 : OR4
      port map (I0=>XLXN_98,
                I1=>XLXN_55,
                I2=>XLXN_54,
                I3=>XLXN_52,
                O=>seg(0));
   
   XLXI_50 : OR4
      port map (I0=>XLXN_199,
                I1=>XLXN_198,
                I2=>XLXN_196,
                I3=>XLXN_108,
                O=>seg(1));
   
   XLXI_51 : OR4
      port map (I0=>XLXN_205,
                I1=>XLXN_204,
                I2=>XLXN_203,
                I3=>XLXN_202,
                O=>seg(2));
   
   XLXI_52 : OR4
      port map (I0=>XLXN_178,
                I1=>XLXN_177,
                I2=>XLXN_176,
                I3=>XLXN_175,
                O=>seg(5));
   
   XLXI_53 : OR4
      port map (I0=>XLXN_194,
                I1=>XLXN_193,
                I2=>XLXN_192,
                I3=>XLXN_191,
                O=>seg(6));
   
   XLXI_54 : OR5
      port map (I0=>XLXN_142,
                I1=>XLXN_141,
                I2=>XLXN_140,
                I3=>XLXN_138,
                I4=>XLXN_139,
                O=>seg(3));
   
   XLXI_55 : OR2
      port map (I0=>XLXN_168,
                I1=>XLXN_164,
                O=>seg(4));
   
end BEHAVIORAL;


