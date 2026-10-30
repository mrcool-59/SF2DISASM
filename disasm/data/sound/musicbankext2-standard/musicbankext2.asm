
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_57
		dw Music_58
		dw Music_59
		dw Music_60
		include "music57.asm"	; [CUSTOM] BIG TROUBLE
		include "music58.asm"	; [CUSTOM] Lemon
		include "music59.asm"	; [CUSTOM] Final Battle
		include "music60.asm"	; [CUSTOM] Cozy Cave
