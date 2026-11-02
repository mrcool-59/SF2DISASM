
; ASM FILE data\stats\items\healerclasses-standard.asm :

; Classes that earn EXP when casting HP or MP recovery spells.
table_HealerClasses:
                dc.b CLASS_PRST
                dc.b CLASS_VICR
                dc.b CLASS_MMNK
				dc.b CLASS_32	; Phoenix Kid
				dc.b CLASS_33	; Phoenix
                dc.b CLASS_34	; Gold Dragon
                
                tableEnd.b
