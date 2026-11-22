
; ASM FILE data\stats\allies\stats\allystats06.asm :
; 0x1EE454..0x1EE476 : Ally stats 06
AllyStats06:    forClass  TORT
                hpGrowth  10, 25, LINEAR
                mpGrowth  0, 0, NONE
                attGrowth 6, 57, LINEAR
                defGrowth 12, 55, LINEAR
                agiGrowth 4, 28, LINEAR
                spellList 
                
                forClass  MNST
                hpGrowth  20, 60, LINEAR
                mpGrowth  0, 0, NONE
                attGrowth 45, 111, LINEAR
                defGrowth 41, 100, LINEAR
                agiGrowth 20, 55, LINEAR
                spellList 
                
                forClass  CLASS_35	; SDRG
                hpGrowth  30, 125, LATE
                mpGrowth  0, 0, NONE
                attGrowth 30, 90, LINEAR
                defGrowth 30, 75, LINEAR
                agiGrowth 25, 65, LINEAR
                spellList 
                
