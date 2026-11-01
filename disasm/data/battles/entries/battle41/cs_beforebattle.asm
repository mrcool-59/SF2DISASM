
; ASM FILE data\battles\entries\battle41\cs_beforebattle.asm :
; 0x4ED0E..0x4ED8E : Cutscene before battle 41
bbcs_41:        loadMapFadeIn MAP_ANCIENT_TOWER_ASCENT,12,21
                loadMapEntities ce_4ED76
                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_PETER,16,25,RIGHT
                setPos FOLLOWER_B,15,25,RIGHT
                setPos ALLY_LEMON,14,25,RIGHT
                jumpIfFlagClear 31,@SunnyAbsent ; Sunny has not joined
                setPos ALLY_31,16,26,RIGHT
@SunnyAbsent:
                jumpIfFlagClear 76,cs_4ED48 ; Zynk is a follower
                setPos ALLY_ZYNK,13,24,RIGHT
cs_4ED48:       playSound MUSIC_STOP
                fadeInB
				csWait 30
				textCursor 4267
                nextSingleText $0,ALLY_PETER   ; [CUSTOM] "... {D1}{D1}Zeon will pay for every life{N}he took.{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                jumpIfFlagClear 31,@IxenVersion ; Sunny has not joined
@SunnyVersion:
                entityActionsWait ALLY_31
                 moveUp 1
                endActions
				playSound MUSIC_CUSTOM_SUNNY
                shiver ALLY_31
				csWait 30
				setFacing ALLY_PETER,DOWN
				setFacing ALLY_31,UP
                nod ALLY_31
				csWait 30
				textCursor 4279
				nextSingleText $0,ALLY_31   ; [CUSTOM] "Let's make him pay, {D1}{D1}together!{N}Zeon took a good friend away{N}from you I couldn't get to know.{W1}"
				nod ALLY_PETER
				jump @Common
@IxenVersion:
				playSound MUSIC_CUSTOM_IXEN_PROMOTED
                nextSingleText $0,ALLY_PETER   ; [CUSTOM] "We're almost there everyone!{D1}{N}This is the final battle before{N}facing Zeon!{W1}"

@Common:		textCursor 3083
				csWait 30
                nextSingleText $0,128   ; "Who are you?!{N}Oh, are you from Granseal?{W1}"
				setFacing ALLY_PETER,UP		; Will do nothing for Ixen version
                entityActions FOLLOWER_B
                 moveUp 1
                endActions
                entityActionsWait ALLY_BOWIE
                 moveUp 1
                endActions
				csWait 15
                setCamDest 12,4
                nextSingleText $0,128   ; "But, Odd Eye went to...{W2}"
                entityActionsWait 128
                 moveDown 2
                endActions
                nextText $0,128         ; "Impossible!{N}He was defeated?{W2}"
                nextText $0,128         ; "Inconceivable!  But...{N}OK, I'll stop you here.{W2}"
                nextSingleText $0,128   ; "You shall die now!{W1}"
                csc_end
ce_4ED76:       mainEntity 17,25,LEFT
                entity 16,25,RIGHT,ALLY_PETER,eas_Init
				entity 63,63,RIGHT,ALLY_31,eas_Init				; Sunny out of map
                entity 16,6,DOWN,MAPSPRITE_REAPER,eas_Init
                cscEntitiesEnd
