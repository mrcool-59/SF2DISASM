
bbcs_45:        textCursor 4294
                loadMapFadeIn MAP_SUNNY_CAVE,38,9
                loadMapEntities @SetupEntities
				playSound MUSIC_CUSTOM_COZY_CAVE

                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_BOWIE,43,15,UP
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,42,15,UP
                setActscriptWait FOLLOWER_B,eas_Init
				setPos FOLLOWER_B,44,15,UP
				; In case they are followers
                setActscriptWait ALLY_FRAYJA,eas_Init
                setPos ALLY_FRAYJA,63,63,UP
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,63,UP
                setActscriptWait ALLY_LEMON,eas_Init
				setPos ALLY_LEMON,63,63,UP
				
                fadeInB
				csWait 60
				
				nextSingleText $0,ALLY_31 ; "Who's there?{W1}"

                entityActionsWait ALLY_31
                 moveDown 3
				 moveRight 1
				 moveDown 1
				 moveRight 1
				 moveDown 2
                endActions
				
				shiver FOLLOWER_B
				nextSingleText $0,FOLLOWER_B ; "We're adventurers.{N}We were just passing by.{W1}"

				shiver ALLY_PETER
				csWait 20
				shiver ALLY_PETER
				nextSingleText $0,ALLY_PETER ; "...{D1}Wow.{D1} She is beautiful...{D1} ...{W1}"

				shiver		FOLLOWER_B
                entityActionsWait FOLLOWER_B
				 moveUp 1
				 moveLeft 2
				 faceDown 1
                endActions
				csWait 30
                entityActionsWait FOLLOWER_B
				 moveRight 1
				 faceUp 1
                endActions
				csWait 30
                entityActionsWait FOLLOWER_B
				 moveLeft 1
				 faceDown 1
                endActions
				csWait 30
                entityActionsWait FOLLOWER_B
				 moveRight 1
				 faceUp 1
                endActions
				csWait 30
                entityActionsWait FOLLOWER_B
				 moveRight 1
				 moveDown 1
				 faceLeft 1
                endActions
				setActscriptWait FOLLOWER_B,eas_Jump
				setFacing 	ALLY_BOWIE,RIGHT
				csWait 	30
				shiver 	FOLLOWER_B
				nextSingleText $0,FOLLOWER_B ; "...Eh {LEADER}.{D1}{N}Are you thinking the same thing{N}I do?{D1} Hehehe...{W1}"
				shiver 	ALLY_BOWIE
				nod 	ALLY_BOWIE
				
                entityActionsWait ALLY_31
				 moveDown 1
                endActions
				
				setFacing 	ALLY_BOWIE,UP
				setFacing 	FOLLOWER_B,UP
				
				playSound SOUND_COMMAND_FADE_OUT
				shiver		ALLY_31
				nextSingleText $0,ALLY_31 ; "Hi. I'm {NAME;31}.{W2}{N}As you can see,{N}I got uninvited guests while{N}I was taking a nap.{W2}"
				setFacing	ALLY_31,UP
				csWait 		30
				setCamDest 	38,3
				setActscript 128,eas_Jump
				setActscript 129,eas_Jump
				setActscript 130,eas_Jump
				csWait		60
				setCamDest 	38,9
				csWait 		15
				setFacing	ALLY_31,DOWN
				csWait 		15

				setActscriptWait ALLY_31,eas_Jump
				playSound 	MUSIC_CUSTOM_SUNNY
				
				textCursor 4328
				nextSingleText $0,ALLY_31 ; "Can you help me show them{N}the way out?{W1}"
				
				nod 	ALLY_BOWIE
				setActscriptWait ALLY_PETER,eas_Jump
				setActscriptWait ALLY_PETER,eas_Jump

				textCursor 4326
				nextSingleText $FF,ENTITY_NONE	; "{NAME;31} will participate{N}in this battle.{W1}"

				; Force Sunny into the party
				joinForceAI ALLY_31,$FFFF
                joinBatParty ALLY_31
                executeSubroutine csub_4D078
				setF	556		; Disable reminder to visit Sunny Cave
				
                csc_end
				
@SetupEntities: mainEntity 43,15,UP
				entity 41,6,DOWN,ALLY_31,eas_Init
                entity 42,15,UP,ALLY_PETER,eas_Init
				; In case they are followers
                entity 63,63,UP,ALLY_FRAYJA,eas_Init
                entity 63,63,UP,ALLY_ZYNK,eas_Init
				entity 63,63,UP,ALLY_LEMON,eas_Init
				; Uninvited guests
                entity 40,7,DOWN,MAPSPRITE_DRAGONEWT,eas_Init
                entity 42,6,DOWN,MAPSPRITE_BOW_MASTER,eas_Init
                entity 45,6,DOWN,MAPSPRITE_DEVIL_SOLDIER,eas_Init
                cscEntitiesEnd
