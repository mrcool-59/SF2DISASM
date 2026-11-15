
rbcs_battle4:
				jumpIfDead ALLY_SARAH,@Skip
				jumpIfFlagClear 557,@Skip		; Set after meeting Sunny in Yeel

				newEntity ALLY_31, 19, 13, LEFT, MAPSPRITE_SUNNY_PROMO
                executeSubroutine csub_SunnyGalamAmbushJoin
				textCursor 4369
                nextSingleText $80,ALLY_31 		; "What's going on over here?{W1}"
                cameraSpeed $38
                setCameraEntity ALLY_31
                csWait 60
                nextSingleText $80,ALLY_31 		; "Oh my!{D1}{N}These kids are in trouble!{W1}"
				
				executeSubroutine csub_MoveAwayCombatantOnSunnyPosition
				setCameraEntity ALLY_BOWIE
				moveNextToPlayer ALLY_31,RIGHT
				faceEntity ALLY_SARAH,ALLY_31
				faceEntity ALLY_BOWIE,ALLY_31
				faceEntity ALLY_31,ALLY_SARAH
				
				nextSingleText $80,ALLY_31 		; "{NAME;1}! {LEADER}!{N}Are you OK?{W1}"
				setCameraEntity ALLY_SARAH
                setActscriptWait ALLY_SARAH,eas_Jump
				nextSingleText $0,ALLY_SARAH 	; "{NAME;31}!{W1}"
				faceEntity ALLY_31,ALLY_BOWIE
				setCameraEntity ALLY_BOWIE
				nextSingleText $0,ALLY_BOWIE 	; "These soldiers ambushed us.{W1}"
				faceEntity ALLY_31,ALLY_SARAH
				nextSingleText $0,ALLY_SARAH 	; "But we did nothing wrong!{W1}"
				shiver ALLY_31
				nod ALLY_31
				csWait 20
				faceEntity ALLY_31,128
				csWait 20
                setActscriptWait ALLY_31,eas_Jump
                nextSingleText $80,ALLY_31 		; "Hey, you bullies! Isn't that a{N}bit too much to catch a bunch{N}of kids!? Leave them alone!{W1}"
				
				setCameraEntity 128
				faceEntity 128,ALLY_31
                nextText $0,128 				; "What? Just my luck... I need to{N}deal with that dragon.{W1}"
                setActscriptWait 128,eas_Jump
                nextSingleText $0,128 			; "Archers! Take it down!{N}Infantry! Seize that boy!{W1}"
				
				setCameraEntity ALLY_31
                nextSingleText $80,ALLY_31 		; "Please stay close to me.{N}I'll keep you safe.{W1}"
				
                joinForceAI ALLY_31,$FFFF 		; 0054 JOIN FORCE WITH AI
                setF 558                		; Set after triggering Sunny's help in battle 4
			@Skip:
                csc_end


; =============== S U B R O U T I N E =======================================


csub_SunnyGalamAmbushJoin:
	jsr		SubtractSunnyStats
	
	move.w  #ALLY_BOWIE,d0
	jsr     GetCombatantX
	move.w  d1,d7
	jsr     GetCombatantY
	move.w  d1,d6
	addq.w  #1,d7

	moveq   #ALLY_31,d0
	move.w  d7,d1
	jsr     SetCombatantX
	move.w  d6,d1
	jsr     SetCombatantY
	jsr     JoinForce
	jsr     JoinBattleParty
	rts


csub_MoveAwayCombatantOnSunnyPosition:
	; TODO
	rts
