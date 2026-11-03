
bbcs_45:        textCursor 2292 ; TODO
                loadMapFadeIn MAP_SUNNY_CAVE,36,4
                loadMapEntities @SetupEntities
                setActscriptWait ALLY_BOWIE,eas_Init
                fadeInB

				; Force Sunny into the party
				joinForceAI ALLY_31,$FFFF
                joinBatParty ALLY_31
                executeSubroutine csub_4D078
				
				; TODO: actual cutscene coming later
				
                ;setCamDest 2,8
                ;csWait 60
				
                csc_end
@SetupEntities: mainEntity 8,6,UP
                cscEntitiesEnd
