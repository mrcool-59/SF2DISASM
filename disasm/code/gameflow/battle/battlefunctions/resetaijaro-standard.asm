
; ASM FILE code\gameflow\battle\battlefunctions\resetaijaro-standard :
; 

; =============== S U B R O U T I N E =======================================

; Resets Jaro's stats, makes him leave the battle party and the Force,
;  and clears the flag indicating that he switched sides when leaving
;  battle 32 (en route to Moun) before completing it.

ResetAiJaro:      
                
                movem.w d0-d1,-(sp)
                compareToSavedByte #BATTLE_TO_MOUN, CURRENT_BATTLE
                bne.s   @Done
                
                move.w  #BATTLE_COMPLETED_FLAGS_START+BATTLE_TO_MOUN,d1
                jsr     CheckFlag
                bne.s   @Done
                
                move.w  #386,d1         ; Set during battle 32, after Jaro switches sides
                jsr     ClearFlag
                move.w  #ALLY_JARO,d0
                clr.w   d1
                
                pea     @Done(pc)
                pea     LeaveForce
                pea     LeaveBattleParty
                pea     UpdateCombatantStats
                pea     SetCurrentMp
                pea     GetMaxMp
                pea     SetCurrentHp
                pea     GetMaxHp
                jmp     SetStatusEffects
                
@Done:          movem.w (sp)+,d0-d1
                rts

    ; End of function ResetJaro


; This is pretty much the same idea as Jaro, except Sunny is never an enemy character.
; She actually appears as a guest in two battles: battle 4 and 45.
; To make things even more complicated, she has a temporary stat penalty for battle 4.

ResetAiSunny:      
                
                movem.w d0-d1,-(sp)
				
				; Run a different version of this hack while handling battle 4
                compareToSavedByte #BATTLE_AMBUSHED_BY_GALAM_SOLDIERS, CURRENT_BATTLE
                beq.s   @Execute_Battle4

				; Run this hack only while handling battle 45
                compareToSavedByte #BATTLE_INSIDE_SUNNY_CAVE, CURRENT_BATTLE
                bne.s   @Done
                
				; Disable this once the battle has been completed
				chkFlg	(BATTLE_COMPLETED_FLAGS_START+BATTLE_INSIDE_SUNNY_CAVE)
                bne.s   @Done
                
				; Always repeat battle 45 cutscene
				clrFlg  (BATTLE_INTRO_CUTSCENE_FLAGS_START+BATTLE_INSIDE_SUNNY_CAVE)
				bra.s	@Execute
				
			@Execute_Battle4:
				; Always repeat battle 4 cutscene
				clrFlg  (BATTLE_INTRO_CUTSCENE_FLAGS_START+BATTLE_AMBUSHED_BY_GALAM_SOLDIERS)
                
				; Restore Sunny stats
				chkFlg  558 			; Set after triggering Sunny's help in battle 4
				beq.s   @Execute		; Do not adjust stats if Sunny actually didn't join battle 4
				jsr		SetPlayerSunnyStats

			@Execute:
                move.w  #ALLY_31,d0
                clr.w   d1
                
                pea     @Done(pc)
                pea     LeaveForce
                pea     LeaveBattleParty
                pea     UpdateCombatantStats
                pea     SetCurrentMp
                pea     GetMaxMp
                pea     SetCurrentHp
                pea     GetMaxHp
                jmp     SetStatusEffects
                
@Done:          movem.w (sp)+,d0-d1
                rts

    ; End of function ResetAiSunny

