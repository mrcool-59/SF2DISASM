
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_33
		dw Music_34
		dw Music_35
		dw Music_36
		dw Music_37
		dw Music_38
		dw Music_39
		dw Music_40
		dw Music_41
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		dw Music_64
		include "music33.asm"	; [CUSTOM] The First Battle / The Call of a Long Journey
		include "music34.asm"	; [CUSTOM] Silence / Entrance to the Demon World
		include "music35.asm"
		include "music36.asm"
		include "music37.asm"	; [CUSTOM] Self Discipline / Dwarf Dwarf Dwarf
		include "music38.asm"	; [CUSTOM] Final / The Bloodline of Ground Seal
		include "music39.asm"	; [CUSTOM] Last Area (Abridged) / The Caravan Proceeds
		include "music40.asm"	; [CUSTOM] Shop / Ancient Wings
		include "music41.asm"	; [CUSTOM] Choose your Path / Chosen Heroes
		include "music64.asm"
