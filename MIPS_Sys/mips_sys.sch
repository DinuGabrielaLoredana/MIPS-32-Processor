VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL AN(3:0)
        SIGNAL a
        SIGNAL b
        SIGNAL c
        SIGNAL d
        SIGNAL e
        SIGNAL f
        SIGNAL g
        SIGNAL Clk
        SIGNAL BTN0
        SIGNAL SWA(3:0)
        SIGNAL SWB(3:0)
        SIGNAL INW1(31:0)
        SIGNAL INW0(31:0)
        SIGNAL OUTW(31:0)
        PORT Output AN(3:0)
        PORT Output a
        PORT Output b
        PORT Output c
        PORT Output d
        PORT Output e
        PORT Output f
        PORT Output g
        PORT Input Clk
        PORT Input BTN0
        PORT Input SWA(3:0)
        PORT Input SWB(3:0)
        BEGIN BLOCKDEF iface_s3
            TIMESTAMP 2013 12 7 18 41 20
            RECTANGLE N 64 -64 400 512 
            RECTANGLE N 0 388 64 412 
            LINE N 0 400 64 400 
            RECTANGLE N 0 468 64 492 
            LINE N 0 480 64 480 
            RECTANGLE N 400 468 464 492 
            LINE N 464 480 400 480 
            LINE N 0 320 64 320 
            RECTANGLE N 400 244 464 268 
            LINE N 464 256 400 256 
            RECTANGLE N 400 308 464 332 
            LINE N 464 320 400 320 
            LINE N 464 128 400 128 
            LINE N 464 192 400 192 
            RECTANGLE N 0 -44 64 -20 
            LINE N 0 -32 64 -32 
            LINE N 0 272 64 272 
            LINE N 0 224 64 224 
            LINE N 0 176 64 176 
            LINE N 0 128 64 128 
            LINE N 0 80 64 80 
            LINE N 0 32 64 32 
            BEGIN LINE N 72 364 396 364 
                LINESTYLE Dash
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF mips
            TIMESTAMP 2018 4 24 12 50 46
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK u_iface iface_s3
            PIN INW1(31:0) INW1(31:0)
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW(31:0)
            PIN g g
            PIN SWB(3:0) SWB(3:0)
            PIN SWA(3:0) SWA(3:0)
            PIN BTN0 BTN0
            PIN Clk Clk
            PIN AN(3:0) AN(3:0)
            PIN f f
            PIN e e
            PIN d d
            PIN c c
            PIN b b
            PIN a a
        END BLOCK
        BEGIN BLOCK u_mips mips
            PIN CLK Clk
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN OUTW0(31:0) OUTW(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE u_iface 1376 560 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE u_mips 1408 1440 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH AN(3:0)
            WIRE 1344 528 1376 528
        END BRANCH
        IOMARKER 1344 528 AN(3:0) R180 28
        BEGIN BRANCH a
            WIRE 1344 592 1376 592
        END BRANCH
        IOMARKER 1344 592 a R180 28
        BEGIN BRANCH b
            WIRE 1344 640 1376 640
        END BRANCH
        IOMARKER 1344 640 b R180 28
        BEGIN BRANCH c
            WIRE 1344 688 1376 688
        END BRANCH
        IOMARKER 1344 688 c R180 28
        BEGIN BRANCH d
            WIRE 1344 736 1376 736
        END BRANCH
        IOMARKER 1344 736 d R180 28
        BEGIN BRANCH e
            WIRE 1344 784 1376 784
        END BRANCH
        IOMARKER 1344 784 e R180 28
        BEGIN BRANCH f
            WIRE 1344 832 1376 832
        END BRANCH
        IOMARKER 1344 832 f R180 28
        BEGIN BRANCH g
            WIRE 1344 880 1376 880
        END BRANCH
        IOMARKER 1344 880 g R180 28
        BEGIN BRANCH Clk
            WIRE 1840 688 1872 688
        END BRANCH
        IOMARKER 1872 688 Clk R0 28
        BEGIN BRANCH BTN0
            WIRE 1840 752 1872 752
        END BRANCH
        IOMARKER 1872 752 BTN0 R0 28
        BEGIN BRANCH SWA(3:0)
            WIRE 1840 816 1872 816
        END BRANCH
        IOMARKER 1872 816 SWA(3:0) R0 28
        BEGIN BRANCH SWB(3:0)
            WIRE 1840 880 1872 880
        END BRANCH
        IOMARKER 1872 880 SWB(3:0) R0 28
        BEGIN BRANCH Clk
            WIRE 1328 1280 1392 1280
            WIRE 1392 1280 1408 1280
            BEGIN DISPLAY 1392 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 880 960 1376 960
            WIRE 880 960 880 1120
            WIRE 880 1120 880 1424
            WIRE 880 1424 896 1424
            WIRE 896 1408 1408 1408
            WIRE 896 1408 896 1424
            BEGIN DISPLAY 880 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 1008 1040 1376 1040
            WIRE 1008 1040 1008 1264
            WIRE 1008 1264 1008 1344
            WIRE 1008 1344 1408 1344
            BEGIN DISPLAY 1008 1264 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW(31:0)
            WIRE 1792 1280 1856 1280
            WIRE 1840 1040 1856 1040
            WIRE 1856 1040 1856 1152
            WIRE 1856 1152 1856 1280
            BEGIN DISPLAY 1856 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
