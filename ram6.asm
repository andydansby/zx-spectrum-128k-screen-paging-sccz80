SECTION BANK_06

; everything that follows is in bank 6

; void blackout1(void)
; preserves a

PUBLIC _blackout1

_blackout1:

   ld hl, 22528
   ld (hl), 0
   push hl
   pop de
   inc de
   ld bc, 767
   ldir
   ret

;;

PUBLIC _screen3
_screen3:
   BINARY "screen3.bin"

PUBLIC _screen4
_screen4:
   BINARY "screen4.bin"
   
PUBLIC _screen5
_screen5:
   BINARY "screen5.bin"
   
PUBLIC _screen6
_screen6:
   BINARY "screen6.bin"
