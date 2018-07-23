----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:26 03/25/2018 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port ( 
			  Zero : in STD_LOGIC;
			  Offset : in STD_LOGIC_VECTOR(15 downto 0);
			  Branch : in STD_LOGIC;
			  PC : in  STD_LOGIC_VECTOR (31 downto 0);
           New_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
	signal PC_p4 : STD_LOGIC_VECTOR(31 downto 0);
	signal depl : STD_LOGIC_VECTOR(31 downto 0);
begin
	PC_p4 <= PC+4;
	
	---depl(17 downto 2 )<= Offset;
	---depl(31 downto 0 )  <= (others => Offset(15));
	depl<= ("00000000000000" & Offset & "00") when Offset(15) = '0' else ("11111111111111" & Offset & "00");
	
	New_PC <= (PC_p4 + depl) when (Branch = '1' and Zero = '1') else Pc_p4 ;

end Behavioral;

