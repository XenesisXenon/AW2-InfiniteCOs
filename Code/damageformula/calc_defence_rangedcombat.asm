;defenceboost_indirectcombat.asm
;Defence boosts only for Indirect Combat

DefenceBoost_RangedCombat:
	push	{r4-r7,r14}
	mov	r6,r0	;CO ID
	mov	r7,r1	;CO Power State
	;Check for Direct Combat Range
	;Takes a vector distance between the two units' co-ordinates
	;If Distance is greater than 1, combat is taking place Indirectly
	ldr	r0,=0x030013B0
	ldr	r1,[r0,0x20]
	ldr	r0,[r0]
	ldrb	r2,[r0,0x2]
	ldrb	r3,[r1,0x2]
	sub	r0,r2,r3
	bl	ModulusFunction
	mov	r2,r0

	ldr	r0,=0x030013B0
	ldr	r1,[r0,0x20]
	ldr	r0,[r0]	
	ldrb	r3,[r0,0x3]
	ldrb	r5,[r1,0x3]
	sub	r0,r3,r5
	bl	ModulusFunction
	
	add	r0,r0,r2
	cmp	r0,1	
	beq	DefenceBoost_RangedCombat_False

	mov	r0,r6
	mov	r1,r7
	mov	r2,Gather_CO_IndirectDefenceBonus
	bl	GatherCOAbility		
	b	DefenceBoost_RangedCombat_End
DefenceBoost_RangedCombat_False:
	mov	r0,0
DefenceBoost_RangedCombat_End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool
