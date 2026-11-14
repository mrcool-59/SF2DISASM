
; ASM FILE data\stats\randomattackspells-standard.asm :

; Classes that have a chance to cast a spell when attacking.
table_RandomAttackSpellsForWeapons:
                
                ; Item index, n/256 (0 = 256) chance to cast, upgrade levels 1, 2, 3 (effective level), spell index
                
                ; Attack is replaced with Bolt level 2 with 100% chance while the Taros Sword is equipped.
                ;dc.b ITEM_TAROS_SWORD, 0, 0, -1, -1, SPELL_BOLT
                
                tableEnd.b


; Classes that have a chance to cast a spell when attacking.
table_RandomAttackSpellsForClasses:
                
                ; Class index, n/256 (0 = 256) chance to cast, upgrade levels 1, 2, 3 (effective level), spell index
                
                ; Kiwi's flame breath replaces Kiwi's attack with 35% chance, upgrading at promoted levels 12, 20, and 28.
                dc.b CLASS_MNST, 90, 32, 40, 48, SPELL_KIWI
                
				; Sunny's dragon breath (35% chance)
				dc.b CLASS_34, 90, 25, 34, 46, SPELL_DRAGON_BREATH
				
                tableEnd.b


; Same as above, but for enemies.
table_RandomAttackSpellsForEnemies:
                
                ; Enemy index, n/256 (0 = 256) chance to cast, upgrade levels 1, 2, 3 (effective level), spell index
                
                ; Odd Eye Beam level 1 replaces Odd Eye's attack with 50% chance.
                ;dc.b ENEMY_ODD_EYE, 128, -1, -1, -1, SPELL_ODDEYE
                
                tableEnd.b


; Spell roulette mechanic (for SDRG class)
table_SpellRoulette:
				; (Header) Number of entries, number of rolls before failure, spell in case of failure
				dc.b 17, 20, SPELL_KIWI|SPELL_LV4
				
				; Min level, max level, spell entry
                dc.b 20, 25, SPELL_SNOW|SPELL_LV1
                dc.b 20, 29, SPELL_KIWI|SPELL_LV1
                dc.b 20, 29, SPELL_BOLT|SPELL_LV2
                dc.b 20, 37, SPELL_BLAST|SPELL_LV3
                dc.b 22, 39, SPELL_BLAZE|SPELL_LV3
                dc.b 24, 41, SPELL_FREEZE|SPELL_LV3
                dc.b 26, 33, SPELL_SNOW|SPELL_LV2
                dc.b 30, 37, SPELL_KIWI|SPELL_LV2
                dc.b 30, 47, SPELL_BOLT|SPELL_LV3
                dc.b 34, 43, SPELL_SNOW|SPELL_LV3
                dc.b 38, 45, SPELL_KIWI|SPELL_LV3
                dc.b 38, 99, SPELL_BLAST|SPELL_LV4
                dc.b 40, 99, SPELL_BLAZE|SPELL_LV4
                dc.b 42, 99, SPELL_FREEZE|SPELL_LV4
                dc.b 44, 99, SPELL_SNOW|SPELL_LV4
                dc.b 46, 99, SPELL_KIWI|SPELL_LV4
                dc.b 48, 99, SPELL_BOLT|SPELL_LV4

				; I considered adding SPELL_DEMON (LV1 and LV2), but the player side
				; animation is not implemented and I didn't want to bother :3

                tableEnd.b

