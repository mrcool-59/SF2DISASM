; =============== S U B R O U T I N E =======================================


spellanimationSetup_ThunderBreath:
                
                bsr.w   ClearSpellanimationProperties
				moveq   #SPELLTILESET_THUNDER_BREATH,d0
                bsr.w   LoadSpellTileset
                moveq   #1,d0
                bsr.w   sub_1A2F6	; Write a bunch of spell animation properties... (seems to reset to initial state)
				
                lea     ((SPELLANIMATION_PROPERTIES-$1000000)).w,a1
				addq.w  #1,2(a1)	; Frame delay for the first pulse
				
				move.w  #-1,((byte_FFB404-$1000000)).w 	; No duration limit for this spell animation
                move.b  #SPELLANIMATION_THUNDER_BREATH,((CURRENT_SPELLANIMATION-$1000000)).w
                move.b  #1,((byte_FFB585-$1000000)).w
                move.b  #1,((UPDATE_SPELLANIMATION_TOGGLE-$1000000)).w
                move.b  #1,((byte_FFB588-$1000000)).w	; Used to tell the engine when spell should hit
                bra.w   StoreBattlespritePalette

    ; End of function spellanimationSetup_ThunderBreath

