
; ASM FILE data\battles\spritesets\spriteset35.asm :
; 0x1B5D76..0x1B5F14 : Battle Spritesets 35
BattleSpriteset35:
                ; # Allies
                dc.b 12
                ; # Enemies
                dc.b 18
                ; # AI Regions
                dc.b 4
                ; # AI Points
                dc.b 1
                
                ; Allies
                allyCombatant 0, 41, 15
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 1, 41, 14
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 2, 40, 14
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 3, 39, 14
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 4, 41, 13
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 5, 40, 13
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 6, 39, 13
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 7, 40, 15
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 8, 39, 15
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 9, 38, 13
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 10, 38, 14
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 11, 38, 15
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                ; Enemies
                enemyCombatant BOW_RIDER, 23, 25
                combatantAiAndItem LEADER, NOTHING
                combatantBehavior MOVE_TO|0, 0, NONE, 15, 0, STARTING
                
                enemyCombatant CHAOS_WIZARD, 22, 24
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 15, 0, STARTING
                
                enemyCombatant SHAMAN, 23, 27
                combatantAiAndItem HEALER5, NOTHING
                combatantBehavior FOLLOW_ENEMY|0, 0, NONE, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 24, 24
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 15, NONE, 15, 0, STARTING
                
                enemyCombatant PURPLE_WORM, 24, 27
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|3, 15, NONE, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 23, 26
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|7, 15, NONE, 15, 0, STARTING
                
                enemyCombatant PURPLE_WORM, 24, 25
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|7, 15, NONE, 15, 0, STARTING
                
                enemyCombatant GRIFFIN, 23, 23
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 15, FOLLOW_TARGET|0, 15, 0, STARTING
                
                enemyCombatant DRAGONEWT, 22, 25
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior NONE, 1, NONE, 2, 0, STARTING
                
                enemyCombatant MIST_DEMON, 22, 23
                combatantAiAndItem HEALER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|8, 1, FOLLOW_ENEMY|8, 2, 0, STARTING
                
                enemyCombatant GRIFFIN, 22, 26
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 1, FOLLOW_TARGET|0, 2, 0, STARTING
                
                enemyCombatant MIST_DEMON, 23, 24
                combatantAiAndItem HEALER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|10, 1, FOLLOW_ENEMY|10, 2, 0, STARTING
                
                enemyCombatant PURPLE_WORM, 24, 26
                combatantAiAndItem ATTACKER3, NOTHING
                combatantBehavior FOLLOW_ENEMY|10, 1, FOLLOW_ENEMY|10, 2, 0, STARTING
                
                enemyCombatant MUD_MAN, 26, 21
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 3, NONE, 15, 0, HIDDEN
                
                enemyCombatant MUD_MAN, 29, 21
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 3, NONE, 15, 0, HIDDEN
                
                enemyCombatant MUD_MAN, 31, 24
                combatantAiAndItem ATTACKER2, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 3, NONE, 15, 0, HIDDEN
                
                enemyCombatant MUD_MAN, 28, 28
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 3, NONE, 15, 0, HIDDEN
                
                enemyCombatant MUD_MAN, 21, 29
                combatantAiAndItem ATTACKER1, NOTHING
                combatantBehavior FOLLOW_TARGET|0, 3, NONE, 15, 0, HIDDEN
                
                ; AI Regions
                dc.b 4
                dc.b 0
                dc.b 20, 20
                dc.b 20, 31
                dc.b 31, 31
                dc.b 31, 20
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 31
                dc.b 21, 31
                dc.b 21, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 21, 0
                dc.b 22, 31
                dc.b 47, 31
                dc.b 47, 25
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 19, 21
                dc.b 19, 28
                dc.b 29, 28
                dc.b 29, 21
                dc.b 0
                dc.b 0
                
                ; AI Points
                dc.b 23, 25
                
