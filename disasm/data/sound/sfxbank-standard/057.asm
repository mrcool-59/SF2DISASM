CSFX_0:		; [CUSTOM] Fire
		db 1	; SFX type
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_7
		dw CSFX_0_Channel_8
		dw CSFX_0_Channel_9

CSFX_0_Channel_7:
		channel_end
CSFX_0_Channel_8:
		psgInst 0
		vibrato 00h
		setRelease 0
		psgNoteL Ds5,36
		waitL 3
		channel_end
CSFX_0_Channel_9:
		psgInst 13
		setRelease 0
		psgNoteL 5,12
		psgInst 9
		psgNote  5
		psgInst 5
		psgNote  5
		waitL 3
		channel_end
