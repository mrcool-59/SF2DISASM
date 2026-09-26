
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_56
		dw Music_50
		dw Music_51
		dw Music_52
		dw Music_53
		dw Music_54
		dw Music_55
		dw Music_56
		include "music50.asm"	; [CUSTOM] Military / The Bloodline of Ground Seal
		include "music51.asm"	; [CUSTOM] Mysterious / A Message from Ancient Times
		include "music52.asm"	; [CUSTOM] Enemy Healing
		include "music53.asm"	; [CUSTOM] Healing
		include "music54.asm"	; [CUSTOM] Last Area (Abridged)
		include "music55.asm"	; [CUSTOM] Battlescene (Enemy) / Dark Force
		include "music56.asm"	; [CUSTOM] Battlescene / The Young Men of Granseal
