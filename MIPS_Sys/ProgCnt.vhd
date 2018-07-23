----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:32 03/25/2018 
-- Design Name: 
-- Module Name:    ProgCnt - Behavioral 
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

entity ProgCnt is
    Port ( CLK : in  STD_LOGIC;
           PC : out  STD_LOGIC_VECTOR (31 downto 0):= x"0000_0000";
			  New_PC : in  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ProgCnt;

architecture Behavioral of ProgCnt is

begin

PC <= New_PC when rising_edge(Clk);
end Behavioral;

