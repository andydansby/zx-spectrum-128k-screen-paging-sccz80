#ifndef COMPRESS_H
#define COMPRESS_H

// rom interrupts must be disabled while depacking

extern void __FASTCALL__ unpack(unsigned int src, unsigned int dst);

extern void __FASTCALL__ unpack_RAMn(unsigned char n, unsigned int src, unsigned int dst);
//__z88dk_callee is invalid on sccz80


#endif
