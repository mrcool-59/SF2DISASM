
ms_map79_ZoneEvents:
                msZoneEvent 43, 18, Map79_ZoneEvent0-ms_map79_ZoneEvents
                msDefaultZoneEvent Map79_DefaultZoneEvent-ms_map79_ZoneEvents

Map79_ZoneEvent0:
				chkFlg	555				; Set after attempting to enter Sunny Cave
                bne.s   @Return
                chkFlg  31
                bne.s   @Return
                script  cs_CheckingSignScene
			@Return:
				setFlg	555				; Set after attempting to enter Sunny Cave
                rts

Map79_DefaultZoneEvent:
                rts

cs_CheckingSignScene:
				textCursor 	4320
				csWait		20
				setDest 	ALLY_PETER, 42, 18
				csWait		10
				setFacing 	ALLY_BOWIE,LEFT
				csWait		20
				setFacing 	ALLY_PETER,UP
				setFacing 	FOLLOWER_B,LEFT
                nextText 	$0,ALLY_PETER   	; "Wait! It says...{W1}"
				textCursor 	4318
				nextSingleText $0,ALLY_PETER   ; "I'm out, need to refill water{N} - {NAME;31}{W1}"
				setFacing 	ALLY_PETER,RIGHT
				shiver 		FOLLOWER_B
				textCursor 	4321
				nextSingleText $0,FOLLOWER_B   ; "I wonder who lives here.{W1}"
				nextSingleText $0,ALLY_PETER   ; "Let's come back later then.{W1}"
				nod 		ALLY_BOWIE
				csc_end
