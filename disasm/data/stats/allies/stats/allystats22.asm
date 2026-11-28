
; ASM FILE data\stats\allies\stats\allystats22.asm :
; 0x1EE6FB..0x1EE726 : Ally stats 22
AllyStats22:    forClass  VICR
                hpGrowth  30, 80, LINEAR
                mpGrowth  45, 90, LINEAR
                attGrowth 18, 42, LINEAR
                defGrowth 21, 62, LATE
                agiGrowth 22, 58, LINEAR
                spellList &
                    1, HEAL, &
                    5, DETOX, &
                    11, HEAL|LV2, &
                    15, DETOX|LV2, &
                    21, HEAL|LV3, &
                    25, DETOX|LV3, &
                    27, ATTACK, &
                    29, AURA, &
                    33, AURA|LV2, &
                    36, ATTACK|LV2, &
                    38, AURA|LV3, &
                    45, AURA|LV4, &
                    47, HEAL|LV4, &
                    48, DETOX|LV4, &
					50, ATTACK|LV3
                
