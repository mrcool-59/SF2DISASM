
; ASM FILE data\maps\entries\map02\mapsetups\s6_initfunction.asm :
; 0x5EAA6..0x5EAA8 : 

; =============== S U B R O U T I N E =======================================


ms_map2_InitFunction:
                
				chkFlg	555				; Set after attempting to enter Sunny Cave
                beq.s   @Return
                chkFlg  445				; Verify Inside Sunny Cave battle is unlocked
                beq.s   @Return
                chkFlg  556				; Set after being reminded to revisit Sunny Cave or attempting Inside Sunny Cave battle
                bne.s   @Return
                script  cs_RemindSunnyCave
				setFlg	556				; Set after being reminded to revisit Sunny Cave or attempting Inside Sunny Cave battle
			@Return:
                rts

    ; End of function ms_map2_InitFunction


cs_RemindSunnyCave:
                fadeInB
				textCursor 	4327
                nextSingleText 	$0,ALLY_PETER   ; "{LEADER}!...{D1} I'm curious about{N}the strange cave we found to{N}the east. We should revisit it!{W1}"
				csc_end
