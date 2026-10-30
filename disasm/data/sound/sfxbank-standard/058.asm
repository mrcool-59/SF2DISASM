CSFX_1:		; [CUSTOM] Item Drop
		db 1	; SFX type
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_9
		dw CSFX_1_Channel_8
		dw CSFX_1_Channel_9

CSFX_1_Channel_8:
		psgInst 111
		vibrato 00h
		setRelease 1
		psgNoteL F6,4
		psgNote  G6
		psgNote  A6
		psgNoteL C7,6
		psgInst 103
		psgNote  C7
		psgInst 102
		psgNote  C7
		psgInst 101
		psgNote  C7
		psgInst 100
		psgNote  C7
		psgInst 99
		psgNote  C7
		psgInst 98
		psgNote  C7
		wait
		channel_end
CSFX_1_Channel_9:
		channel_end
