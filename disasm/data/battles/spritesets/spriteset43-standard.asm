; ASM FILE data\battles\spritesets\spriteset43-standard.asm :
; --- : Battle Spritesets 43
BattleSpriteset43:
				; # Allies
				dc.b 12
				; # Enemies
				dc.b 16
				; # AI Regions
				dc.b 1
				; # AI Points
				dc.b 1

				; Allies
				allyCombatant 0, 13, 16
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 1, 14, 16
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 2, 12, 16
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 3, 13, 17
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 4, 14, 17
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 5, 12, 17
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 6, 11, 16
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 7, 11, 17
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 8, 11, 18
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 9, 13, 18
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 10, 12, 18
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 11, 14, 18
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING


				; Enemies
				enemyCombatant ZEON, 13, 6
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				enemyCombatant DEMON_MASTER, 10, 8
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 15, 0, STARTING

				enemyCombatant PYROHYDRA, 16, 8
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 15, 0, STARTING

				enemyCombatant HORSEMAN, 8, 9
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|4, 15, NONE, 15, 0, STARTING

				enemyCombatant ZEON_GUARD, 7, 9
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				enemyCombatant DEMON_MASTER, 4, 10
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|4, 15, NONE, 15, 0, STARTING

				enemyCombatant PYROHYDRA, 7, 12
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|4, 15, NONE, 15, 0, STARTING

				enemyCombatant ZEON_GUARD, 19, 7
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				enemyCombatant PYROHYDRA, 20, 8
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|7, 15, NONE, 15, 0, STARTING

				enemyCombatant ARCH_DEMON, 19, 9
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|7, 15, NONE, 15, 0, STARTING

				enemyCombatant DEMON_MASTER, 16, 13
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior MOVE_TO|0, 15, NONE, 15, 0, STARTING

				enemyCombatant PYROHYDRA, 17, 14
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|10, 15, NONE, 15, 0, STARTING

				enemyCombatant PYROHYDRA, 12, 27
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 15, NONE, 15, 0, STARTING

				enemyCombatant ARCH_DEMON, 3, 25
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 15, NONE, 15, 0, STARTING

				enemyCombatant DEVIL_GRIFFIN, 23, 26
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 15, NONE, 15, 0, STARTING

				enemyCombatant BLUE_SHAMAN_0, 13, 5
				combatantAiAndItem HEALER5, HEALING_RAIN|USABLE_BY_AI|UNUSED_ITEM_DROP
				combatantBehavior NONE, 0, NONE, 15, 0, STARTING


				; AI Regions
				dc.b 4
				dc.b 0
				dc.b 3, 0
				dc.b 10, 12
				dc.b 16, 12
				dc.b 22, 0
				dc.b 0
				dc.b 0


				; AI Points
				dc.b 16, 13

