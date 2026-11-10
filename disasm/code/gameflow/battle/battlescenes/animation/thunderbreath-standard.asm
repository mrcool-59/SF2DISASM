; =============== S U B R O U T I N E =======================================


spellanimationSetup_ThunderBreath:
                
                bsr.w   ClearSpellanimationProperties
                moveq   #SPELLTILESET_THUNDER_BREATH,d0
                bsr.w   LoadSpellTileset
                moveq   #1,d0
                bsr.w   sub_1A2F6  ; Write a bunch of spell animation properties... (seems to reset to initial state)
                move.w  #100,((byte_FFB404-$1000000)).w
                move.b  #SPELLANIMATION_THUNDER_BREATH,((CURRENT_SPELLANIMATION-$1000000)).w
                move.b  #1,((byte_FFB585-$1000000)).w
                move.b  #1,((UPDATE_SPELLANIMATION_TOGGLE-$1000000)).w
                move.b  #1,((byte_FFB588-$1000000)).w	; Used to tell the engine when spell should impact
                bra.w   StoreBattlespritePalette

    ; End of function spellanimationSetup_ThunderBreath

