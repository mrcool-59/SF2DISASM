
   cpu z80
   listing off
   phase	0
   include "..\macros.asm"
   include "..\enums.asm"
   org 08000h

		dw Music_32
		dw Music_2
		dw Music_3
		dw Music_4
		dw Music_5
		dw Music_32
		dw Music_7
		dw Music_32
		dw Music_9
		dw Music_10
		dw Music_11
		dw Music_12
		dw Music_13
		dw Music_14
		dw Music_15
		dw Music_16
		dw Music_17
		dw Music_18
		dw Music_19
		dw Music_20
		dw Music_21
		dw Music_22
		dw Music_23
		dw Music_24
		dw Music_25
		dw Music_26
		dw Music_27
		dw Music_28
		dw Music_29
		dw Music_30
		dw Music_31
		dw Music_32
		include "music02.asm"	; [CUSTOM] Unpromoted Attack / The Young Men of Granseal
		include "music03.asm"	; [CUSTOM] Promoted Attack / Fight, with the Ancient Light
		include "music05.asm"	; [CUSTOM] Enemy Attack / Dark Force
		include "music07.asm"
		include "music09.asm"
		include "music10.asm"
		include "music11.asm"
		include "music12.asm"
		include "music14.asm"	; [CUSTOM] Goddess / Dreaming Elis
		include "music15.asm"
		include "music16.asm"
		include "music17.asm"
		include "music18.asm"
		include "music19.asm"	; [CUSTOM] Jingle Join / Joined the Party
		include "music20.asm"
		include "music21.asm"	; [CUSTOM] Jingle Save / Save
		include "music22.asm"	; [CUSTOM] Jingle Cure / Antidote
		include "music23.asm"
		include "music24.asm"	; [CUSTOM] Jingle Revive / Revival
		include "music25.asm"	; [CUSTOM] Jingle Promotion / Promotion
		include "music26.asm"
		include "music27.asm"	; [CUSTOM] Jingle Item / It's a Treasure Chest!
		include "music28.asm"
		include "music29.asm"	; [CUSTOM] Desert City
		include "music30.asm"	; [CUSTOM] Seaside City
		include "music31.asm"	; [CUSTOM] Promoted Healing
		include "music32.asm"
