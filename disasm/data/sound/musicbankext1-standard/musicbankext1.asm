
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
		include "music57.asm"	; [CUSTOM] Intense Battle / The Call of a Long Journey
		include "music58.asm"	; [CUSTOM] Evil Lair / Entrance to the Demon World
		include "music59.asm"	; [CUSTOM] Obviously Town Theme / A Peaceful Moment
		include "music60.asm"	; [CUSTOM] Final (Robotnik BM) / Roar of the King of Devils
