----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:14:21 04/08/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( RdData1 : in  STD_LOGIC_VECTOR (31 downto 0);
           RdData2 : in  STD_LOGIC_VECTOR (31 downto 0);
           FAddr : in  STD_LOGIC_VECTOR (15 downto 0);
           ALUSrc : in  STD_LOGIC;
           ALUOP : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0);
			  Zero : out STD_LOGIC);
			  
end ALU;

architecture Behavioral of ALU is

	signal SEAddr : STD_LOGIC_VECTOR (31 downto 0);
	signal OP1 : STD_LOGIC_VECTOR (31 downto 0);
	signal OP2: STD_LOGIC_VECTOR (31 downto 0);

begin

	SEAddr<= "0000000000000000" & FAddr when FAddr(15) = '0' else "1111111111111111" & FAddr;
	OP1 <= RdData1;
	OP2 <= RdData2 when ALUSrc = '0' else SEAddr;
	
	with ALUOP select
	Y<= OP1 + OP2 when "00",
		 OP1 - OP2 when "01",
		 OP1 and OP2 when "10",
		 OP1 or OP2 when others;
	Zero <= '1' when RdData1 = RdData2 else '0';
	
	
end Behavioral;

