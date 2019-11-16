#pragma output CRT_ORG_CODE = 24450
// main binary program start

#pragma output REGISTER_SP = 0xc000
// keep stack out of top 16k

#pragma output CRT_ON_EXIT = 0x10001
// halt on program exit

#pragma output CLIB_MALLOC_HEAP_SIZE = 0
// no heap

#pragma output CLIB_STDIO_HEAP_SIZE = 0
// no heap for opening files


#pragma output __MMAP	= -1
// memory map is provided in file "mmap.inc"-1