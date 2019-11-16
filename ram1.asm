;;bank 1 above 49152
SECTION BANK_01

; screens in the main binary

;;SECTION rodata_user
;;rodata == Read Only Data

PUBLIC _screen1
	_screen1:
		BINARY "screen1.bin"

PUBLIC _screen2
	_screen2:
		BINARY "screen2.bin"