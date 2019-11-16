;ram0.asm
;;bank 0 above 49152

SECTION BANK_00

PUBLIC _blackout1

_blackout2:

   ld hl, 22528
   ld (hl), 0
   push hl
   pop de
   inc de
   ld bc, 767
   ldir
   ret
   
   
   