
; ASM FILE data\maps\entries\map66\mapsetups\s6_initfunction.asm :
; 0x4FAEA..0x4FAEC : 

; =============== S U B R O U T I N E =======================================


ms_map66_InitFunction:
                chkFlg  ALLY_KAZIN    ; Play newbie music for the very first part of the overworld, while Bowie's quest is to simply go fetch Hawel
                beq.s   @NewbieMusic
                script  cs_map66_UseMainMusic
				bra.s   @Return
@NewbieMusic:
                script  cs_map66_UseNewbieMusic
@Return:				
                rts

cs_map66_UseNewbieMusic:	playSound MUSIC_CUSTOM_NEWBIE_BATTLE
							csc_end

cs_map66_UseMainMusic:		playSound MUSIC_MAIN_THEME
							csc_end

    ; End of function ms_map66_InitFunction

