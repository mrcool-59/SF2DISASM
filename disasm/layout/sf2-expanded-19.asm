
; GAME SECTION 19 : ROM EXPANSION.

		if (EXPANDED_MUSIC_BANKS=1)											; We must be exactly at $200000
			incbin "data\sound\musicbankext0.bin"							; Extra Music Banks 0, 1 and 2
			incbin "data\sound\musicbankext1.bin"
			incbin "data\sound\musicbankext2.bin"
		endif
		if (EXPANDED_PCM_BANKS=1)
			align $220000													; We must be exactly at $220000
			incbin "data\sound\pcmbankext0-standard.bin"					; Extra PCM Banks 0, 1, 2 and 3
			incbin "data\sound\pcmbankext1-standard.bin"
			incbin "data\sound\pcmbankext2-standard.bin"
			incbin "data\sound\pcmbankext3-standard.bin"
		endif
		
        include "data\graphics\maps\maptilesets\entries.asm"                ; Map Tilesets
        align
        include "data\graphics\battles\backgrounds\entries.asm"             ; Battlescene Backgrounds
        align
        include "data\graphics\battles\spells\invocations\entries.asm"      ; Invocation sprites
        align
        include "data\graphics\battles\tech\statusanimation\entries.asm"    ; Status effect animation tiles
        align
        include "data\graphics\battles\tech\battlescenetransition\entries.asm"  ; Battlescene transition tiles
        align
        include "data\graphics\battles\grounds\entries.asm"                     ; Battlescene Grounds
        align
        include "data\graphics\battles\spells\entries.asm"                      ; Spell Graphics
        conditionalAlign $400000
        objIfMemoryMapper $200000
        include "data\graphics\battles\battlesprites\enemies\entries.asm"   ; Enemy battlesprites
        align
        include "data\graphics\battles\battlesprites\allies\entries.asm"    ; Ally battlesprites
        align
        include "data\graphics\battles\weapons\entries.asm"                 ; Battlescene Weapons
        align
        include "data\graphics\battles\weapons\palettes\entries.asm"        ; Battlescene Weapon Palettes
        objendIfMemoryMapper
        conditionalAlign $600000, $400000
