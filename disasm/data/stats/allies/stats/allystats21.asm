
; ASM FILE data\stats\allies\stats\allystats21.asm :
; 0x1EE6DA..0x1EE6FB : Ally stats 21
AllyStats21:    forClass  SORC
                hpGrowth  29, 77, LINEAR
                mpGrowth  53, 96, LINEAR
                attGrowth 17, 29, LINEAR
                defGrowth 22, 58, LINEAR
                agiGrowth 31, 73, LINEAR
                spellList &
                    17, DAO, &
                    28, APOLLO, &
                    31, DAO|LV2, &
                    35, APOLLO|LV2, &
                    38, NEPTUN, &
                    41, ATLAS, &
                    45, NEPTUN|LV2, &
                    50, ATLAS|LV2
                
