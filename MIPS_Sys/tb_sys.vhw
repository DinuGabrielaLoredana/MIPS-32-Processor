--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tb_sys.vhw
-- /___/   /\     Timestamp : Tue Apr 24 16:44:25 2018
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tb_sys
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

ENTITY tb_sys IS
END tb_sys;

ARCHITECTURE testbench_arch OF tb_sys IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mips_sys
        PORT (
            BTN0 : In std_logic;
            Clk : In std_logic;
            SWA : In std_logic_vector (3 DownTo 0);
            SWB : In std_logic_vector (3 DownTo 0);
            a : Out std_logic;
            AN : Out std_logic_vector (3 DownTo 0);
            b : Out std_logic;
            c : Out std_logic;
            d : Out std_logic;
            e : Out std_logic;
            f : Out std_logic;
            g : Out std_logic
        );
    END COMPONENT;

    SIGNAL BTN0 : std_logic := '0';
    SIGNAL Clk : std_logic := '0';
    SIGNAL SWA : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL SWB : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL a : std_logic := '0';
    SIGNAL AN : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL b : std_logic := '0';
    SIGNAL c : std_logic := '0';
    SIGNAL d : std_logic := '0';
    SIGNAL e : std_logic := '0';
    SIGNAL f : std_logic := '0';
    SIGNAL g : std_logic := '0';

    constant PERIOD : time := 20 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : mips_sys
        PORT MAP (
            BTN0 => BTN0,
            Clk => Clk,
            SWA => SWA,
            SWB => SWB,
            a => a,
            AN => AN,
            b => b,
            c => c,
            d => d,
            e => e,
            f => f,
            g => g
        );

        PROCESS    -- clock process for Clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                Clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                Clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                SWA <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  105ns
                WAIT FOR 5 ns;
                SWB <= "0111";
                -- -------------------------------------
                WAIT FOR 915 ns;

            END PROCESS;

    END testbench_arch;

