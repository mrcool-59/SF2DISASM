
; ASM FILE data\stats\allies\stats\allystats25.asm :
; 0x1EE748..0x1EE771 : Ally stats 25
AllyStats25:    forClass  MMNK
                hpGrowth  29, 79, LINEAR
                mpGrowth  35, 72, LINEAR
                attGrowth 19, 36, LINEAR
                defGrowth 19, 61, EARLYANDLATE
                agiGrowth 21, 62, LINEAR
                spellList &
                    1, HEAL, &
                    5, HEAL|LV2, &
                    7, BLAST, &
                    11, MUDDLE, &
                    18, BLAST|LV2, &
                    20, BOOST, &
                    34, MUDDLE|LV2, &
                    37, BLAST|LV3, &
                    40, HEAL|LV3, &
                    43, BOOST|LV2, &
                    46, BLAST|LV4, &
                    50, HEAL|LV4
                
