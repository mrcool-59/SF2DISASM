
; ASM FILE data\stats\allies\stats\allystats07.asm :
; 0x1EE476..0x1EE498 : Ally stats 07
AllyStats07:    forClass  PHNK ; BRDK
                hpGrowth  12, 64, LINEAR
                mpGrowth  3, 15, LINEAR
                attGrowth 10, 70, LINEAR
                defGrowth 8, 33, LINEAR
                agiGrowth 4, 30, LINEAR
                spellList &
                    10, DRAGON_BREATH, &
                    15, DRAGON_BREATH|LV2, &
                    25, DRAGON_BREATH|LV3, &
                    40, DRAGON_BREATH|LV4
                
                forClass  PHNX ; BRDR
                hpGrowth  35, 140, LINEAR
                mpGrowth  6, 32, LINEAR
                attGrowth 49, 125, LATE
                defGrowth 28, 85, LINEAR
                agiGrowth 21, 57, LINEAR
                useFirstSpellList
                
