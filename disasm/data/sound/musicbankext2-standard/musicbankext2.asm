
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_61
		dw Music_62
		dw Music_63
		dw Music_64
		include "music61.asm"	; [CUSTOM] Galaxy Force II / Legend of Light
		include "music62.asm"	; [CUSTOM] Shrine (Abridged) / Dreaming Elis
		include "music63.asm"	; [CUSTOM] Vapor Trail
		include "music64.asm"
