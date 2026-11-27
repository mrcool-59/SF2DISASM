
; This table is used when ENABLE_CUSTOM_AI_PROBABILITY patch is enabled.
;
; In the original game, the AI uses identical probabilities for every character when it decides between attacking, casting spells and using items.
; There is only 1 hardcoded exception: the AI will always cast AQUA 1 (you can observe this in Kraken fight).
;
; In the original game:
;	If the enemy has to choose between attacking and casting:
;		always cast the spell if it is AQUA 1
;		1/2 chance of casting
;		1/2 chance of attacking
;	If the enemy has to choose between attacking and using item:
;		1/3 chance of using item
;		2/3 chance of attacking
;   If the enemy has to choose between casting and using item: (notice enemy will never pick attack here)
;		1/2 chance of casting
;		1/2 chance of using item
;
; To give more freedom in ROM hacks, the code described above has been redone with two tables.
; You will now be able to have mages cast their spells much more often if you like!
;
; Now, action probability will work using 1/64 increments, using a standardized 0..63 single random number roll.
; The random number roll will be compared to a threshold value as described below.
; The threshold is met if (random number < threshold).
; For spell/item choice: thresholds are evaluated from left to right, and the first one met will be the action picked by AI.
; This means the threshold values must be cumulative.
; If no threshold is met, then the action will be to attack if it's possible.
; Otherwise, it will be casting or use item depending on what is possible. If both are possible, the action is picked randomly.
;
; You can define two tables:
;	- Per movement type (for broad tuning)
;	- Per enemy type (very useful to customize boss behavior or unique enemies)
;
; Table layout:
;	Byte 0 = Table index (either a movement type, or an enemy type)
; Case 1: the enemy can use a spell only:
; 	Byte 1 = Threshold value for casting spell [S]
; Case 2: the enemy can use an item only:
; 	Byte 2 = Threshold value for using item [I]
; Case 3: the enemy can both use a spell and item:
;	Byte 3 = Threshold value for casting spell [S]
;	Byte 4 = Threshold value for using item [I]

table_AIProbabilityPerMoveType:
				;                              S  |  I  |  S - I
                dc.b MOVETYPE_MAGE,           52,   52,   32, 64
                dc.b MOVETYPE_HEALER,         42,   42,   32, 64
                tableEnd.b
				
table_AIProbabilityPerEnemyType:
				;                              S  |  I  |  S - I
				dc.b ENEMY_KRAKEN_HEAD,       64,   64,   32, 64
				dc.b ENEMY_TAROS,             26,   26,   26, 52
				dc.b ENEMY_ZALBARD,           32,   32,   32, 64
				dc.b ENEMY_CAMEELA,           26,   26,   26, 52
				dc.b ENEMY_RED_BARON,         16,   16,   16, 32
				dc.b ENEMY_GESHP,             58,   58,   45, 58
				dc.b ENEMY_ODD_EYE,           26,   26,   26, 52
                tableEnd.b
				
table_AIProbabilityDefault:
				;                              S  |  I  |  S - I
				dc.b                          32,   22,   32, 64
                tableEnd.b