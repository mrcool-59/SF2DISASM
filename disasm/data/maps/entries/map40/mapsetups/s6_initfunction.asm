
; ASM FILE data\maps\entries\map40\mapsetups\s6_initfunction.asm :
; 0x53FCA..0x53FE0 : 

; =============== S U B R O U T I N E =======================================


ms_map40_InitFunction:
                
                 
                chkFlg  507             ; Battle 7 completed - BATTLE_VERSUS_DARK_SMOKES           
                beq.s   @CheckGalamInvasion
                script  cs_EarthquakeMusic
				bra.s   @Return
@CheckGalamInvasion:
                chkFlg	506             ; Battle 6 completed
                beq.s   @Return
				script  cs_GransealInvasionTowerExteriorMusic
@Return:
                rts

    ; End of function ms_map40_InitFunction

cs_GransealInvasionMusic:
				jumpIfFlagClear 620,@Sad
				playSound MUSIC_CUSTOM_MILITARY
				jump @Done
			@Sad:
				playSound MUSIC_SAD_THEME_2
			@Done:
                fadeInB
				csc_end

cs_GransealInvasionTowerExteriorMusic:
				playSound MUSIC_BATTLE_THEME_1
                fadeInB
				csc_end

cs_EarthquakeMusic:
                playSound MUSIC_BOSS_ATTACK
                fadeInB
                csc_end
