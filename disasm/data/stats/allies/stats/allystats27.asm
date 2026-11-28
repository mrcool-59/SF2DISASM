
; ASM FILE data\stats\allies\stats\allystats27.asm :
; 0x1EE782..0x1EE7AD : Ally stats 27
AllyStats27:    forClass  WIZ
                hpGrowth  30, 85, LINEAR
                mpGrowth  47, 98, LINEAR
                attGrowth 15, 29, LINEAR
                defGrowth 22, 66, MIDDLE
                agiGrowth 32, 63, LINEAR
                spellList &
                    1, BLAZE, &
                    5, FREEZE, &
                    10, BLAZE|LV2, &
                    15, FREEZE|LV2, &
                    20, FREEZE|LV3, &
                    25, BOLT, &
                    30, SLEEP, &
                    32, BOLT|LV2, &
                    34, BLAZE|LV3, &
                    36, FREEZE|LV4, &
                    38, BOLT|LV3, &
                    40, BLAZE|LV4, &
                    43, SLEEP|LV2, &
                    46, BOLT|LV4, &
                    50, SLEEP|LV3
                
