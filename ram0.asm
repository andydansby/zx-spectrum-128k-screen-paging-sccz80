;ram0.asm
;;bank 0 above 49152

SECTION BANK_00
org 0xc000;;believe this is assumed with target ZX
PUBLIC _blackout2

_blackout2:

   ld hl, 22528
   ld (hl), 0
   push hl
   pop de
   inc de
   ld bc, 767
   ldir
   ret
   
PUBLIC _screen0
	_screen0:
		BINARY "screen0.bin" 
   