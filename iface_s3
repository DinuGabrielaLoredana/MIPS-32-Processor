----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:23:54 11/20/2011 
-- Design Name: 
-- Module Name:    Iface_s3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Iface_s3 is
   port(
      Clk      : in  std_logic;
      SWA      : in  std_logic_vector(3 downto 0);
      SWB      : in  std_logic_vector(3 downto 0);
      BTN0     : in  std_logic;
	  a		   : out std_logic;
	  b		   : out std_logic;
	  c		   : out std_logic;
	  d		   : out std_logic;
 	  e		   : out std_logic;
	  f		   : out std_logic;
	  g		   : out std_logic;
      AN       : out std_logic_vector(3 downto 0);
		
	  INW0     : out std_logic_vector(31 downto 0); 
	  INW1     : out std_logic_vector(31 downto 0); 
	  OUTW0    : in  std_logic_vector(31 downto 0)
   );
end Iface_s3;

architecture Behavioral of Iface_s3 is
   signal SEG     : std_logic_vector(6 downto 0);
   signal saQ_Cnt	: std_logic_vector(16 downto 0):=(others =>'0'); 
   signal saX     : std_logic_vector(15 downto 0); 
   signal saY     : std_logic_vector(3 downto 0); 

begin
   
   INW0     <= x"0000_000"& SWA when rising_edge(clk);
   INW1     <= x"0000_000"& SWB when rising_edge(clk);
   
   process(CLK)
   begin
      if rising_edge(Clk)then
         saQ_Cnt<=saQ_Cnt+1;
      end if;
   end process;

   saX   <= OUTW0(15 downto 0) when BTN0='0' else OUTW0(31 downto 16);
   
   with saQ_Cnt(16 downto 15) select
   saY   <= saX(3 downto 0)   when "00",
            saX(7 downto 4)   when "01",
            saX(11 downto 8)  when "10",
            saX(15 downto 12) when others;
   
   with saY SELect
   SEG <=   "1111001" when "0001",   --1
            "0100100" when "0010",   --2
            "0110000" when "0011",   --3
            "0011001" when "0100",   --4
            "0010010" when "0101",   --5
            "0000010" when "0110",   --6
            "1111000" when "0111",   --7
            "0000000" when "1000",   --8
            "0010000" when "1001",   --9
            "0001000" when "1010",   --A
            "0000011" when "1011",   --b
            "1000110" when "1100",   --C
            "0100001" when "1101",   --d
            "0000110" when "1110",   --E
            "0001110" when "1111",   --F
            "1000000" when "0000",   --0
            "0111111" when others;   --?

   with saQ_Cnt(16 downto 15) select
   AN <=  "1110" when "00",
          "1101" when "01",
          "1011" when "10",
          "0111" when others;

	--     AN <=  "0000";
	
	a	<= seg(0);
	b	<= seg(1);
	c	<= seg(2);
	d	<= seg(3);
	e	<= seg(4);
	f	<= seg(5);
	g	<= seg(6);
	
end Behavioral;

