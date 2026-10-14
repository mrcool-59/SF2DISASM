
; ASM FILE data\maps\entries\map75\mapsetups\s6_initfunction.asm :
; 0x50A08..0x50A0A : 

; =============== S U B R O U T I N E =======================================


ms_map75_InitFunction:
                
                chkFlg 999
				bne.s @Skip
				script cs_map75_SetMusic
@Skip:
                rts

    ; End of function ms_map75_InitFunction


cs_map75_SetMusic:	csWait 1
					playSound MUSIC_MAIN_THEME		; Play main theme while Nazca ship has not crashed yet
					csc_end
