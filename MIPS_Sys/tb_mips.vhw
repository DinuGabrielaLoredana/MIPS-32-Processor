--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb_mips.vhw
-- /___/   /\     Timestamp : Thu Apr 26 21:57:31 2018
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_mips
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_mips IS
END tb_mips;

ARCHITECTURE testbench_arch OF tb_mips IS
    COMPONENT mips
        PORT (
            CLK : In std_logic;
            INW0 : In std_logic_vector (31 DownTo 0);
            INW1 : In std_logic_vector (31 DownTo 0);
            OUTW0 : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL INW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL INW1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL OUTW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : mips
        PORT MAP (
            CLK => CLK,
            INW0 => INW0,
            INW1 => INW1,
            OUTW0 => OUTW0
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                INW0 <= "10101010101010101010101010101011";
                INW1 <= "01010101010101010101010101010101";
                -- -------------------------------------
                WAIT FOR 920 ns;

            END PROCESS;

    END testbench_arch;

