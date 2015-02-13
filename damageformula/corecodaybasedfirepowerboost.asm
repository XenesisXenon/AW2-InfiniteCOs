;corecodaybasedfirepowerboost.asm
;This creates a firepower boost for COs based on the current day.

CODayBasedFirepowerMultiplier		equ	50	;This is the numerator for the number of days.
CODayBasedFirepowerPowerMultipler	equ	2	;How much to multiply for Power
CODayBasedFirepowerSuperMultipler	equ	3	;How much to multiply for Super

CODayBasedFirepowerBoost:
	push	{r14}
	mov	r2,GatherSpecialEffectsLow
	bl	GatherCOAbility
	ldr	r1,=SpecialDaysIntoFirepower
	and	r1,r0
	cmp	r1,0x0
	beq	CODayBasedFirepowerBoostCheckTwo
	
	mov	r0,CODayBasedFirepowerMultiplier
	b	CODayBasedFirepowerBoostCalculation
	
CODayBasedFirepowerBoostCheckTwo:
	ldr	r1,=SpecialDaysIntoFirepower2
	and	r1,r0
	cmp	r1,0x0
	beq	CODayBasedFirepowerBoostCheckThree
	
	mov	r0,CODayBasedFirepowerMultiplier
	mov	r1,CODayBasedFirepowerPowerMultipler
	mul	r0,r1
	b	CODayBasedFirepowerBoostCalculation	
CODayBasedFirepowerBoostCheckThree:
	ldr	r1,=SpecialDaysIntoFirepower3
	and	r1,r0
	cmp	r1,0x0
	beq	CODayBasedFirepowerBoostFalse
	mov	r0,CODayBasedFirepowerMultiplier
	mov	r1,CODayBasedFirepowerSuperMultipler
	mul	r0,r1
	
CODayBasedFirepowerBoostCalculation:
	ldr	r1,=CurrentGameDay
	ldrh	r1,[r1]
	ldr	r2,=999
	cmp	r1,r2
	blt	CODayBasedFirepowerBoostCalculationNotMaxDays
	mov	r1,r2
CODayBasedFirepowerBoostCalculationNotMaxDays:	
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	b	CODayBasedFirepowerBoostEnd
	
CODayBasedFirepowerBoostFalse:
	mov	r0,0x0
CODayBasedFirepowerBoostEnd:	
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line
