; =============== S U B R O U T I N E =======================================


spellanimationUpdate_ThunderBreath:
                
                lea     ((SPELLANIMATION_PROPERTIES-$1000000)).w,a5
                lea     ((SPRITE_38-$1000000)).w,a4
                
                tst.w   (a5)
                beq.w   @UpdateDone
                addq.w  #1,(a5)			; (a5) = Frame counter
                move.w  2(a5),d0		; 2(a5) = Seems to be animation stage
                bne.w   @Stage1
@Stage0:
                addq.w  #1,2(a5)		; move to stage 1
                bra.w   @UpdateDone
@Stage1:
                subq.w  #1,d0
                bne.w   @Stage2		; we are actually on stage 2
                cmpi.w  #4,(a5)		; this is a delay probably
                bcs.w   @UpdateDone
                moveq   #38,d0			; construct complex graphic starting at VDP sprite 38
                moveq   #6,d1			; complex graphic has 6 sprites
				move	#x_player,d2	; set X position of the complex graphic
				move    #y_player,d3	; set Y position of the complex graphic
                lea     graphic_ThunderBreath_RightToLeft(pc), a0
                bsr.w   ConstructComplexGraphic
				sndCom  SFX_BOLT_SPELL
                addq.w  #1,2(a5)	; move to stage 2
                bra.w   @UpdateDone
@Stage2:
                
                ;cmpi.w  #6,(a5)
                ;bne.s   @CycloneMoveSprites
                ;move.w  #1,(a4)		; target sprite 39, probably
;@CycloneMoveSprites:
                
                ;addq.w  #VDP_SPRITE_ENTRY_SIZE,a4
                ;move.w  4(a5),d0
                ;subq.w  #2,d0
                ;andi.w  #BYTE_MASK,d0
                ;move.w  d0,4(a5)
                ;move.w  #$3000,d1
                ;jsr     (sub_17EC).w  ; Do stuff with d2  
                ;addi.w  #216,d2 
                ;move.w  d2,VDPSPRITE_OFFSET_X(a4)
                ;move.w  d2,NEXTVDPSPRITE_OFFSET_X(a4)
                ;swap    d2
                ;addi.w  #164,d2 
                ;move.w  d2,(a4)
                ;;addi.w  #32,d2 
                ;move.w  d2,NEXTVDPSPRITE_OFFSET_Y(a4)
				
                ;btst    #0,1(a5)
                ;bne.s   @CheckImpact
				
				; Every 3 frames, update the 2 cyclone sprites
                ;move.w  6(a5),d0
                ;addq.w  #1,d0
                ;cmpi.w  #3,d0
                ;bcs.s   @CycloneNextFrame
                ;clr.w   d0
;@CycloneNextFrame:
                ;move.w  d0,6(a5)
                ;lsl.w   #5,d0
                ;addi.w  #SPELLTILE_START+43|VDPTILE_PALETTE3|VDPTILE_PRIORITY,d0 ; offset to cyclone graphics
                ;move.w  d0,VDPSPRITE_OFFSET_TILE(a4)
                ;addi.w  #16,d0
                ;move.w  d0,NEXTVDPSPRITE_OFFSET_TILE(a4)
@CheckImpact:
                cmpi.w  #26,(a5)					; Frame delay condition
                bne.w   @UpdateDone
                clr.b   ((byte_FFB588-$1000000)).w	; Impact frame
@UpdateDone:
                cmpi.w  #34,(a5) 					; Frame delay condition
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