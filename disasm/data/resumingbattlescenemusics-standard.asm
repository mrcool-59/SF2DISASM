; Specify here the list of musics that should enable resuming when they are used in battlescenes.
; Keep in mind that music resuming will only work if consecutive battlescenes use the same music. Otherwise, the music will play from the beginning.
; The list must end with a zero value.

; Tip: add all musics with long, rewarding buildups and exclude musics that are intense from the start.

table_ResumingBattlesceneMusics:
	dc.b	MUSIC_ENEMY_ATTACK
	dc.b	MUSIC_PROMOTED_ATTACK
	dc.b	MUSIC_CUSTOM_UNPROMOTED_HEALING
	dc.b	MUSIC_CUSTOM_UNPROMOTED_SPELL
	dc.b	0	; End