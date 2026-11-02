
; ASM FILE data\maps\entries\map23\mapsetups\s6_initfunction.asm :
; 0x59C04..0x59C06 : 

; =============== S U B R O U T I N E =======================================


ms_map23_InitFunction:
                
				chkFlg 	30
				beq.s 	@PeterNotJoined
                script 	cs_map23_HidePeter
@PeterNotJoined:
                rts


cs_map23_HidePeter:
				hide 	ALLY_30
				csc_end


    ; End of function ms_map23_InitFunction

