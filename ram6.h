#ifndef RAM6_H
#define RAM6_H

// located in bank 6

extern unsigned char screen3[];
extern unsigned char screen4[];
extern unsigned char screen5[];
extern unsigned char screen6[];

//extern void blackout1(void) __preserves_regs(a);
extern void __FASTCALL__ blackout1();

//__preserves_regs(a) is invalid on sccz80
//extern void __LIB__ z80_delay_tstate(uint16_t tstates) __smallc __z88dk_fastcall;//sccz80
/*
Fastcall linkage allows one parameter to be passed by register in a subset of DEHL.  So if the parameter is 8-bit, the value will be in L.  If the parameter is 16-bit, the value is in HL and if it is 32-bit the value is in DEHL.  This is the one you want for beepfx.*/

#endif
