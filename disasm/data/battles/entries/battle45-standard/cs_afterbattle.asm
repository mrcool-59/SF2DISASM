
abcs_battle45:  textCursor 4299
                resetForceBattleStats
				
				playSound SOUND_COMMAND_FADE_OUT
				fadeOutB
                resetMap
				
                csWait 90
                fadeInB
                reloadMap 36,7
				
				nextSingleText $0,ALLY_31 ; "Good! That was the last one.{W1}"

                loadMapFadeIn MAP_SUNNY_CAVE,36,7
                loadMapEntities @SetupEntities

                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_BOWIE,42,11,LEFT
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,41,12,UP
                setActscriptWait FOLLOWER_B,eas_Init
				setPos FOLLOWER_B,40,11,RIGHT
				; In case they are followers
                setActscriptWait ALLY_FRAYJA,eas_Init
                setPos ALLY_FRAYJA,63,63,UP
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,63,UP
                setActscriptWait ALLY_LEMON,eas_Init
				setPos ALLY_LEMON,63,63,UP
				
				csWait 1
				playSound MUSIC_CUSTOM_COZY_CAVE
                fadeInB

				nextSingleText $0,ALLY_31 ; "Thank you very much.{N}These devils are getting more{N}and more annoying.{W2}{CLEAR}I think I'll pack my things{N}and go live somewhere else...{W1}"
				
				jumpIfFlagClear 222,@BreadNotStolen
				shiver 		ALLY_31
				textCursor 4323
				nextSingleText $0,ALLY_31 ; "Not to mention they ruined{N}my day. I had prepared{N}some Cheerful Bread...{W2}{N}And they stole it!{W1}"
				shiver 		ALLY_PETER
				headshake	ALLY_BOWIE
				setFacing 	ALLY_PETER,RIGHT
				nextSingleText $0,ALLY_PETER ; "Oh...{W2}{N}(Pssst... {LEADER}, I hope{N}you'll do something about this!){W1}"
				nod 		ALLY_BOWIE
				csWait		30
				setFacing 	ALLY_PETER,UP
				nextText $0,ALLY_PETER ; "So, about those pesky devils...{W1}"
				
			@BreadNotStolen:
				shiver 		ALLY_PETER
				textCursor 4301
				nextSingleText $0,ALLY_PETER ; "We are on a quest to get rid{N}of them, actually.{W1}"
				setActscriptWait ALLY_31,eas_Jump
				nextSingleText $0,ALLY_31 ; "Oooh! A quest!...{D1}{N}Sounds interesting.{N}Mind if I tag along?{W1}"
				setActscriptWait ALLY_PETER,eas_Jump
				nextSingleText $0,ALLY_PETER ; "Sure I would love...{D1}{N}Er...{D1}we would love to{N}have you around!{W1}"
				shiver 		ALLY_PETER
				setFacing 	FOLLOWER_B,DOWN
				csWait 		8
				setFacing 	FOLLOWER_B,LEFT
				nextSingleText $0,ALLY_31 ; "Hmm?...{W1}"
				setFacing 	ALLY_PETER,LEFT
				nextSingleText $0,ALLY_PETER ; "Right, sir Astral?{W1}"
				shiver 		FOLLOWER_B
				csWait 		15
				shiver 		FOLLOWER_B
				nextSingleText $0,FOLLOWER_B ; "..ahaha...{W1}"
				shiver 		FOLLOWER_B
				csWait 		15
				shiver 		FOLLOWER_B
				csWait 		15
				shiver 		ALLY_PETER
				csWait		30
				nextSingleText $0,ALLY_PETER ; "Sir Astral?{W1}"
				setActscriptWait FOLLOWER_B,eas_Jump
				setFacing 	FOLLOWER_B,RIGHT
				nextSingleText $0,FOLLOWER_B ; "Hm! Of course! Of course!{N}{NAME;31} will be a fierce ally!{W1}"
				setFacing 	ALLY_PETER,UP
				nod			ALLY_31
				nod			ALLY_BOWIE
				nod			ALLY_PETER
				nextSingleText $0,ALLY_31 ; "It's settled then!{N}Pleased to meet you all!{W1}"

				; Sunny joins permanently past this point
				joinForceAI ALLY_31,$0
                join ALLY_31
				joinBatParty ALLY_31
                csc_end
				
@SetupEntities: mainEntity 42,11,LEFT
				entity 41,10,DOWN,ALLY_31,eas_Init
                entity 41,12,UP,ALLY_PETER,eas_Init
				; In case they are followers
                entity 63,63,UP,ALLY_FRAYJA,eas_Init
                entity 63,63,UP,ALLY_ZYNK,eas_Init
				entity 63,63,UP,ALLY_LEMON,eas_Init
                cscEntitiesEnd
