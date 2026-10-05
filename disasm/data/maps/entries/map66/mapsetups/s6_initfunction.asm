
; ASM FILE data\maps\entries\map66\mapsetups\s6_initfunction.asm :
; 0x4FAEA..0x4FAEC : 

; =============== S U B R O U T I N E =======================================


ms_map66_InitFunction:
                chkFlg  ALLY_KAZIN             ; [CUSTOM] Set after Hawel's house events
                beq.s   @NoMusicChange
                script  cs_map66_UseNewbieMusic
				
@NoMusicChange:				
                rts

cs_map66_UseNewbieMusic:	playSound MUSIC_CUSTOM_NEWBIE_BATTLE		; Play newbie music for the very first part of the overworld, while Bowie's quest is to simply go fetch the old man
							csc_end


    ; End of function ms_map66_InitFunction

