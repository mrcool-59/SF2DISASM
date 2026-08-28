
; Original soundtest has been altered with replaced and/or added musics through an automated tool.
; Manual edits in this file is strongly discouraged.

; =============== S U B R O U T I N E =======================================


SoundTest:      txt     464                         ; "Oh! I have a good idea.{N}Let's listen to music!{W1}"
                sndCom  SOUND_COMMAND_FADE_OUT
                clr.w   ((CURRENT_SPEECH_SFX-$1000000)).w
                clr.w   d0
                clr.w   d7                          ; D7 = # bytes into sound table, so we clear it here
                
                lea     table_SoundtrackTitles(pc),a0
                clr.w   d1
                moveq   #-1,d2                      ; d2.w = index beyond which a number is written instead of a title (-1 = disabled)
                
@UpdateTrack:   move.b  table_Soundtracks(pc,d7.w),d1
                jsr     (DisplaySoundtrackTitle).w
                
@Start:         jsr     (WaitForVInt).w
                
@Right:         btst    #INPUT_BIT_RIGHT,((PLAYER_1_INPUT-$1000000)).w
                beq.s   @Left
                cmpi.w  #92,d7      ; check we're not trying to go beyond final track
                bge.s   @First      ; if we are, go to first track (circular navigation)
                addq.w  #1,d7
                bra.s   @UpdateTrack
                
@Left:          btst    #INPUT_BIT_LEFT,((PLAYER_1_INPUT-$1000000)).w
                beq.s   @A
                tst.w   d7          ; check we're not trying to go below the first track
				ble.s   @Last       ; if we are, go to last track (circular navigation)
                subq.w  #1,d7
                bra.s   @UpdateTrack
                
@First:         move.b  #0,d7       ; go to first track
                bra.s   @UpdateTrack

@Last:          move.b  #92,d7      ; go to last track
                bra.s   @UpdateTrack

@A:             btst    #INPUT_BIT_A,((PLAYER_1_INPUT-$1000000)).w
                beq.s   @C
                
                ; Fade out if pressed A
                sndCom  SOUND_COMMAND_FADE_OUT
                bra.s   @Start
                
@C:             btst    #INPUT_BIT_C,((PLAYER_1_INPUT-$1000000)).w
                beq.s   @B
                
                ; Play track if pressed C
@PlayTrack:     sndCom  MUSIC_STOP
                move.b  d1,d0
                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
                
                ; Exit sound test if pressed B
@B:             btst    #INPUT_BIT_B,((PLAYER_1_INPUT-$1000000)).w
                bne.s   @Return
                bra.s   @Start
                
@Return:        rts

    ; End of function SoundTest

; ---------------------------------------------------------------------------

