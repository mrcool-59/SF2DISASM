; =============== S U B R O U T I N E =======================================


spellanimationUpdate_ThunderBreath:
                
                lea     ((SPELLANIMATION_PROPERTIES-$1000000)).w,a5
                lea     ((SPRITE_38-$1000000)).w,a4
                
				move.b  ((SPELLANIMATION_VARIATION_AND_MIRRORED_BIT-$1000000)).w,d2
				subq.b  #1,d2				; d2 = 0, 1, 2, 3 depending on variation + mirrored bit
				
                tst.w   (a5)
                beq.w   @UpdateDone
                addq.w  #1,(a5)				; (a5) = Frame counter
@UpdatePulse:
				subq.w  #1,2(a5)			; 2(a5) = Frame delay for next pulse
				bne.s	@SkipPulse
				btst    #0,d2				; Shake with variation 2 and 4
				beq.s	@SkipShake
                bsr.w   ApplySpellScreenShake
@SkipShake:
				sndCom  SFX_BOLT_SPELL
				
				; Roll again the pulse frame delay
                move.w  #8,d6 
                jsr     (GenerateRandomNumber).w
                add.w   #10,d7
                move.w  d7,2(a5)
@SkipPulse:
                bsr.w   UpdateSpellScreenShake
                lea     table_BoltPaletteFlash(pc), a0
				btst    #1,d2				; Flash with variation 3 and 4
				beq.s   @SkipFlash
                bsr.w   UpdateSpellPaletteFlash
@SkipFlash:
				move.w	#x_player,d2		; d2 = X position of the complex graphic
				move.w  #y_player,d3		; d3 = Y position of the complex graphic
				
				cmp.w   #5,2(a5)
				bge.s   @NoHideGraphic
				move.w	#256,d3				; Hide graphic for a few frames before the next sound effect pulse
@NoHideGraphic:
				move.w	(a5),d0
				lsr.w	#1,d0				; Change graphic every 2 frames
				andi.w  #3,d0				; We have 4 frames to cycle through

                lea     graphic_ThunderBreath_RightToLeft(pc), a0
				mulu.w  #(VDP_SPELL_ENTRY_SIZE*6),d0
				add.w   d0,a0				; a0 = pointer to the correct frame to display
				
                moveq   #38,d0				; Construct complex graphic starting at VDP sprite 38
                moveq   #6,d1				; Complex graphic has 6 sprites
                bsr.w   ConstructComplexGraphic

                cmpi.w  #45,(a5)					; Frame delay condition
                bne.w   @UpdateDone
                clr.b   ((SPELLANIMATION_HIT_TRIGGER-$1000000)).w	; Hit frame
@UpdateDone:
				tst.w	((SPELLANIMATION_COUNTDOWN-$1000000)).w	; Detect when the engine decides it's time to end the animation
				bne.s	@NotOver
                clr.b   ((UPDATE_SPELLANIMATION_TOGGLE-$1000000)).w
				bra.w   ReinitializeSceneAfterSpell
@NotOver:
                rts

    ; End of function spellanimationUpdate_PhoenixAttack


; -------------------------------------------------------------------------------
; Thunder Breath graphic is made up of 6 32x24 VDP sprites, covering a 96x48 area
; -------------------------------------------------------------------------------

; 144 tiles are loaded in VRAM for this spell animation
; Tiles have been arranged according to the VDP sprites specifications: https://segaretro.org/Sega_Mega_Drive/Sprites

x_player = 62
y_player = 72

graphic_ThunderBreath_RightToLeft: ; This version is intended for player characters
				; Frame A
                vdpSpell  0,  0,   SPELLTILE1, V3|H4|VALUE1
                vdpSpell  0, 24,  SPELLTILE13, V3|H4|VALUE1
                vdpSpell 32,  0,  SPELLTILE25, V3|H4|VALUE1
                vdpSpell 32, 24,  SPELLTILE37, V3|H4|VALUE1
                vdpSpell 64,  0,  SPELLTILE49, V3|H4|VALUE1
                vdpSpell 64, 24,  SPELLTILE61, V3|H4|VALUE1
				
				; Frame B
                vdpSpell  0,  0,  SPELLTILE73, V3|H4|VALUE1
                vdpSpell  0, 24,  SPELLTILE85, V3|H4|VALUE1
                vdpSpell 32,  0,  SPELLTILE97, V3|H4|VALUE1
                vdpSpell 32, 24, SPELLTILE109, V3|H4|VALUE1
                vdpSpell 64,  0, SPELLTILE121, V3|H4|VALUE1
                vdpSpell 64, 24, SPELLTILE133, V3|H4|VALUE1
				
				; Frame A (flipped)
                vdpSpell  0, 24,   SPELLTILE1, V3|H4|VALUE1|FLIPPED
                vdpSpell  0,  0,  SPELLTILE13, V3|H4|VALUE1|FLIPPED
                vdpSpell 32, 24,  SPELLTILE25, V3|H4|VALUE1|FLIPPED
                vdpSpell 32,  0,  SPELLTILE37, V3|H4|VALUE1|FLIPPED
                vdpSpell 64, 24,  SPELLTILE49, V3|H4|VALUE1|FLIPPED
                vdpSpell 64,  0,  SPELLTILE61, V3|H4|VALUE1|FLIPPED
				
				; Frame B (flipped)
                vdpSpell  0, 24,  SPELLTILE73, V3|H4|VALUE1|FLIPPED
                vdpSpell  0,  0,  SPELLTILE85, V3|H4|VALUE1|FLIPPED
                vdpSpell 32, 24,  SPELLTILE97, V3|H4|VALUE1|FLIPPED
                vdpSpell 32,  0, SPELLTILE109, V3|H4|VALUE1|FLIPPED
                vdpSpell 64, 24, SPELLTILE121, V3|H4|VALUE1|FLIPPED
                vdpSpell 64,  0, SPELLTILE133, V3|H4|VALUE1|FLIPPED
				
graphic_ThunderBreath_LeftToRight: ; This version is intended for enemy monsters
				; Frame A
				; TODO
				
				; Frame B
				; TODO

				; Frame A (flipped)
				; TODO

				; Frame B (flipped)
				; TODO