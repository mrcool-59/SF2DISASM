
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_56
		dw Music_56
		dw Music_56
		dw Music_56
		dw Music_56
		dw Music_56
		dw Music_55
		dw Music_56
		include "music55.asm"	; [CUSTOM] Battlescene (Enemy) / Dark Force
		include "music56.asm"	; [CUSTOM] Battlescene / The Young Men of Granseal
