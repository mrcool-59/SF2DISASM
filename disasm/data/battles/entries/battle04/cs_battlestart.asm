bscs_battle4:
	; Remove many enemies if player didn't talk to Sunny in Yeel
	jumpIfFlagSet 557,@Skip
	executeSubroutine csub_ApplyEasierEnemies
@Skip:
	csc_end


table_EasierBattle4EnemyIndexes:
	dc.b 9
	dc.b 10
	dc.b 11
	dc.b 12
	dc.b 13
	dc.b 14
	dc.b 15
	dc.b 16
	tableEnd.b
	

csub_ApplyEasierEnemies:
	clr.w	d0
	lea		table_EasierBattle4EnemyIndexes(pc),a0
@Loop:
	move.b  (a0)+,d0
	cmp.b	#-1,d0		; Is end of table reached?
	beq.s	@Return
	
	add.w   #$80,d0		; Refer to enemies
	clr.w	d1
	jsr		SetCurrentHp
	move.w	#-1,d1
    jsr     SetCombatantX
	jsr     SetCombatantY
	jsr		MoveEntityOutOfMap
	bra.s	@Loop
	
@Return:
	jsr UpdateOccupiedByAlliesTerrain
	jsr UpdateOccupiedByEnemiesTerrain
	jsr BuildTargetsArrayWithAllCombatants
	
	rts
