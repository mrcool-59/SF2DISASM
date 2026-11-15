
; ASM FILE data\maps\entries\map05\mapsetups\s3_zoneevents.asm :
; 0x51C22..0x51C28 : 
ms_map5_ZoneEvents:
				msZoneEvent 24, 11, Map5_ZoneEvent0-ms_map5_ZoneEvents
                msDefaultZoneEvent Map5_DefaultZoneEvent-ms_map5_ZoneEvents

; =============== S U B R O U T I N E =======================================

Map5_ZoneEvent0:
				chkFlg	650				; Set after event at Hawel's house
                bne.s   @Return
				chkFlg	557				; Set after meeting Sunny in Yeel
                bne.s   @Return
                script  cs_MeetingSunnyScene
				setFlg	557				; Set after meeting Sunny in Yeel
			@Return:
                rts

    ; End of function Map5_ZoneEvent0


Map5_DefaultZoneEvent:
                
                rts

    ; End of function Map5_DefaultZoneEvent


cs_MeetingSunnyScene:
                entityActionsWait ALLY_SARAH
                 moveLeft 1
				 moveUp	5
				 moveRight 1
				 moveUp 3
				 moveLeft 1
				 faceUp 1
                endActions

				textCursor 		4344
				nextText 		$0,ALLY_SARAH   ; "{LEADER}, look!...{W2}"
				
				playSound		SOUND_COMMAND_FADE_OUT
				shiver			ALLY_31
				setFacing 		ALLY_31,LEFT
				csWait 15
				setFacing 		ALLY_31,DOWN
				csWait 30
				
				setFacing 		ALLY_BOWIE,RIGHT
				jumpIfFlagClear 72,@NoKazin		; In case player has talked to Kazin before triggering this cutscene
				setFacing		ALLY_KAZIN,RIGHT
			@NoKazin:
				
                entityActionsWait ALLY_31
                 moveDown 3
				 faceLeft 1
                endActions
				
				setFacing 		ALLY_SARAH,RIGHT
				
				nextSingleText 	$0,ALLY_SARAH   ; "{N}Wow! It's not everyday you{N}see a dragon.{W1}"
				playSound		MUSIC_CUSTOM_COZY_CAVE
				nextText 		$80,ALLY_31   	; "Hi kids, I'm {NAME;31}!{W2}"
				shiver			ALLY_31
				nextSingleText 	$80,ALLY_31   	; "I feel uncomfortable around{N}big crowds. I prefer to stay{N}in a quiet spot.{W1}"
				
                setActscript 	ALLY_SARAH,eas_Jump
				nextSingleText 	$0,ALLY_SARAH   ; "I'm {NAME;1} and this is {LEADER}!{N}Are you visiting Grans Island?{W1}"
				
				shiver			ALLY_31
				nextText 		$80,ALLY_31   	; "Yeah, but I don't like it very{N}much. I was about to leave.{W1}"
				shiver			ALLY_31
				nextText 		$80,ALLY_31   	; "Actually... {D1}I'm trying to find a{N}great spot for my home.{W2}"
                setActscript 	ALLY_31,eas_Jump
				nextSingleText 	$80,ALLY_31   	; "Mountains near a desert would{N}be perfect! Can I find this{N}around here?{W1}"
				
				shiver			ALLY_SARAH
				nextSingleText 	$0,ALLY_SARAH   ; "Hmm... {D1}I'm not sure you'll find{N}this on Grans... {D1}Maybe north?{W2}{N}I never went to this part of{N}the island.{W1}"
				
				nod				ALLY_BOWIE
				csWait			20
				shiver			ALLY_BOWIE
				csWait			20
				shiver			ALLY_31
				
				nextText 		$80,ALLY_31   	; "Look around some more?{W2}"
				shiver			ALLY_31
				nextSingleText 	$80,ALLY_31   	; "...{D1}I dunno...{D1}I guess I can stay{N}around a bit longer...{D1} {D1}...{W1}"
				csWait			20
                setActscript 	ALLY_31,eas_Jump
				nextText 		$80,ALLY_31   	; "Well, in any case, it was fun{N}meeting you kids!{W1}"
				playSound		SOUND_COMMAND_FADE_OUT
				nod				ALLY_31
				nextSingleText 	$80,ALLY_31   	; "Maybe we'll meet again.{N}Take care!{W1}"
				
				nod				ALLY_SARAH
				nod				ALLY_BOWIE
				
				playSound		MUSIC_TOWN

                entityActionsWait ALLY_31
                 moveUp 3
                endActions
				
                entityActions ALLY_SARAH
				 moveRight 1
				 moveDown 3
				 moveLeft 1
				 moveDown 5
				 moveRight 1
				 faceLeft 1
                endActions
				
				csc_end
