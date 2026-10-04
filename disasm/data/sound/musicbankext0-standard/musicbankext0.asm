
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_49
		dw Music_50
		dw Music_51
		dw Music_52
		dw Music_53
		dw Music_54
		dw Music_56
		dw Music_56
		include "music49.asm"	; [CUSTOM] Mysterious / A Message from Ancient Times
		include "music50.asm"	; [CUSTOM] Unpromoted Healing
		include "music51.asm"	; [CUSTOM] Enemy Healing
		include "music52.asm"	; [CUSTOM] Unpromoted Spell
		include "music53.asm"	; [CUSTOM] Promoted Spell
		include "music54.asm"	; [CUSTOM] Enemy Spell
		include "music56.asm"	; [CUSTOM] New Continent To Discover
