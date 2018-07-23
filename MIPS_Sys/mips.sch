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
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(20:16)
        SIGNAL Instr(15:11)
        SIGNAL RegDest
        SIGNAL WrReg(4:0)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL MemWr
        SIGNAL ALU_Out(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL Zero
        SIGNAL Branch
        SIGNAL PC(31:0)
        PORT Input CLK
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2018 3 25 9 11 34
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2018 4 26 18 30 30
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -64 320 192 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2018 3 25 9 23 28
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2018 3 25 9 27 16
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2012 11 18 21 21 48
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2018 4 26 18 8 30
            LINE N 320 32 384 32 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 64 -320 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2011 12 4 15 25 46
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2018 4 8 14 28 50
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2018 4 26 18 18 39
            LINE N 320 32 384 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN CLK CLK
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN PC(31:0) PC(31:0)
            PIN New_PC(31:0) New_PC(31:0)
            PIN Zero Zero
            PIN Branch Branch
            PIN Offset(15:0) Instr(15:0)
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
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk CLK
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN Zero Zero
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Wr MemWr
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Clk CLK
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN INW1(31:0) INW1(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN I0(31:0) ALU_Out(31:0)
            PIN I1(31:0) MemOut(31:0)
            PIN Y(31:0) WrData(31:0)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Branch Branch
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
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
        IOMARKER 464 640 CLK R180 28
        BEGIN INSTANCE U_ROM 1472 768 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(6:2)
            WIRE 1216 736 1232 736
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
            WIRE 1936 944 1936 1024
            WIRE 1936 1024 1936 1104
            WIRE 1936 1104 1936 1248
            WIRE 1936 1248 1936 1408
            WIRE 1936 1408 1936 1504
            WIRE 1936 1504 1936 1552
            WIRE 1936 1552 1936 1872
            WIRE 1936 1872 1936 2176
            BEGIN DISPLAY 1936 944 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 768 2032 768
        BEGIN BRANCH Instr(25:21)
            WIRE 2032 768 2048 768
            WIRE 2048 768 2240 768
            WIRE 2240 768 2432 768
            WIRE 2432 768 2608 768
            WIRE 2608 768 2608 816
            WIRE 2608 816 2800 816
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
            WIRE 2432 816 2432 880
            WIRE 2432 880 2800 880
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
            WIRE 2656 1040 2800 1040
            BEGIN DISPLAY 2560 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2800 1040 R0
            BEGIN DISPLAY 0 -568 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 2672 624 2768 624
            WIRE 2768 624 2800 624
            BEGIN DISPLAY 2768 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2672 688 2736 688
            WIRE 2736 688 2800 688
            BEGIN DISPLAY 2736 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3552 848 R0
            BEGIN DISPLAY 0 -440 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(31:0)
            WIRE 3280 624 3424 624
            WIRE 3424 624 3552 624
            BEGIN DISPLAY 3424 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3280 688 3344 688
            WIRE 3344 688 3408 688
            WIRE 3408 688 3552 688
            WIRE 3408 688 3408 864
            WIRE 3408 864 4240 864
            BEGIN DISPLAY 3344 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 1408 2032 1408
        BEGIN BRANCH Instr(15:0)
            WIRE 2032 1408 2160 1408
            WIRE 2160 1408 2480 1408
            WIRE 2480 1408 3344 1408
            WIRE 3344 752 3344 1408
            WIRE 3344 752 3552 752
            BEGIN DISPLAY 2160 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3472 816 3488 816
            WIRE 3488 816 3552 816
            BEGIN DISPLAY 3488 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3424 560 3504 560
            WIRE 3504 560 3552 560
            BEGIN DISPLAY 3504 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 4784 880 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 4064 512 4112 512
            WIRE 4112 512 4240 512
            BEGIN DISPLAY 4112 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 4176 576 4224 576
            WIRE 4224 576 4240 576
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4192 640 4224 640
            WIRE 4224 640 4240 640
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 4064 736 4096 736
            WIRE 4096 736 4240 736
            BEGIN DISPLAY 4096 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4240 720 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        IOMARKER 4176 576 INW0(31:0) R180 28
        IOMARKER 4192 640 INW1(31:0) R180 28
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3936 560 3984 560
            WIRE 3984 400 4288 400
            WIRE 4288 400 4752 400
            WIRE 4752 400 4752 784
            WIRE 4752 784 4784 784
            WIRE 3984 400 3984 432
            WIRE 3984 432 3984 560
            BEGIN DISPLAY 4288 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3984 432 4080 432
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3968 496 4144 496
            WIRE 3968 496 3968 800
            WIRE 3968 800 4240 800
            WIRE 4080 432 4144 432
            WIRE 4144 432 4144 448
            WIRE 4144 448 4144 496
            BEGIN DISPLAY 4144 448 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemOut(31:0)
            WIRE 4688 864 4736 864
            WIRE 4736 848 4736 864
            WIRE 4736 848 4784 848
            BEGIN DISPLAY 4736 864 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4768 560 4784 560
            WIRE 4768 560 4768 656
            WIRE 4768 656 4768 720
            WIRE 4768 720 4784 720
            BEGIN DISPLAY 4768 656 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2736 1136 2800 1136
            WIRE 2736 1136 2736 1248
            WIRE 2736 1248 5216 1248
            WIRE 5168 720 5216 720
            WIRE 5216 720 5216 1008
            WIRE 5216 1008 5216 1248
            BEGIN DISPLAY 5216 1008 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4688 576 4912 576
            WIRE 4912 448 4912 576
        END BRANCH
        IOMARKER 4912 448 OUTW0(31:0) R270 28
        BEGIN INSTANCE U_Ctrl 2272 1904 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1936 1552 2032 1552
        BEGIN BRANCH Instr(31:26)
            WIRE 2032 1552 2112 1552
            WIRE 2112 1552 2272 1552
            BEGIN DISPLAY 2112 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 1872 2032 1872
        BEGIN BRANCH Instr(5:0)
            WIRE 2032 1872 2112 1872
            WIRE 2112 1872 2272 1872
            BEGIN DISPLAY 2112 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2656 1552 2688 1552
            WIRE 2688 1552 2768 1552
            BEGIN DISPLAY 2688 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2656 1616 2688 1616
            WIRE 2688 1616 2768 1616
            BEGIN DISPLAY 2688 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2656 1680 2704 1680
            WIRE 2704 1680 2784 1680
            BEGIN DISPLAY 2704 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2656 1744 2704 1744
            WIRE 2704 1744 2784 1744
            BEGIN DISPLAY 2704 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2656 1808 2720 1808
            WIRE 2720 1808 2800 1808
            BEGIN DISPLAY 2720 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2656 1872 2704 1872
            WIRE 2704 1872 2800 1872
            BEGIN DISPLAY 2704 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2656 1936 2688 1936
            WIRE 2688 1936 2800 1936
            BEGIN DISPLAY 2688 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Zero
            WIRE 592 368 592 1280
            WIRE 592 1280 1136 1280
            WIRE 1136 1280 3984 1280
            WIRE 592 368 624 368
            WIRE 3936 880 3984 880
            WIRE 3984 880 3984 1280
            BEGIN DISPLAY 1136 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 624 336 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH PC(31:0)
            WIRE 432 208 432 512
            WIRE 432 512 480 512
            WIRE 432 208 576 208
            WIRE 576 208 1136 208
            WIRE 1136 208 1136 512
            WIRE 480 304 624 304
            WIRE 480 304 480 384
            WIRE 480 384 480 400
            WIRE 480 400 480 512
            WIRE 1008 640 1120 640
            WIRE 1120 640 1120 736
            WIRE 1120 736 1120 896
            WIRE 1120 896 1136 896
            WIRE 1120 512 1136 512
            WIRE 1120 512 1120 640
            BEGIN DISPLAY 576 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1120 736 1216 736
        BEGIN BRANCH Branch
            WIRE 528 432 560 432
            WIRE 560 432 624 432
            BEGIN DISPLAY 560 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1936 1024 1840 1024
        BEGIN BRANCH Instr(15:0)
            WIRE 608 496 624 496
            WIRE 608 496 608 1024
            WIRE 608 1024 1296 1024
            WIRE 1296 1024 1840 1024
            BEGIN DISPLAY 1296 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