table_Soundtracks:
                dc.b MUSIC_MAIN_THEME
                dc.b MUSIC_ATTACK
                dc.b MUSIC_PROMOTED_ATTACK
                dc.b MUSIC_PROMOTED_ATTACK_LOOP
                dc.b MUSIC_ENEMY_ATTACK
                dc.b MUSIC_BOSS_ATTACK
                dc.b MUSIC_PROMOTION
                dc.b MUSIC_BATTLE_THEME_3
                dc.b MUSIC_BATTLE_THEME_1
                dc.b MUSIC_MITHRIL_DIGGERS
                dc.b MUSIC_CASTLE
                dc.b MUSIC_HEADQUARTERS
                dc.b MUSIC_MITULA_SHRINE
                dc.b MUSIC_ENDING
                dc.b MUSIC_ZEON_ATTACK
                dc.b MUSIC_TOWN
                dc.b MUSIC_INTRO
                dc.b MUSIC_WITCH
                dc.b MUSIC_SUSPEND
                dc.b MUSIC_SAD_THEME_2
                dc.b MUSIC_ELVEN_TOWN
                dc.b MUSIC_MITULA
                dc.b MUSIC_SAD_THEME_3
                dc.b MUSIC_SAD_THEME_1
                dc.b MUSIC_PIANO_THEME
                dc.b MUSIC_CORRUPTED_SAVE
                dc.b MUSIC_JOIN
                dc.b MUSIC_SAD_JOIN
                dc.b MUSIC_SAVE
                dc.b MUSIC_CURE
                dc.b MUSIC_UNUSED_REVIVE
                dc.b MUSIC_REVIVE
                dc.b MUSIC_CURSED_ITEM
                dc.b MUSIC_ITEM
                dc.b MUSIC_TITLE
                dc.b MUSIC_SHRINE
                dc.b MUSIC_FINAL_BATTLE
                dc.b SFX_MENU_SWITCH
                dc.b SFX_MENU_SELECTION
                dc.b SFX_VALIDATION
                dc.b SFX_REFUSAL
                dc.b SFX_DIALOG_BLEEP_1
                dc.b SFX_DIALOG_BLEEP_2
                dc.b SFX_DIALOG_BLEEP_3
                dc.b SFX_DIALOG_BLEEP_4
                dc.b SFX_DIALOG_BLEEP_5
                dc.b SFX_DIALOG_BLEEP_6
                dc.b SFX_DIALOG_BLEEP_7
                dc.b SFX_DIALOG_BLEEP_8
                dc.b SFX_SPELL_CAST
                dc.b SFX_DOOR_OPEN_HIGH_PITCH
                dc.b SFX_WALKING
                dc.b SFX_UNUSED_FROM_LANDSTALKER
                dc.b SFX_LIGHTNING_1
                dc.b SFX_LIGHTNING_2
                dc.b SFX_HIT_1
                dc.b SFX_HIT_2
                dc.b SFX_BLAST
                dc.b SFX_SWORDS_HIT
                dc.b SFX_JUMP
                dc.b SFX_FALLING
                dc.b SFX_WARP
                dc.b SFX_CHIRRUP_SANDALS
                dc.b SFX_MONSTER_DIALOG_BLEEP
                dc.b SFX_DOOR_OPEN
                dc.b SFX_BIG_DOOR_RUMBLE
                dc.b SFX_MONSTER_SCREAM
                dc.b SFX_BUUBOBI
                dc.b SFX_SECRET_PATH_ROCK
                dc.b SFX_PSH
                dc.b SFX_PSHHH
                dc.b SFX_BLOAB
                dc.b SFX_BLO
                dc.b SFX_LANDSTALKER_ITEM
                dc.b SFX_LEVEL_UP
                dc.b SFX_PRISM_LASER_LOADING
                dc.b SFX_SPAWN
                dc.b SFX_SFCD_STATUES
                dc.b SFX_DESOUL
                dc.b SFX_SITD_HOWL
                dc.b SFX_PRISM_LASER_FIRING
                dc.b SFX_BOOST
                dc.b SFX_DESOUL_HOVERING
                dc.b SFX_PRISM_LASER_CUTSCENE_FIRING
                dc.b SFX_TAROS_DIALOG_BLEEP
                dc.b SFX_HEALING
                dc.b SFX_BLAST_SPELL
                dc.b SFX_WING_FLAP
                dc.b SFX_BATTLEFIELD_DEATH
                dc.b SFX_DEMON_BREATH
                dc.b SFX_INTRO_LIGHTNING
                dc.b SFX_BOLT_SPELL
                dc.b SFX_TINKLING


; ---------------------------------------------------------------------------

