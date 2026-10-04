
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_48
		dw Music_34
		dw Music_48
		dw Music_48
		dw Music_37
		dw Music_48
		dw Music_39
		dw Music_40
		dw Music_64
		dw Music_42
		dw Music_43
		dw Music_48
		dw Music_45
		dw Music_46
		dw Music_47
		dw Music_48
		include "music34.asm"	; [CUSTOM] Dungeon / Entrance to the Demon World
		include "music37.asm"	; [CUSTOM] Funny Dwarfs / Dwarf Dwarf Dwarf
		include "music39.asm"	; [CUSTOM] HQ / The Caravan Proceeds
		include "music40.asm"	; [CUSTOM] Paradise City / Ancient Wings
		include "music41.asm"	; [CUSTOM] Choose a Path
		include "music42.asm"	; [CUSTOM] Newbie Battle
		include "music43.asm"	; [CUSTOM] Entering North Parmecia
		include "music45.asm"	; [CUSTOM] Ixen Unpromoted
		include "music46.asm"	; [CUSTOM] Ixen Promoted
		include "music47.asm"	; [CUSTOM] Airship
		include "music48.asm"	; [CUSTOM] Military / The Bloodline of Ground Seal
