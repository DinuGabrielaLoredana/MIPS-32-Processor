--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : mips_sys.vhf
-- /___/   /\     Timestamp : 04/26/2018 21:57:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: "E:\Program Files\Xilinx\bin\nt\sch2vhdl.exe" -intstyle ise -family spartan3 -flat -suppress -w C:/Users/gdinu/Desktop/automatica/labCSO/lab10/MIPS_Sys/mips_sys.sch mips_sys.vhf
--Design Name: mips_sys
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mips_sys is
   port ( BTN0 : in    std_logic; 
          Clk  : in    std_logic; 
          SWA  : in    std_logic_vector (3 downto 0); 
          SWB  : in    std_logic_vector (3 downto 0); 
          a    : out   std_logic; 
          AN   : out   std_logic_vector (3 downto 0); 
          b    : out   std_logic; 
          c    : out   std_logic; 
          d    : out   std_logic; 
          e    : out   std_logic; 
          f    : out   std_logic; 
          g    : out   std_logic);
end mips_sys;

architecture BEHAVIORAL of mips_sys is
   signal INW0 : std_logic_vector (31 downto 0);
   signal INW1 : std_logic_vector (31 downto 0);
   signal OUTW : std_logic_vector (31 downto 0);
   component iface_s3
      port ( INW1  : out   std_logic_vector (31 downto 0); 
             INW0  : out   std_logic_vector (31 downto 0); 
             OUTW0 : in    std_logic_vector (31 downto 0); 
             g     : out   std_logic; 
             SWB   : in    std_logic_vector (3 downto 0); 
             SWA   : in    std_logic_vector (3 downto 0); 
             BTN0  : in    std_logic; 
             Clk   : in    std_logic; 
             AN    : out   std_logic_vector (3 downto 0); 
             f     : out   std_logic; 
             e     : out   std_logic; 
             d     : out   std_logic; 
             c     : out   std_logic; 
             b     : out   std_logic; 
             a     : out   std_logic);
   end component;
   
   component mips
      port ( CLK   : in    std_logic; 
             INW0  : in    std_logic_vector (31 downto 0); 
             INW1  : in    std_logic_vector (31 downto 0); 
             OUTW0 : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   u_iface : iface_s3
      port map (BTN0=>BTN0,
                Clk=>Clk,
                OUTW0(31 downto 0)=>OUTW(31 downto 0),
                SWA(3 downto 0)=>SWA(3 downto 0),
                SWB(3 downto 0)=>SWB(3 downto 0),
                a=>a,
                AN(3 downto 0)=>AN(3 downto 0),
                b=>b,
                c=>c,
                d=>d,
                e=>e,
                f=>f,
                g=>g,
                INW0(31 downto 0)=>INW0(31 downto 0),
                INW1(31 downto 0)=>INW1(31 downto 0));
   
   u_mips : mips
      port map (CLK=>Clk,
                INW0(31 downto 0)=>INW0(31 downto 0),
                INW1(31 downto 0)=>INW1(31 downto 0),
                OUTW0(31 downto 0)=>OUTW(31 downto 0));
   
end BEHAVIORAL;


