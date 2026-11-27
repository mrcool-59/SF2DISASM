
; ASM FILE data\battles\spritesets\spriteset34.asm :
; 0x1B5BCC..0x1B5D76 : Battle Spritesets 34
BattleSpriteset34:
                ; # Allies
                dc.b 12
                ; # Enemies
                dc.b 19
                ; # AI Regions
                dc.b 6
                ; # AI Points
                dc.b 1
                
                ; Allies
                allyCombatant 0, 24, 25
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 1, 25, 25
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 2, 25, 26
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 3, 26, 25
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 4, 26, 26
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 5, 24, 26
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 6, 23, 26
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 7, 23, 25
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 8, 23, 24
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 9, 24, 24
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 10, 25, 24
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 11, 26, 24
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                ; Enemies
                enemyCombatant CAMEELA, 11, 5
                combatantAiAndItem LEADER, NOTHING
                combatantBehavior MOVE_TO|0, 4, MOVE_TO|0, 5, 0, STARTING
                
                enemyCombatant NECROMANCER, 10, 4
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 15, NONE, 15, 0, STARTING
                
                enemyCombatant SHAMAN, 12, 4
                combatantAiAndItem HEALER5, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 15, NONE, 15, 0, STARTING
                
                enemyCombatant CERBERUS, 18, 17
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|4, 15, NONE, 15, 0, STARTING
                
                enemyCombatant PEGASUS_KNIGHT, 17, 17
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                enemyCombatant BOW_MASTER, 17, 18
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|4, 15, NONE, 15, 0, STARTING
                
                enemyCombatant MUD_MAN, 16, 10
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|7, 0, FOLLOW_ENEMY|7, 3, 0, STARTING
                
                enemyCombatant DRAGONEWT, 14, 14
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 0, FOLLOW_TARGET|0, 3, 0, STARTING
                
                enemyCombatant MUD_MAN, 10, 16
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|7, 0, FOLLOW_ENEMY|7, 3, 0, STARTING
                
                enemyCombatant MUD_MAN, 17, 6
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 1, FOLLOW_TARGET|0, 3, 0, STARTING
                
                enemyCombatant CERBERUS, 17, 8
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|9, 1, FOLLOW_ENEMY|9, 3, 0, STARTING
                
                enemyCombatant PEGASUS_KNIGHT, 12, 14
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|10, 1, FOLLOW_ENEMY|10, 3, 0, STARTING
                
                enemyCombatant BOW_MASTER, 14, 12
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 1, FOLLOW_TARGET|0, 3, 0, STARTING
                
                enemyCombatant DRAGONEWT, 6, 17
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|12, 1, FOLLOW_ENEMY|12, 3, 0, STARTING
                
                enemyCombatant PEGASUS_KNIGHT, 4, 17
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|13, 1, FOLLOW_ENEMY|13, 3, 0, STARTING
                
                enemyCombatant DRAGONEWT, 17, 4
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 8, 17
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 2, NONE, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 10, 6
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 1, NONE, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 12, 6
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 1, NONE, 15, 0, STARTING
                
                ; AI Regions
                dc.b 4
                dc.b 0
                dc.b 31, 0
                dc.b 0, 31
                dc.b 15, 31
                dc.b 31, 15
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 31, 0
                dc.b 0, 31
                dc.b 7, 31
                dc.b 31, 7
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 31
                dc.b 9, 31
                dc.b 25, 0
                dc.b 0
                dc.b 0
                
                dc.b 3
                dc.b 0
                dc.b 0, 0
                dc.b 0, 31
                dc.b 31, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 19
                dc.b 8, 19
                dc.b 8, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 8, 0
                dc.b 8, 19
                dc.b 22, 5
                dc.b 22, 0
                dc.b 0
                dc.b 0
                
                ; AI Points
                dc.b 7, 7
                
