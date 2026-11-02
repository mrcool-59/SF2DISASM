
; ASM FILE data\maps\entries\map37\mapsetups\s2_entityevents_999.asm :
; 0x5F9D2..0x5FA22 : 
ms_map37_flag999_EntityEvents:
                msEntityEvent ALLY_ZYNK, UP, Map37_3E7_EntityEvent0-ms_map37_flag999_EntityEvents
byte_5F9D6:     msEntityEvent 128, UP, Map37_3E7_EntityEvent1-ms_map37_flag999_EntityEvents
                msEntityEvent 129, RIGHT, Map37_3E7_EntityEvent2-ms_map37_flag999_EntityEvents
                msEntityEvent ALLY_PETER, UP, Map37_3E7_EntityEvent3-ms_map37_flag999_EntityEvents
				msEntityEvent ALLY_30, UP, Map37_3E7_EntityEvent4-ms_map37_flag999_EntityEvents
				msEntityEvent ALLY_31, UP, Map37_3E7_EntityEvent5-ms_map37_flag999_EntityEvents
                msDefaultEntityEvent Map37_DefaultEntityEvent-ms_map37_flag999_EntityEvents

; =============== S U B R O U T I N E =======================================


Map37_DefaultEntityEvent:
                
                moveq   #4,d6
                jsr     (GenerateRandomNumber).w
                move.w  #$EAC,d0
                add.w   d7,d0 ; Uuhhh....{W1}
                              ; Oh, my twinkling stars....{W1}
                              ; What a ride!{W1}
                              ; Ouch!  Oh....{W1}
                jsr     (DisplayText).w 
Map37_3E7_EntityEvent2:
                
                rts

    ; End of function Map37_DefaultEntityEvent


; =============== S U B R O U T I N E =======================================


Map37_3E7_EntityEvent0:
                
                 
                txt     3364            ; "Was it...too wild?{W1}"
                rts

    ; End of function Map37_3E7_EntityEvent0


; =============== S U B R O U T I N E =======================================


Map37_3E7_EntityEvent1:
                
                 
                chkFlg  257             ; TEMP FLAG #01
                bne.s   return_5FA0E
                script  cs_5FB30
                setFlg  257             ; TEMP FLAG #01
return_5FA0E:
                
                rts

    ; End of function Map37_3E7_EntityEvent1


; =============== S U B R O U T I N E =======================================


Map37_3E7_EntityEvent3:
                
                 
                chkFlg  257             ; TEMP FLAG #01
                bne.s   byte_5FA1C      
                txt     3363            ; "{LEADER}, come on!{W1}"
                bra.s   return_5FA20
byte_5FA1C:
                
                txt     3370            ; "We must finish our{N}preparations before Geshp{N}finds us.{W1}"
return_5FA20:
                
                rts

    ; End of function Map37_3E7_EntityEvent3


; -----------------------------------


Map37_3E7_EntityEvent4:
                txt     4281            ; "For some reason, I had{N}a nightmare a few days ago{N}of this happening...{W1}"
                rts
				
Map37_3E7_EntityEvent5:
                txt     4282            ; "Aww... come on!{N}It wasn't that bad of a landing!{W1}"
				
				chkFlg	552				; Set after talking to Sunny once in Nazca Ship
				bne.s	@Return
				
				clsTxt
				txt		4314			; "Oh {LEADER}!{N}I have a small request...{W1}"
				txt		4315			; "I am working on a little thing{N}for {NAME;7}.{W2}{CLEAR}I mean, it's not ready yet,{N}but please come see me when{N}we get another chance to rest.{W2}{N}I'll give it to you then!{N}Don't forget it!{W1}"
				setFlg	552				; Set after talking to Sunny once in Nazca Ship
			@Return:
				rts
