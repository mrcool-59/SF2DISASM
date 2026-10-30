
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_33
		dw Music_34
		dw Music_35
		dw Music_44
		dw Music_37
		dw Music_38
		dw Music_39
		dw Music_40
		dw Music_64
		dw Music_42
		dw Music_43
		dw Music_44
		include "music33.asm"	; [CUSTOM] Important Battle
		include "music34.asm"	; [CUSTOM] Dungeon
		include "music35.asm"	; [CUSTOM] Mysterious
		include "music37.asm"	; [CUSTOM] Funny Dwarfs
		include "music38.asm"	; [CUSTOM] Guardia(na) Castle
		include "music39.asm"	; [CUSTOM] HQ
		include "music40.asm"	; [CUSTOM] Paradise City
		include "music41.asm"	; [CUSTOM] Choose a Path
		include "music42.asm"	; [CUSTOM] Newbie Battle
		include "music43.asm"	; [CUSTOM] Entering North Parmecia
		include "music44.asm"	; [CUSTOM] Military
