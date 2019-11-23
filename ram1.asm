;;bank 1 above 49152
SECTION BANK_01
org 0xc000;;believe this is assumed with target ZX
; screens in the main binary
PUBLIC _screen1
	_screen1:
		BINARY "screen1.bin"

PUBLIC _screen2
	_screen2:
		BINARY "screen2.bin"