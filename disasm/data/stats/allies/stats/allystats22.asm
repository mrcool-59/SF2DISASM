
; ASM FILE data\stats\allies\stats\allystats22.asm :
; 0x1EE6FB..0x1EE726 : Ally stats 22
AllyStats22:    forClass  VICR
                hpGrowth  30, 81, LINEAR
                mpGrowth  35, 80, LINEAR
                attGrowth 18, 42, LINEAR
                defGrowth 18, 59, LATE
                agiGrowth 22, 58, LINEAR
                spellList &
                    1, HEAL, &
                    5, DETOX, &
                    13, HEAL|LV2, &
                    17, DETOX|LV2, &
                    27, HEAL|LV3, &
                    33, AURA, &
                    35, DETOX|LV3, &
                    38, AURA|LV2, &
                    40, ATTACK, &
                    44, AURA|LV3, &
                    48, DETOX|LV4, &
                    50, AURA|LV4, &
                    53, HEAL|LV4
                
