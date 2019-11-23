@rem cleanup.bat
echo off
@rem  test_CODE.bin  REM BINARY to launch
del zcc_proj.lst
del screen0.bin
del screen1.bin
del screen2.bin
del screen3.bin
del screen4.bin
del screen5.bin
del screen6.bin
del zcc_opt.def

@rem pause

del compiled
del compiled_BANK_06.bin
del compiled_BANK_00.bin
del compiled_BANK_01.bin
del compiled_CODE.bin



move "compiled.map" "maps\"
move "objects.o" "maps\"

move bank00.tap taps
move bank01.tap taps
move bank06.tap taps
move lowRAM.tap taps
move loader.tap taps

cd maps
	echo on
	z80nm objects.o
	echo off
cd ..