
; ASM FILE code\gameflow\battle\battlescenes\animation\flamebreath.asm :
; 0x1AD3E..0x1ADA4 : Battlescene engine

; =============== S U B R O U T I N E =======================================


spellanimationSetup_FlameBreath:
                
                move.w  d1,-(sp)
                bsr.w   ClearSpellanimationProperties
                moveq   #SPELLTILESET_FLAME_BREATH,d0
                bsr.w   LoadSpellTileset
                move.w  (sp)+,d1
                lea     ((byte_FFB532-$1000000)).w,a1
                bclr    #SPELLANIMATION_BIT_MIRRORED,d1
                bne.s   @IsEnemy
                
				; Ally cone limits
                move.w  #64,(a1) 
                move.w  #128,2(a1) 
				
				; Sunny cone limits
                cmp.w   #ALLYBATTLESPRITE_SUNNY,((BATTLESCENE_ALLYBATTLESPRITE-$1000000)).w
                bne.s   @Continue
				move.w  #88,(a1)
				move.w  #136,2(a1)
                bra.s   @Continue
@IsEnemy:
                ; Enemy cone limits
                move.w  #192,(a1) 
                clr.w   2(a1)
@Continue:
                
                andi.w  #7,d1
                add.w   d1,d1 ; double animation variant
                addi.w  #44,d1 ; 46/48/50/52 [this is how long each particle is alive]
                move.w  d1,4(a1)
                moveq   #1,d0
                bsr.w   sub_1A2F6       
                move.w  (a1),2(a0)
                move.w  #-1,((SPELLANIMATION_COUNTDOWN-$1000000)).w
                move.b  #SPELLANIMATION_FLAME_BREATH,((CURRENT_SPELLANIMATION-$1000000)).w
                move.b  #1,((SPELLANIMATION_STATE-$1000000)).w
                move.b  #1,((UPDATE_SPELLANIMATION_TOGGLE-$1000000)).w
                move.b  #1,((SPELLANIMATION_HIT_TRIGGER-$1000000)).w
                bra.w   StoreBattlespritePalette

    ; End of function spellanimationSetup_FlameBreath

