; You can set here battlescene music override for specific player characters, ENABLE_ALLY_SPECIAL_MUSIC patch must be set to 1 for this table to have effect.
; Per-character music override will play if the character DOESN'T use an item, it will play for standard attacks and spells.
; Per-character music override has the highest priority if you also use support/spell music patches.

table_AllyBattlesceneMusics_Unpromoted:
                dc.b ALLY_SLADE, MUSIC_CUSTOM_VAPOR_TRAIL
                dc.b ALLY_PETER, MUSIC_CUSTOM_IXEN_UNPROMOTED ; Ixen
				dc.b ALLY_CHAZ, MUSIC_CUSTOM_NEWBIE_BATTLE
				dc.b ALLY_LEMON, MUSIC_CUSTOM_LEMON
				dc.b ALLY_31, MUSIC_UNUSED_REVIVE ; Sunny (it's actually the abridged version of her theme)
                tableEnd.b

table_AllyBattlesceneMusics_Promoted:
                dc.b ALLY_SLADE, MUSIC_CUSTOM_VAPOR_TRAIL
                dc.b ALLY_PETER, MUSIC_CUSTOM_IXEN_PROMOTED ; Ixen
				dc.b ALLY_CHAZ, MUSIC_CUSTOM_NEWBIE_BATTLE
				dc.b ALLY_LEMON, MUSIC_CUSTOM_LEMON
				dc.b ALLY_31, MUSIC_UNUSED_REVIVE ; Sunny (it's actually the abridged version of her theme)
				; NOTE: Kiwi special promotion has an hardcoded music that doesn't appear in this table
                tableEnd.b
