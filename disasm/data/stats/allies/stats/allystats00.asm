
; ASM FILE data\stats\allies\stats\allystats00.asm :
; 0x1EE2F0..0x1EE31C : Ally stats 00
AllyStats00:    
; Syntax        forClass  [CLASS_]enum
;               hpGrowth  start, projected, [GROWTHCURVE_]enum
;               mpGrowth  start, projected, [GROWTHCURVE_]enum
;               attGrowth start, projected, [GROWTHCURVE_]enum
;               defGrowth start, projected, [GROWTHCURVE_]enum
;               agiGrowth start, projected, [GROWTHCURVE_]enum
;               spellList parameter, [SPELL_]enum[|level],..parameter, [SPELL_]enum[|level]
;                    *or* useFirstSpellList
;
;    parameter: Level which spell is learned at.
;
;        level: LV1 = 0 (default when omitted)
;               LV2 = 64
;               LV3 = 128
;               LV4 = 192
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                forClass  SDMN
                hpGrowth  112, 158, LINEAR
                mpGrowth  108, 116, EARLY
                attGrowth 106, 140, LINEAR
                defGrowth 104, 136, LINEAR
                agiGrowth 104, 132, EARLY
                spellList &
                    1, EGRESS, &
                    22, BOLT, &
                    31, BOLT|LV2, &
                    42, BOLT|LV3, &
                    51, BOLT|LV4
                
                forClass  HERO
                hpGrowth  142, 182, LINEAR
                mpGrowth  114, 123, EARLY
                attGrowth 128, 157, LINEAR
                defGrowth 125, 193, LINEAR
                agiGrowth 124, 157, EARLYANDLATE
                useFirstSpellList
                
