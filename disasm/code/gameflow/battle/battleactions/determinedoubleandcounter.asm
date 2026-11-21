
; ASM FILE code\gameflow\battle\battleactions\determinedoubleandcounter.asm :
; 0xB00E..0xB080 : Write Battlescene Command : Determine Double And Counter function

; =============== S U B R O U T I N E =======================================

; In: a2 = battlescene script stack frame
;     a4 = actor index pointer
;     a5 = target index pointer

allCombatantsCurrentHpTable = -24
debugDodge = -23
debugCritical = -22
debugDouble = -21
debugCounter = -20
explodingActor = -17
explode = -16
specialCritical = -15
ineffectiveAttackToggle = -14
doubleAttack = -13
counterAttack = -12
silencedActor = -11
stunInaction = -10
curseInaction = -9
muddledActor = -8
targetIsOnSameSide = -7
rangedAttack = -6
dodge = -5
targetDies = -4
criticalHit = -3
inflictAilment = -2
cutoff = -1

battlesceneScript_DetermineDoubleAndCounter:
                
			if (STANDARD_BUILD&AGILITY_AFFECTS_DOUBLE_ATTACK=1)
                movem.l d3-d4,-(sp)
				
				move.b  (a4),d0
                bsr.w   GetCurrentAGI
                andi.w  #TURN_AGILITY_MASK,d1
                move.w  d1,d4                   ; d4.w = attacker's AGI
                move.b  (a5),d0
                bsr.w   GetCurrentAGI
                andi.w  #TURN_AGILITY_MASK,d1
                move.w  d1,d3                   ; d3.w = target's AGI
				
                move.b  (a4),d0          ; evaluate chance to double attack
                jsr     GetCurrentProwess
                lsr.b   #PROWESS_LOWER_DOUBLE_SHIFT_COUNT,d1
                move.w  #8,d0            ; 1/32 chance to double attack if setting value is 0
                andi.w  #PROWESS_MASK_LOWER_DOUBLE_OR_COUNTER,d1
                beq.w   @DetermineDouble
                move.w  #16,d0           ; 1/16 if setting value is 1
                cmpi.b  #1,d1
                beq.w   @DetermineDouble
                move.w  #32,d0           ; 1/8 if setting value is 2
                cmpi.b  #2,d1
                beq.w   @DetermineDouble
                move.w  #64,d0           ; 1/4 otherwise
@DetermineDouble:

				sub.w   d3,d4			; d4 = attacker's AGI - target's AGI
				muls.w  #8,d4
				add.w   #64,d4			; d4 = [ (attacker's AGI - target's AGI) * 8 ] + 64
				
				; Cap d4 to 0..128
				tst.w   d4
				bpl.s   @AboveMinimum
				clr.w   d4
			@AboveMinimum:
				cmp.w	#128,d4
				bmi.s   @BelowMaximum
				move.w  #128,d4
			@BelowMaximum:

				; Multiply chance of double attack from x0 up to x2, when AGI difference is -8..+8
				move.w  d0,d1			 ; d1 = chance to double attack
				mulu.w  d4,d1
				lsr.w   #6,d1			 ; d1 = adjusted chance to double attack (multiply d1 by d4 then divide by 64)
				
                movem.l (sp)+,d3-d4
				
				move.w  #256,d0			 ; d0 = random range (0..255)
                jsr     (GenerateRandomOrDebugNumber).w
				
				cmp.w   d1,d0			 ; evaluate [random 0..255] - [chance to double attack], if negative double attack triggers
                bpl.s   @EvaluateChanceToCounter
                move.b  #-1,doubleAttack(a2)
			
			else
                move.b  (a4),d0         ; evaluate chance to double attack
                jsr     GetCurrentProwess
                lsr.b   #PROWESS_LOWER_DOUBLE_SHIFT_COUNT,d1
                moveq   #32,d0          ; 1/32 chance to double attack if setting value is 0
                andi.w  #PROWESS_MASK_LOWER_DOUBLE_OR_COUNTER,d1
                beq.w   @DetermineDouble
                moveq   #16,d0          ; 1/16 if setting value is 1
                cmpi.b  #1,d1
                beq.w   @DetermineDouble
                moveq   #8,d0           ; 1/8 if setting value is 2
                cmpi.b  #2,d1
                beq.w   @DetermineDouble
                moveq   #4,d0           ; 1/4 otherwise
@DetermineDouble:
                
                jsr     (GenerateRandomOrDebugNumber).w
                tst.w   d0
                bne.s   @EvaluateChanceToCounter
                move.b  #-1,doubleAttack(a2)
			endif
			
@EvaluateChanceToCounter:
                
                move.b  (a5),d0         ; evaluate chance to counter using same mechanism as above
                jsr     GetCurrentProwess
                lsr.b   #PROWESS_LOWER_COUNTER_SHIFT_COUNT,d1
                moveq   #32,d0
                andi.w  #PROWESS_MASK_LOWER_DOUBLE_OR_COUNTER,d1
                beq.w   @DetermineCounter
                moveq   #16,d0
                cmpi.b  #1,d1
                beq.w   @DetermineCounter
                moveq   #8,d0
                cmpi.b  #2,d1
                beq.w   @DetermineCounter
                moveq   #4,d0
@DetermineCounter:
                
                jsr     (GenerateRandomOrDebugNumber).w
                tst.w   d0
                bne.s   @Return
                move.b  #-1,counterAttack(a2)
@Return:
                
                rts

    ; End of function battlesceneScript_DetermineDoubleAndCounter

