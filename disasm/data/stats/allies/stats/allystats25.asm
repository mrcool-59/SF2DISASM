
; ASM FILE data\stats\allies\stats\allystats25.asm :
; 0x1EE748..0x1EE771 : Ally stats 25
AllyStats25:    forClass  MMNK
                hpGrowth  33, 83, LINEAR
                mpGrowth  35, 72, LINEAR
                attGrowth 25, 42, LINEAR
                defGrowth 23, 65, EARLYANDLATE
                agiGrowth 25, 66, LINEAR
                spellList &
                    1, HEAL, &
                    5, HEAL|LV2, &
                    7, BLAST, &
                    11, MUDDLE, &
                    18, BLAST|LV2, &
                    20, BOOST, &
                    30, MUDDLE|LV2, &
                    33, BLAST|LV3, &
                    36, HEAL|LV3, &
                    39, BOOST|LV2, &
                    42, BLAST|LV4, &
                    46, HEAL|LV4, &
                    50, BOOST|LV3
                
