VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL CLK
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(20:16)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        PORT Input CLK
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2018 3 25 9 11 32
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2018 3 25 9 13 13
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2018 3 25 9 23 27
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2018 3 25 9 27 15
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN CLK CLK
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) PC(31:0)
            PIN New_PC(31:0) New_PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Y(4:0) WrReg(4:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE U_New_PC 624 336 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 624 736 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 560 544 560 704
            WIRE 560 704 624 704
            WIRE 560 544 1024 544
            WIRE 1024 544 1088 544
            WIRE 1008 304 1088 304
            WIRE 1088 304 1088 544
            BEGIN DISPLAY 1024 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 464 640 624 640
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 608 304 624 304
            WIRE 608 304 608 432
            WIRE 608 432 624 432
            WIRE 624 432 656 432
            WIRE 656 432 1136 432
            WIRE 1136 432 1136 512
            WIRE 1136 512 1136 640
            WIRE 1136 640 1136 736
            WIRE 1136 736 1136 880
            WIRE 1008 640 1136 640
            BEGIN DISPLAY 1136 512 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 464 640 CLK R180 28
        BUSTAP 1136 736 1232 736
        BEGIN INSTANCE U_ROM 1472 768 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(6:2)
            WIRE 1232 736 1312 736
            WIRE 1312 736 1472 736
            BEGIN DISPLAY 1312 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1856 736 1936 736
            WIRE 1936 736 1936 768
            WIRE 1936 768 1936 816
            WIRE 1936 816 1936 944
            WIRE 1936 944 1936 1104
            WIRE 1936 1104 1936 1248
            BEGIN DISPLAY 1936 944 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 768 2032 768
        BEGIN BRANCH Instr(25:21)
            WIRE 2032 768 2048 768
            WIRE 2048 768 2240 768
            WIRE 2240 768 2432 768
            BEGIN DISPLAY 2240 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 816 2032 816
        BUSTAP 1936 1104 2032 1104
        BEGIN BRANCH Instr(20:16)
            WIRE 2032 816 2064 816
            WIRE 2064 816 2240 816
            WIRE 2240 816 2432 816
            WIRE 2064 816 2064 832
            WIRE 2064 832 2112 832
            WIRE 2112 832 2112 1104
            WIRE 2112 1104 2128 1104
            BEGIN DISPLAY 2240 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 2128 1200 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(15:11)
            WIRE 2032 1104 2048 1104
            WIRE 2048 1104 2080 1104
            WIRE 2080 1104 2080 1168
            WIRE 2080 1168 2128 1168
            BEGIN DISPLAY 2048 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2032 1040 2064 1040
            WIRE 2064 1040 2128 1040
            BEGIN DISPLAY 2064 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2512 1040 2560 1040
            WIRE 2560 1040 2656 1040
            BEGIN DISPLAY 2560 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
