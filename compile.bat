REM sccz80
SET PATH=c:\z88dk199b;c:\z88dk199b\bin;c:\z88dk199b\lib\;c:\z88dk199b\lib\clibs;c:\z88dk199b\lib\config;C:\Program Files\SDCC\bin 

cls

cd gfx
	apack c screen1.scr screen1.bin
	apack c screen2.scr screen2.bin
	apack c screen3.scr screen3.bin
	apack c screen4.scr screen4.bin
	apack c screen5.scr screen5.bin
	apack c screen6.scr screen6.bin
	move "*.bin" "..\"
cd ..

@rem pause
@rem cls

cd utils
	call loader.bat
@rem	copy /b loader.tap + loadscreen.tap + bank.tap
cd ..

@rem pause
@rem cls

rem BUILD CONSOLIDATED OBJECT FILE
zcc +zx -v -c -clib=new --fsigned-char -o objects @zproject.lst



zcc +zx -v -m -startup=31 -clib=new objects.o  -o compiled -pragma-include:zpragma.inc



@rem zcc +zx -vn -m -startup=31 -clib=sdcc_iy -SO3 --max-allocs-per-node200000 @zproject.lst -pragma-include:zpragma.inc -o test.bin

appmake +zx -b compiled_BANK_06.bin -o bank06.tap --org 49152 --noloader

appmake +zx -b compiled_BANK_00.bin -o bank00.tap --org 49152 --noloader

appmake +zx -b compiled_BANK_01.bin -o bank01.tap --org 49152 --noloader

appmake +zx -b compiled_CODE.bin -o lowRAM.tap --org 24450 --noloader






@rem pause
@rem cls


copy /b loader.tap + bank00.tap + bank01.tap +bank06.tap + lowRAM.tap  1output.tap

echo off

call cleanup.bat



