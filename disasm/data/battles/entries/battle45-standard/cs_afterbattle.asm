
abcs_battle45:  textCursor 2305 ; TODO
                resetForceBattleStats
                loadMapFadeIn MAP_SUNNY_CAVE,36,4
                loadMapEntities @SetupEntities
                setActscriptWait ALLY_BOWIE,eas_Init
                fadeInB

				; Sunny joins permanently past this point
				csWait 30
				joinForceAI ALLY_31,$0
                join ALLY_31
                csc_end
				
				; TODO: actual cutscene coming later
				
                ;setCamDest 2,8
                ;csWait 60
				
@SetupEntities: mainEntity 8,6,UP
                cscEntitiesEnd
