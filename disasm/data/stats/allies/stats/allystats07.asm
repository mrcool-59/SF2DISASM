
; ASM FILE data\stats\allies\stats\allystats07.asm :
; 0x1EE476..0x1EE498 : Ally stats 07
AllyStats07:    forClass  PHNK ; BRDK
                hpGrowth  12, 64, LINEAR
                mpGrowth  3, 15, LINEAR
                attGrowth 10, 70, LINEAR
                defGrowth 7, 31, LINEAR
                agiGrowth 4, 30, LINEAR
                spellList &
                    10, DRAGON_BREATH, &
                    15, DRAGON_BREATH|LV2, &
                    25, DRAGON_BREATH|LV3, &
                    45, DRAGON_BREATH|LV4
                
                forClass  PHNX ; BRDR
                hpGrowth  35, 140, LATE
                mpGrowth  6, 32, LINEAR
                attGrowth 50, 120, LATE
                defGrowth 26, 82, LINEAR
                agiGrowth 20, 55, LINEAR
                useFirstSpellList
                
