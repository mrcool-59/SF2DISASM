
BattleSpriteset45:
				; # Allies
				dc.b 12
				; # Enemies
				dc.b 14
				; # AI Regions
				dc.b 0
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
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant BLACK_MONK, 4, 5
				combatantAiAndItem HEALER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|0, 0, FOLLOW_ENEMY|0|0, 15, 0, STARTING

				enemyCombatant BLACK_MONK, 16, 5
				combatantAiAndItem HEALER3, NOTHING
				combatantBehavior FOLLOW_ENEMY|9, 0, FOLLOW_ENEMY|9|0, 15, 0, STARTING

				enemyCombatant CERBERUS, 4, 12
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant BOW_MASTER, 5, 9
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant CERBERUS, 15, 4
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant HOBGOBLIN, 5, 7
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant MASTER_MAGE, 16, 7
				combatantAiAndItem ATTACKER2, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant DEVIL_SOLDIER, 13, 5
				combatantAiAndItem ATTACKER3, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant LIZARDMAN, 15, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant DEVIL_SOLDIER, 15, 10
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant LIZARDMAN, 8, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant BOW_MASTER, 10, 5
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING

				enemyCombatant MASTER_MAGE, 6, 6
				combatantAiAndItem ATTACKER1, NOTHING
				combatantBehavior FOLLOW_TARGET|11, 0, FOLLOW_TARGET|11|0, 15, 0, STARTING


				; AI Regions

