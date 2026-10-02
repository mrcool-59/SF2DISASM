; Specify here the list of battle map musics that should keep playing during battlescenes.
; The list must end with a zero value.

; Tip: use this sparingly, keep it for major set pieces, such as sad battle musics after a character death or final battle music.

table_UninterruptibleMusics:
	dc.b	MUSIC_BOSS_ATTACK
	dc.b	MUSIC_CUSTOM_BOSS_BATTLE
	dc.b	MUSIC_FINAL_BATTLE
	dc.b	MUSIC_CUSTOM_VAPOR_TRAIL
	dc.b    MUSIC_CUSTOM_IXEN_PROMOTED
	dc.b	0	; End