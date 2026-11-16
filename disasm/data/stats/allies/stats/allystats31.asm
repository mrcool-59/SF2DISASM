
AllyStats31:    forClass  CLASS_34	; Gold Dragon
                hpGrowth  68, 116, LATE
                mpGrowth  40, 80, LATE
                attGrowth 58, 103, LINEAR
                defGrowth 45, 69, LINEAR
                agiGrowth 33, 63, LINEAR
                spellList &
                     1, BOLT|LV1, &
                     7, AURA|LV1, &
                    14, THUNDER_BREATH|LV1, &
                    22, BOLT|LV2, &
                    26, THUNDER_BREATH|LV2, &
					29, AURA|LV2, &
                    33, BOLT|LV3, &
                    36, THUNDER_BREATH|LV3, &
                    39, SLEEP|LV1, &
                    42, AURA|LV3, &
					45, BOLT|LV4, &
                    48, THUNDER_BREATH|LV4, &
                    52, AURA|LV4
					

table_SunnyBattle4Stats:
	dc.b 0  ; Level (20)
	dc.b 50 ; HP
	dc.b 50	; MP
	dc.b 28 ; ATT
	dc.b 5  ; DEF (+5 from Protect Ring)
	dc.b 15+128 ; AGI (double turn)
	dc.b 4  ; MOV
	align


table_SunnyPlayerStats:
	dc.b 10 ; Level (30)
	dc.b 80 ; HP
	dc.b 50	; MP
	dc.b 73 ; ATT
	dc.b 53 ; DEF (+5 from Protect Ring)
	dc.b 42 ; AGI
	dc.b 7  ; MOV
	align


SetBattle4SunnyStats:
	move.w	#ALLY_31,d0
	lea		table_SunnyBattle4Stats(pc),a0
	jmp		SetMainStats
	
	
SetPlayerSunnyStats:
	move.w	#ALLY_31,d0
	lea		table_SunnyPlayerStats(pc),a0
	jmp		SetMainStats
