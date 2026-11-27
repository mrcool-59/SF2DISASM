; ASM FILE data\battles\spritesets\spriteset45-standard.asm :
; --- : Battle Spritesets 45
BattleSpriteset45:
				; # Allies
				dc.b 12
				; # Enemies
				dc.b 14
				; # AI Regions
				dc.b 1
				; # AI Points
				dc.b 0

				; Allies
				allyCombatant 0, 11, 11
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 1, 10, 14
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 2, 12, 14
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 3, 11, 13
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 4, 12, 13
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 5, 10, 13
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 6, 10, 12
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 7, 11, 12
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 8, 12, 12
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 9, 10, 11
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 10, 12, 11
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING

				allyCombatant 11, 11, 14
				combatantAiAndItem HEALER1, NOTHING
				combatantBehavior NONE, 15, NONE, 15, 0, STARTING


				; Enemies
				enemyCombatant MINOTAUR, 3, 4
				combatantAiAndItem LEADER, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant MASTER_MONK, 4, 5
				combatantAiAndItem HEALER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 15, 0, STARTING

				enemyCombatant MASTER_MONK, 16, 5
				combatantAiAndItem HEALER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|9, 0, NONE, 15, 0, STARTING

				enemyCombatant CERBERUS, 4, 10
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant BOW_MASTER, 4, 12
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant HARPY_QUEEN, 15, 4
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant EXECUTIONER, 4, 11
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant WIZARD, 16, 7
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant DEVIL_SOLDIER, 13, 5
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant DARK_KNIGHT, 15, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant ORC_LORD, 15, 10
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant DRAGONEWT, 7, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant BOW_MASTER, 10, 5
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING

				enemyCombatant NECROMANCER, 4, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, NONE, 15, 0, STARTING


				; AI Regions
				dc.b 4
				dc.b 0
				dc.b 0, 0
				dc.b 0, 15
				dc.b 19, 15
				dc.b 19, 0
				dc.b 0
				dc.b 0


