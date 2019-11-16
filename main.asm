


; void blackout(void)
; preserves a
SECTION code_user
	PUBLIC _blackout
	_blackout:
	   ld hl, 22528
	   ld (hl), 0
	   push hl
	   pop de
	   inc de
	   ld bc, 767
	   ldir   
	ret






;;SECTION code_user
;;	PUBLIC _switchScreen
;;	_switchScreen:
;;	   ld a,($5b5c)   ;//System variable with the previous value
;;	   xor   8			;//Change screen
;;	   ld bc,$7ffd		;//Port to write
;;	   di				;//disable interupts
;;	   ld ($5b5c),a		;//Update system variable
;;	   out   (c),a		;//Address
;;	   ei				;//enable interupts
;;   ret


; void bank(unsigned char ramBank)
; fastcall linkage
; preserves de,hl
SECTION code_crt_common   ; keep it early in the binary
	PUBLIC _bank
	_bank:
		ld a,(0x5b5c)   ;//System variable with the previous value
		and 0xf8
		or L
		ld bc,0x7ffd		;//Port to write
		;;di
		ld (0x5b5c),a		;//Update system variable
		out   (c),a		;//Address
		;;ei				;//enable interupts
	ret

;;c:\z88dk_1.6\GENESIS\offical release src\rambanks.asm
; B: new RAM page to put in $C000 - $FFFF
; We assume interruptions disabled, ojito!!!!!!
;	setrambank:	ld a, (23388)		; System variable with the previous value
;	and $f8			; keep high bits
;	or b			; we put page B above
;	ld bc, $7ffd		; Port in which to write
;	ld	(23388),a	;Update system variable
;	out	(c),a		;Address
;	ret	

;c:\z88dk_1.6\GENESIS\offical release src\diskload.asm
; INPUT: B: page to set 
;setrambank:
;       di
;       ld A, ($5B5C)
;       and $E8
;       or b
;       ld BC, $7FFD
;       ld ($5b5c), a   ; save in the BASIC variable
;       out (c), a
;       ei
;       ret





;;SECTION code_crt_common   ; keep it early in the binary
;;	PUBLIC _bank
;	_bank:
;	   ld a,($5b5c)   ;//System variable with the previous value
;	   and $f8
;	   or L
;	   ld bc,$7ffd		;//Port to write
;	   di
;	   ld ($5b5c),a		;//Update system variable
;	   out   (c),a		;//Address
;	   ei				;//enable interupts
;   ret

;PUBLIC _zx_isr