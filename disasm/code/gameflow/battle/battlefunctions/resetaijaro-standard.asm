
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
				jsr		AddSunnyStats

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


AddOrSubtractStats:		; in: d0.w = ally index
						;	  d1.w = 1 if adding, 0 if subtracting
						;	  a0 = address of stats table
	tst.w	d1
	beq.s	@Subtract

@Add:
	jsr   	GetLevel
	add.b   (a0)+,d1
	jsr   	SetLevel

	jsr   	GetMaxHp
	add.b   (a0)+,d1
	jsr   	SetMaxHp
	jsr   	SetCurrentHp

	jsr   	GetMaxMp
	add.b   (a0)+,d1
	jsr   	SetMaxMp
	jsr   	SetCurrentMp

	jsr   	GetBaseAtt
	add.b   (a0)+,d1
	jsr   	SetBaseAtt

	jsr   	GetBaseDef
	add.b   (a0)+,d1
	jsr   	SetBaseDef

	jsr   	GetBaseAgi
	sub.w   #128,d1	; Remove double turn
	add.b   (a0)+,d1
	jsr   	SetBaseAgi
	
	jsr   	GetBaseMov
	add.b   (a0)+,d1
	jsr   	SetBaseMov
	
	bra.s	@Done

@Subtract:
	jsr   	GetLevel
	sub.b   (a0)+,d1
	jsr   	SetLevel

	jsr   	GetMaxHp
	sub.b   (a0)+,d1
	jsr   	SetMaxHp
	jsr   	SetCurrentHp

	jsr   	GetMaxMp
	sub.b   (a0)+,d1
	jsr   	SetMaxMp
	jsr   	SetCurrentMp

	jsr   	GetBaseAtt
	sub.b   (a0)+,d1
	jsr   	SetBaseAtt

	jsr   	GetBaseDef
	sub.b   (a0)+,d1
	jsr   	SetBaseDef

	jsr   	GetBaseAgi
	sub.b   (a0)+,d1
	add.w   #128,d1	; Add double turn
	jsr   	SetBaseAgi

	jsr   	GetBaseMov
	sub.b   (a0)+,d1
	jsr   	SetBaseMov

@Done:
	jmp		UpdateCombatantStats


AddSunnyStats:
	move.w	#ALLY_31,d0
	move.w	#1,d1
	lea		table_AiSunnyStats(pc),a0
	bsr.w	AddOrSubtractStats
	rts


SubtractSunnyStats:
	move.w	#ALLY_31,d0
	move.w	#0,d1
	lea		table_AiSunnyStats(pc),a0
	bsr.w	AddOrSubtractStats
	rts


table_AiSunnyStats:
	; These are the stat penalties applied to battle 4
	; They are reversed as soon as Sunny leaves the party
	dc.b 10 ; Level
	dc.b 30 ; HP
	dc.b 1	; MP
	dc.b 45 ; ATT
	dc.b 49 ; DEF
	dc.b 25 ; AGI
	dc.b 3  ; MOV
	align
