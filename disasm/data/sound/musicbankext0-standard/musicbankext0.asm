
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_45
		dw Music_46
		dw Music_47
		dw Music_50
		dw Music_49
		dw Music_50
		include "music45.asm"	; [CUSTOM] Ixen Unpromoted
		include "music46.asm"	; [CUSTOM] Ixen Promoted
		include "music47.asm"	; [CUSTOM] Airship
		include "music49.asm"	; [CUSTOM] Cha-La
		include "music50.asm"	; [CUSTOM] Unpromoted Healing
