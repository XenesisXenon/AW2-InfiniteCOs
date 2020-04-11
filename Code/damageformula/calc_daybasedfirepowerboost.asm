;core@CODayBasedFirepowerBoost.asm
;This creates a firepower boost for COs based on the current day.

FirepowerBoost_DayBased:
	push	{r14}
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	ldr	r1,=SpecialDaysIntoFirepower
	and	r1,r0
	cmp	r1,0x0
	beq	@CODayBasedFirepowerBoostCheckTwo
	
	mov	r0,COStat_DayBasedFirepower_Scale
	b	@CODayBasedFirepowerBoostCalculation
	
@CODayBasedFirepowerBoostCheckTwo:
	ldr	r1,=SpecialDaysIntoFirepower2
	and	r1,r0
	cmp	r1,0x0
	beq	@CODayBasedFirepowerBoostCheckThree
	
	mov	r0,COStat_DayBasedFirepower_Scale
	mov	r1,COStat_DayBasedFirepower_COP
	mul	r0,r1
	b	@CODayBasedFirepowerBoostCalculation	
@CODayBasedFirepowerBoostCheckThree:
	ldr	r1,=SpecialDaysIntoFirepower3
	and	r1,r0
	cmp	r1,0x0
	beq	@CODayBasedFirepowerBoostFalse
	mov	r0,COStat_DayBasedFirepower_Scale
	mov	r1,COStat_DayBasedFirepower_SCOP
	mul	r0,r1
	
@CODayBasedFirepowerBoostCalculation:
	ldr	r1,=CurrentGameDay
	ldrh	r1,[r1]
	ldr	r2,=999
	cmp	r1,r2
	blt	@CODayBasedFirepowerBoostCalculationNotMaxDays
	mov	r1,r2
@CODayBasedFirepowerBoostCalculationNotMaxDays:	
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	b	@CODayBasedFirepowerBoostEnd
	
@CODayBasedFirepowerBoostFalse:
	mov	r0,0x0
@CODayBasedFirepowerBoostEnd:	
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line
