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
                ; lea     graphic_WindWedge_(pc), a0
                ; moveq   #38,d0 
                ; bsr.w   ConstructSimpleGraphic
                addq.w  #1,2(a5)		; move to stage 1
                bra.w   @UpdateDone
@Stage1:
                subq.w  #1,d0
                bne.w   @Stage2		; we are actually on stage 2
                cmpi.w  #4,(a5)		; this is a delay probably
                bcs.w   @UpdateDone
                moveq   #39,d0		; construct complex graphic starting at VDP sprite 39
                moveq   #2,d1		; complex graphic has 2 sprites
                clr.w   d2			; ???
                clr.w   d3			; ???
                lea     graphic_BlastCyclone_(pc), a0
                bsr.w   ConstructComplexGraphic       
                sndCom  SFX_DESOUL_HOVERING
                addq.w  #1,2(a5)	; move to stage 2
                bra.w   @UpdateDone
@Stage2:
                
                cmpi.w  #6,(a5)
                bne.s   @CycloneMoveSprites
                move.w  #1,(a4)
                clr.l   VDPSPRITE_OFFSET_SIZE(a4) ; clear size, link, and tile
                move.w  #1,VDPSPRITE_OFFSET_X(a4)
@CycloneMoveSprites:
                
                addq.w  #VDP_SPRITE_ENTRY_SIZE,a4
                move.w  4(a5),d0
                subq.w  #2,d0
                andi.w  #BYTE_MASK,d0
                move.w  d0,4(a5)
                move.w  #$3000,d1
                jsr     (sub_17EC).w  ; Do stuff with d2  
                addi.w  #216,d2 
                move.w  d2,VDPSPRITE_OFFSET_X(a4)
                move.w  d2,NEXTVDPSPRITE_OFFSET_X(a4)
                swap    d2
                addi.w  #164,d2 
                move.w  d2,(a4)
                addi.w  #32,d2 
                move.w  d2,NEXTVDPSPRITE_OFFSET_Y(a4)
                btst    #0,1(a5)
                bne.s   @CheckImpact
                move.w  6(a5),d0
                addq.w  #1,d0
                cmpi.w  #3,d0
                bcs.s   @CycloneNextFrame
                clr.w   d0
@CycloneNextFrame:
                
                move.w  d0,6(a5)
                lsl.w   #5,d0
                addi.w  #SPELLTILE_START+43|VDPTILE_PALETTE3|VDPTILE_PRIORITY,d0 ; offset to cyclone graphics
                move.w  d0,VDPSPRITE_OFFSET_TILE(a4)
                addi.w  #16,d0
                move.w  d0,NEXTVDPSPRITE_OFFSET_TILE(a4)
@CheckImpact:
                cmpi.w  #26,(a5)					; Frame delay condition
                bne.w   @UpdateDone
                clr.b   ((byte_FFB588-$1000000)).w	; Impact frame
@UpdateDone:
                cmpi.w  #34,(a5) 					; Frame delay condition
                bcc.w   ReinitializeSceneAfterSpell	; End of spell animation
                rts

    ; End of function spellanimationUpdate_PhoenixAttack

;graphic_WindWedge_:
;                vdpSpell 253, 221, SPELLTILE192, V4|H4|VALUE2|MIRRORED|FLIPPED
                
graphic_BlastCyclone_:
                vdpSpell 110, 78, SPELLTILE44, V4|H4|VALUE2
                vdpSpell 110, 110, SPELLTILE60, V4|H4|VALUE2
