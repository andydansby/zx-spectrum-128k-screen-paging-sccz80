	copy loadscreen.scr loadscreen.bin
	
	bas2tap -a10 -sbologna loader.bas loader.tap
	bin2tap -o loadscreen.tap -a 16384 loadscreen.bin


	pasmo bankswitcher.asm bankswitcher.bin bankswitcher.sym
	bin2tap -o bankSW.tap -a 24100 bankswitcher.bin

copy /b loader.tap + loadscreen.tap + bankSW.tap

copy "loader.tap" "..\"
copy "bin2tap.exe" "..\"
	
	
rem clean up in this directory
del loadscreen.bin
del loadscreen.tap
del bankswitcher.bin
del loader.tap
del bankSW.tap

@rem pause
@rem cls
