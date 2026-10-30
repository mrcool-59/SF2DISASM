
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_51
		dw Music_52
		dw Music_53
		dw Music_54
		dw Music_55
		dw Music_56
		include "music51.asm"	; [CUSTOM] Enemy Healing
		include "music52.asm"	; [CUSTOM] Unpromoted Spell
		include "music53.asm"	; [CUSTOM] Promoted Spell
		include "music54.asm"	; [CUSTOM] Enemy Spell
		include "music55.asm"	; [CUSTOM] Sunny
		include "music56.asm"	; [CUSTOM] New Continent To Discover
