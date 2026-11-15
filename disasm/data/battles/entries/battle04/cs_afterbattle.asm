
; ASM FILE data\battles\entries\battle04\cs_afterbattle.asm :
; 0x498EE..0x49AB2 : Cutscene after battle 4
abcs_battle04:  resetForceBattleStats
				loadMapFadeIn MAP_OVERWORLD_GRANSEAL_KINGDOM,9,16
                loadMapEntities ce_49A6A
                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_SARAH,14,21,DOWN
                setPos ALLY_CHESTER,12,21,DOWN
                setPos ALLY_JAHA,13,22,DOWN
                setPos ALLY_KAZIN,11,22,DOWN
                setPos ALLY_LEMON,18,20,LEFT
				; ---------------------------------------------------------------
				clearF 559 ; Set if battle 4 was lost
				jumpIfFlagClear 558, @NoSunny ; Set after triggering Sunny's help in battle 4
                setPos ALLY_31,14,18,DOWN
                fadeInB
				
				textCursor 4358
				shiver ALLY_LEMON
                nextText $0,ALLY_LEMON 		 ; "This doesn't concern you,{N}dragon.{W1}"
                nextText $0,ALLY_LEMON 	 	 ; "These kids are our prisoners.{W1}"
                nextSingleText $0,ALLY_LEMON ; "Please leave, and no more{N}blood will be spilled today.{W1}"

				setFacing ALLY_BOWIE,UP
				setFacing ALLY_SARAH,UP
				
				shiver ALLY_31
                nextSingleText $80,ALLY_31 	 ; "Grrr...{W1}"

				shiver ALLY_SARAH
                nextText $0,ALLY_SARAH 		 ; "It's okay, {NAME;31}!{N}You've already helped us{N}so much!{W2}"
                nextText $0,ALLY_SARAH 	 	 ; "Please continue searching for{N}your perfect home...{N}We'll be okay!{W2}"
                nextSingleText $0,ALLY_SARAH ; "This man will keep his word,{N}I'm sure of it!{W1}"

				nod ALLY_LEMON
                nextSingleText $0,ALLY_LEMON ; "...{D1}{D1}I will.{W1}"

				shiver ALLY_31
                nextSingleText $80,ALLY_31 	 ; "...{D1}{D1} ...{D1}OK.{D1} Until we meet again,{N}please stay safe!{W1}"

                nextSingleText $0,ALLY_SARAH ; "Thank you.{W1}"
				nod	ALLY_31
				nod ALLY_SARAH
				
                entityActionsWait ALLY_31
                 moveUp 1
                endActions
				csWait 30
				setFacing ALLY_31,DOWN
				csWait 90
                entityActionsWait ALLY_31
                 moveUp 16
                endActions
				
				setFacing ALLY_BOWIE,DOWN
				setFacing ALLY_SARAH,DOWN
                setActscriptWait ALLY_LEMON,eas_Jump
                nextSingleText $0,ALLY_LEMON ; "OK.{D1}{N}We can go back on track now.{W1}"
				jump @OriginalScene
				
			@NoSunny:
                fadeInB
				; ---------------------------------------------------------------
			@OriginalScene:
                nod ALLY_BOWIE
				textCursor 2319
                nextSingleText $0,ALLY_LEMON ; "Your battle strategy was{N}wonderful!  I praise you.{N}{D2}You even managed to wound me!{W1}"
                csWait 5
                setActscript ALLY_JAHA,eas_2xRightLeft
                csWait 5
                setActscript ALLY_KAZIN,eas_2xRightLeft
                setActscript ALLY_SARAH,eas_Jump
                setActscriptWait ALLY_CHESTER,eas_Jump
                setActscript ALLY_SARAH,eas_Jump
                setActscriptWait ALLY_CHESTER,eas_Jump
                csWait 80
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_SARAH,RIGHT
                setFacing ALLY_CHESTER,RIGHT
                setFacing ALLY_JAHA,RIGHT
                setFacing ALLY_KAZIN,RIGHT
                nextSingleText $0,ALLY_LEMON ; "But, I can't let you escape.{W1}"
                customActscriptWait ALLY_LEMON
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_LEMON
                 moveLeft 4
                endActions
                setActscriptWait ALLY_BOWIE,eas_DeactivateAutoFacing
                customActscriptWait ALLY_BOWIE
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 2
                playSound SFX_BATTLEFIELD_DEATH
                entityActionsWait ALLY_BOWIE
                 moveLeft 1
                endActions
                setQuake 0
                entityActionsWait ALLY_BOWIE
                 moveUp 1
                 moveRight 1
                endActions
                setActscript ALLY_BOWIE,eas_RotateRight
                setFacing ALLY_SARAH,UP
                setFacing ALLY_CHESTER,UP
                setFacing ALLY_JAHA,UP
                setFacing ALLY_KAZIN,UP
                csWait 60
                setActscriptWait ALLY_BOWIE,eas_Init
                setFacing ALLY_BOWIE,DOWN
                customActscriptWait ALLY_BOWIE
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_LEMON
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_LEMON
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_LEMON ; "That lad is their leader.{N}Take him!{W1}"
                entityActions 130
                 moveUp 1
                endActions
                entityActions 129
                 moveLeft 3
                endActions
                entityActionsWait 128
                 moveLeft 5
                 moveDown 1
                endActions
                setFacing 130,LEFT
                setFacing ALLY_LEMON,DOWN
                nextSingleText $0,ALLY_LEMON ; "Don't worry.  He has only{N}fainted.  Take them to Galam!{W1}"
                entityActionsWait ALLY_LEMON
                 moveRight 1
                 moveDown 1
                 moveRight 2
                endActions
                warp MAP_GALAM_INTERIORS,0,0,RIGHT
                csc_end
ce_49A6A:       mainEntity 13,20,DOWN
                entity 14,21,DOWN,ALLY_SARAH,eas_Init
                entity 12,21,DOWN,ALLY_CHESTER,eas_Init
                entity 13,22,DOWN,ALLY_JAHA,eas_Init
                entity 11,22,DOWN,ALLY_KAZIN,eas_Init
                entity 63,63,DOWN,ALLY_31,eas_Init
                entity 63,63,UP,ALLY_LEMON,eas_Init
                entity 17,18,LEFT,MAPSPRITE_GALAM_ARCHER,eas_Init
                entity 17,19,LEFT,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 17,21,LEFT,MAPSPRITE_GALAM_SOLDIER,eas_Init
				; Make it seem more threatening
                entity 11,24,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 12,24,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 13,24,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 14,24,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 11,25,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                entity 12,25,UP,MAPSPRITE_GALAM_ARCHER,eas_Init
                entity 13,25,UP,MAPSPRITE_GALAM_ARCHER,eas_Init
                entity 14,25,UP,MAPSPRITE_GALAM_SOLDIER,eas_Init
                cscEntitiesEnd
