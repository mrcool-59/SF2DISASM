
; ASM FILE data\maps\entries\map75\mapsetups\s6_initfunction.asm :
; 0x50A08..0x50A0A : 

; =============== S U B R O U T I N E =======================================


ms_map75_InitFunction:
                chkFlg  999			; Play main theme while Nazca ship has not crashed yet
				beq.s   @NotCrashed
				script  cs_map75_UseCrashMusic
				bra.s   @Return
@NotCrashed:
                script  cs_map75_UseMainMusic
@Return:
                rts

cs_map75_UseCrashMusic: playSound MUSIC_CUSTOM_AIRSHIP
					    csc_end

cs_map75_UseMainMusic:	playSound MUSIC_MAIN_THEME
						csc_end

    ; End of function ms_map75_InitFunction

