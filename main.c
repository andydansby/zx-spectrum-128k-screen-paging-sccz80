//sccz80

//https://github.com/z88dk/z88dk/wiki/CallingConventions

#include <arch/zx.h>
#include <input.h>

//#include "compress.h"
#include <compress/aplib.h>

#include "ram6.h"
#include "ram0.h"
#include "ram1.h"



extern void __FASTCALL__ blackout(void);

extern void __FASTCALL__ bank(unsigned char ramBank);




void main(void)
{
	//in_pause(0);
	__asm
		di;pesky interupts need to be disabled
	__endasm
	
	
	zx_border(0);
   
	while (1)
	{
		bank(0);
		blackout();
		aplib_depack(16384,(unsigned char)screen0);
		in_pause(600);  // in milliseconds
		
		bank(1);
		blackout();
		aplib_depack(16384,(unsigned char)screen1);
		in_pause(600);  // in milliseconds
		
		blackout();
		aplib_depack(16384,(unsigned char)screen2);
		in_pause(600);  // in milliseconds		
		
		bank(6);
		blackout();
		aplib_depack(16384,(unsigned char)screen3);
		in_pause(600);  // in milliseconds
		
		blackout1();		
		aplib_depack(16384,(unsigned char)screen4);
		in_pause(600);  // in milliseconds
		blackout1();
		
		aplib_depack(16384,(unsigned char)screen5);
		in_pause(600);  // in milliseconds
		blackout1();
		
		aplib_depack(16384,(unsigned char)screen6);
		in_pause(600);  // in milliseconds

	}
}
