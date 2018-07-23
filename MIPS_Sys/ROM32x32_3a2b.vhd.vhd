
-- The following code must appear before the "begin" keyword in the architecture
-- body.

    
					----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:19:49 03/25/2018 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
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

entity ROM32x32 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM32x32;

architecture Behavioral of ROM32x32 is
-- The following code must appear before the "begin" keyword in the architecture
-- body.


   type tROM is array ( 0 to 31) of std_logic_vectoR(31 downto 0);
    constant ROM : tROM :=(
	x"00000020", --0	add $0,$0,$0
	x"8c020040", --1  lw $3, 0x40($0)
	x"8c030044", --2  lw $3, 0x44($0)
	x"00422020", --3  add $4, $2, $2
	x"00822820", --4  add $5, $4, $2
	x"00633020", --5  add $6, $3, $3
	x"00863822", --6  sub $7, $5, $6
	x"00a63822", --7  sw $2, 0x48($0)
	x"ac030048", --8  sw $3, 0x48($0)
	x"ac070048", --9  sw $7, 0x48($0)
	x"00000000", --10 
	x"00000000", --11 
	x"00000000", --12
	x"00000000", --13
	x"00000000", --14
	x"00000000", --15
	x"00000000", --16
	x"00000000", --17
	x"00000000", --18
	x"00000000", --19
	x"00000000", --20
	x"00000000", --21
	x"00000000", --22
	x"00000000", --23
	x"00000000", --24
	x"00000000", --25
	x"00000000", --26
	x"00000000", --27
	x"00000000", --28
	x"00000000", --29
	x"00000000", --30
	x"00000000"  --31

	
	
	);



begin

Data <= ROM(conv_integer(Addr));

end Behavioral;

