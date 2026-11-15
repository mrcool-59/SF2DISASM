; ASM FILE data\battles\spritesets\spriteset04-standard.asm :
; --- : Battle Spritesets 04
BattleSpriteset04:
				; # Allies
				dc.b 5
				; # Enemies
				dc.b 17
				; # AI Regions
				dc.b 3
				; # AI Points
				dc.b 1

				; Allies
				allyCombatant 0, 6, 6
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 1, 6, 7
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 2, 5, 6
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 3, 5, 7
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 4, 4, 7
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING


				; Enemies
				enemyCombatant LEMON, 17, 21
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior MOVE_TO|0, 2, NONE, 15, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 8, 13
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				enemyCombatant HUGE_BAT, 5, 16
				combatantAiAndItem ATTACKER1, MEDICAL_HERB|USABLE_BY_AI|UNUSED_ITEM_DROP
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				enemyCombatant HUGE_BAT, 8, 23
				combatantAiAndItem ATTACKER3, MEDICAL_HERB|USABLE_BY_AI|UNUSED_ITEM_DROP
				combatantBehavior FOLLOW_TARGET|0, 1, NONE, 15, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 14, 10
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior NONE, 0, NONE, 2, 0, STARTING

				enemyCombatant GALAM_ARCHER, 13, 12
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior NONE, 0, NONE, 2, 0, STARTING

				enemyCombatant GALAM_ARCHER, 10, 15
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior NONE, 0, NONE, 2, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 11, 18
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior NONE, 2, NONE, 15, 0, STARTING

				enemyCombatant HUGE_BAT, 15, 20
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 1, 0, STARTING

				enemyCombatant GALAM_ARCHER, 16, 19
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 1, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 15, 19
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 1, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 11, 23
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 12, 23
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 13, 23
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING

				enemyCombatant GALAM_SOLDIER, 14, 23
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING

				enemyCombatant GALAM_ARCHER, 12, 24
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING

				enemyCombatant GALAM_ARCHER, 13, 24
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|0, 2, NONE, 2, 0, STARTING


				; AI Regions
				dc.b 4
				dc.b 0
				dc.b 7, 0
				dc.b 7, 29
				dc.b 19, 29
				dc.b 19, 0
				dc.b 0
				dc.b 0

				dc.b 4
				dc.b 0
				dc.b 0, 13
				dc.b 0, 29
				dc.b 21, 29
				dc.b 21, 13
				dc.b 0
				dc.b 0

				dc.b 4
				dc.b 0
				dc.b 0, 20
				dc.b 0, 29
				dc.b 20, 29
				dc.b 20, 0
				dc.b 0
				dc.b 0


				; AI Points
				dc.b 17, 21

