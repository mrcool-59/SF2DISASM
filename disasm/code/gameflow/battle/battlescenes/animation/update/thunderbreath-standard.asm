; =============== S U B R O U T I N E =======================================


spellanimationUpdate_ThunderBreath:
                
                lea     ((SPELLANIMATION_PROPERTIES-$1000000)).w,a5
                lea     ((SPRITE_38-$1000000)).w,a4
                
                tst.w   (a5)
                beq.w   @UpdateDone
                addq.w  #1,(a5)			; (a5) = Frame counter

				move.w	(a5),d0
				andi.w	#15,d0			; Play sound every 16 frames
				cmpi.w  #2,d0			; Play sound when frame counter is 2, 18, ...
				bne.s	@SkipSound
				sndCom  SFX_BOLT_SPELL
@SkipSound:
				move.w	(a5),d0
				lsr.w	#1,d0			; Change graphic every 2 frames
				andi.w  #3,d0			; We have 4 frames to cycle through
				; TODO: play graphic every 1 frame to see if it's better looking
				
                lea     graphic_ThunderBreath_RightToLeft(pc), a0
				mulu.w  #(VDP_SPELL_ENTRY_SIZE*6),d0
				add.w   d0,a0			; a0 = pointer to the correct frame to display
				
                moveq   #38,d0			; construct complex graphic starting at VDP sprite 38
                moveq   #6,d1			; complex graphic has 6 sprites
				move	#x_player,d2	; set X position of the complex graphic
				move    #y_player,d3	; set Y position of the complex graphic
                bsr.w   ConstructComplexGraphic

@CheckImpact:
                cmpi.w  #60,(a5)					; Frame delay condition
                bne.w   @UpdateDone
                clr.b   ((byte_FFB588-$1000000)).w	; Impact frame
@UpdateDone:
				; TODO: remove this for infinite spell?
                cmpi.w  #80,(a5) 					; Frame delay condition
                bcc.w   ReinitializeSceneAfterSpell	; End of spell animation
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