table_SoundtrackTitles:
                defineName ""
                defineName "Test Silence / Legend of Light"
                defineName "Test Note Length / The Young Men of Granseal"
                defineName "Test Basic / Fight, with the Ancient Light"
                defineName "Test Tricky Loop / MUSIC_PROMOTED_ATTACK_LOOP"
                defineName "Test Illegal Volume Ramp / Dark Force"
                defineName "Test Sample / Footsteps of Ruin"
                defineName "Roar of the King of Devils (NUKED)"
                defineName "A Peaceful Moment (NUKED)"
                defineName "Lurking in the Darkness (NUKED)"
                defineName "Witch in the Forest of Illusion (NUKED)"
                defineName "Midnight in the Forest of Illusion (NUKED)"
                defineName "Time of Trials (NUKED)"
                defineName "Fairy Woods (NUKED)"
                defineName "Dreaming Elis (NUKED)"
                defineName "Reminiscence (NUKED)"
                defineName "Heartbreak (NUKED)"
                defineName "Twilight of the Warriors (NUKED)"
                defineName "Oh, Damnit (NUKED)"
                defineName "Joined the Party (NUKED)"
                defineName "Sadly Joined the Party (NUKED)"
                defineName "Save (NUKED)"
                defineName "Antidote (NUKED)"
                defineName "Revival, Long Version (NUKED)"
                defineName "Revival (NUKED)"
                defineName "First Area / Promotion"
                defineName "You've Been Cursed! (NUKED)"
                defineName "It's a Treasure Chest! (NUKED)"
                defineName "Shining Force II (NUKED)"
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName "The First Battle / The Call of a Long Journey"
                defineName "Silence / Entrance to the Demon World"
                defineName "A Message from Ancient Times (NUKED)"
                defineName "The King of Devils has Appeared (NUKED)"
                defineName "Self Discipline / Dwarf Dwarf Dwarf"
                defineName "Final / The Bloodline of Ground Seal"
                defineName "Last Area (Abridged) / The Caravan Proceeds"
                defineName "Shop / Ancient Wings"
                defineName "Choose your Path / Chosen Heroes"
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName ""
                defineName "SFX: MENU_SWITCH (NUKED)"
                defineName "SFX: MENU_SELECTION (NUKED)"
                defineName "SFX: VALIDATION (NUKED)"
                defineName "SFX: REFUSAL (NUKED)"
                defineName "SFX: DIALOG_BLEEP_1 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_2 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_3 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_4 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_5 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_6 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_7 (NUKED)"
                defineName "SFX: DIALOG_BLEEP_8 (NUKED)"
                defineName "SFX: SPELL_CAST (NUKED)"
                defineName "SFX: DOOR_OPEN_HIGH_PITCH (NUKED)"
                defineName "SFX: WALKING (NUKED)"
                defineName "SFX: UNUSED_FROM_LANDSTALKER (NUKED)"
                defineName "SFX: LIGHTNING_1 (NUKED)"
                defineName "SFX: LIGHTNING_2 (NUKED)"
                defineName "SFX: HIT_1 (NUKED)"
                defineName "SFX: HIT_2 (NUKED)"
                defineName "SFX: BLAST (NUKED)"
                defineName "SFX: SWORDS_HIT (NUKED)"
                defineName "SFX: JUMP (NUKED)"
                defineName "SFX: FALLING (NUKED)"
                defineName "SFX: WARP (NUKED)"
                defineName "SFX: CHIRRUP_SANDALS (NUKED)"
                defineName "SFX: MONSTER_DIALOG_BLEEP (NUKED)"
                defineName "SFX: DOOR_OPEN (NUKED)"
                defineName "SFX: BIG_DOOR_RUMBLE (NUKED)"
                defineName "SFX: MONSTER_SCREAM (NUKED)"
                defineName "SFX: BUUBOBI (NUKED)"
                defineName "SFX: SECRET_PATH_ROCK (NUKED)"
                defineName "SFX: PSH (NUKED)"
                defineName "SFX: PSHHH (NUKED)"
                defineName "SFX: BLOAB (NUKED)"
                defineName "SFX: BLO (NUKED)"
                defineName "SFX: LANDSTALKER_ITEM (NUKED)"
                defineName "SFX: LEVEL_UP (NUKED)"
                defineName "SFX: PRISM_LASER_LOADING (NUKED)"
                defineName "SFX: SPAWN (NUKED)"
                defineName "SFX: SFCD_STATUES (NUKED)"
                defineName "SFX: DESOUL (NUKED)"
                defineName "SFX: SITD_HOWL (NUKED)"
                defineName "SFX: PRISM_LASER_FIRING (NUKED)"
                defineName "SFX: BOOST (NUKED)"
                defineName "SFX: DESOUL_HOVERING (NUKED)"
                defineName "SFX: PRISM_LASER_CUTSCENE_FIRING (NUKED)"
                defineName "SFX: TAROS_DIALOG_BLEEP (NUKED)"
                defineName "SFX: HEALING (NUKED)"
                defineName "SFX: BLAST_SPELL (NUKED)"
                defineName "SFX: WING_FLAP (NUKED)"
                defineName "SFX: BATTLEFIELD_DEATH (NUKED)"
                defineName "SFX: DEMON_BREATH (NUKED)"
                defineName "SFX: INTRO_LIGHTNING (NUKED)"
                defineName "SFX: BOLT_SPELL (NUKED)"
                defineName "SFX: TINKLING (NUKED)"
