
; ASM FILE data\maps\entries\map37\mapsetups\s6_initfunction.asm :
; 0x5FA88..0x5FAA4 : 

; =============== S U B R O U T I N E =======================================


ms_map37_InitFunction:
                
                jsr     InitializeNazcaShipForceMembers
                chkFlg  836             ; Set after the scene where Zynk stops you as you leave the Moun underground
                beq.s   @Return
                script  cs_5FA9C

@Return:
				script  cs_map37_SetMusicA
                rts

    ; End of function ms_map37_InitFunction

cs_5FA9C:       setPos ALLY_ZYNK,8,10,RIGHT
                csc_end

cs_map37_SetMusicA:	csWait 1
					playSound MUSIC_HEADQUARTERS
					csc_end