
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_52
		dw Music_52
		dw Music_52
		dw Music_52
		dw Music_52
		dw Music_52
		dw Music_52
		dw Music_52
		include "music52.asm"
