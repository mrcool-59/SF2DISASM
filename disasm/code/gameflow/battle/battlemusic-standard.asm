
; ASM FILE code\gameflow\battle\battlemusic-standard.asm :
; Standard reimplementation of battle music player function.

; =============== S U B R O U T I N E =======================================


PlayMapMusic:
                
                movem.l d0,-(sp)
				jsr		GetMapMusic		; d0 = current map music
            if (MUSIC_RESUMING=1)
                activateMusicResuming
            endif
                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
                movem.l (sp)+,d0
                rts

    ; End of function PlayMapMusic

; =============== S U B R O U T I N E =======================================


GetMapMusic:	; This routine computes the current map music (depending on whether we are in battle)
                movem.l d1-d3/a0,-(sp)
                clr.w   d0
                move.b  ((MAP_AREA_MUSIC_INDEX-$1000000)).w,d0
                compareToSavedByte #NOT_CURRENTLY_IN_BATTLE, CURRENT_BATTLE
                beq.s   @Continue
                
				getSavedByte CURRENT_BATTLE, d3
                lea     table_BattleNumbersToBattleMusics(pc), a0
                move.w  d3,d1
                moveq   #1,d2
                jsr     (FindSpecialPropertyBytesAddressForObject).w
                bcs.s   @TryExplorationToBattleMusic
                move.b  (a0),d0		
				bra.s   @Continue	; Battle number table has the final say
@TryExplorationToBattleMusic:
                lea     table_ExplorationToBattleMusics(pc), a0
                move.w  d0,d1
                moveq   #1,d2
                jsr     (FindSpecialPropertyBytesAddressForObject).w
                bcs.s   @Continue
                move.b  (a0),d0
                
@Continue:      
				; Hardcode 1: Odd Eye battle => if Sunny hasn't joined, it would be a shame to waste such a great music!
				cmpi.b  #MUSIC_CUSTOM_SUNNY,d0
				bne.s   @AdjustAscendTower			; Not playing the Odd Eye battle
				chkFlg  31
				beq.s   @AdjustAscendTower 				; Sunny has not joined
				move.b  #MUSIC_CUSTOM_IXEN_PROMOTED,d0	; Sunny has joined
				bra.s   @Return
				
@AdjustAscendTower:
				; Hardcode 2: Ascent Tower battle => if Sunny has joined, play her theme to be consistent with the pre-battle cutscene!
				cmpi.b  #MUSIC_CUSTOM_IXEN_PROMOTED,d0
				bne.s   @Return						; Not playing the Ascent Tower battle
				chkFlg  31
				beq.s   @Return 					; Sunny has not joined
				move.b  #MUSIC_CUSTOM_SUNNY,d0		; Sunny has joined

@Return:
                movem.l (sp)+,d1-d3/a0
                rts						; d0 = current map music


    ; End of function GetMapMusic
	
	
; =============== S U B R O U T I N E =======================================


ShouldPlayBattlesceneMusic:						
			if (ENABLE_UNINTERRUPTIBLE_MUSIC=1)
				movem.l a0,-(sp)
				jsr		GetMapMusic		; d0 = current map music
				lea		table_UninterruptibleMusics(pc),a0
@TestNextUninterruptibleTableIndex:
				cmp.b	(a0),d0
				beq.s	@DoNotPlayMusic ; Hit music number in table -> do not play battlescene music
				cmp.b	#0,(a0)+
				bne.s	@TestNextUninterruptibleTableIndex ; Keep browsing the table
				move.b	#1,d0	; End of table reached -> play battlescene music
				bra.s	@Return
@DoNotPlayMusic:
				move.b	#0,d0
@Return
                movem.l	(sp)+,a0
				rts
			else
				move.b	#1,d0
				rts
			endif


    ; End of function ShouldPlayBattlesceneMusic		; d0 = 0 don't play, 1 play
