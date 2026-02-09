;DamageReflectionAbilityFunction.asm
;Adds the functionality for damage reflection to the Damage Formula

DamageReflectionAbilityFunction:
	mov	r0,r5
	bl	@LongBLApplyDamage
	mov	r0,r4
	bl	@LongBLApplyDamage
	mov	r0,r5
	mov	r1,r4
	bl	@DamageReflectionSubroutine
	mov	r0,r4
	mov	r1,r5
	bl	@DamageReflectionSubroutine
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
@LongBLApplyDamage:
	LongBL	r1,0x0802505C+1
	
@DamageReflectionSubroutine:
	push	{r4,r5,r14}
	mov	r4,r0
	mov	r1,r5
	;Calculates the total amount of damage inflicted by comparing current HP and damage
	ldrb	r0,[r4,0x8]
	ldr	r1,[r5]
	ldrb	r1,[r1,0x4]
	mov	r2,0x7F
	and	r0,r2
	and	r1,r2
	sub	r0,r1,r0
	cmp	r0,0
	ble	@DamageReflectionSubroutineEnd
	
	;Work out the Damage Reflection Amount
	mov	r3,r0
	ldr	r0,=BaseUnitMemory
	ldr	r0,[r0]	
	ldr	r1,[r4]
	sub	r1,r1,r0
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	mov	r1,0x3C
	mul	r0,r1	
	ldr	r1,=BasePlayerMemory
	add	r1,r0,r1
	ldrb	r0,[r1,	0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,Gather_CO_DamageReflection
	bl	GatherCOAbility
	
	cmp	r0,0
	beq	@DamageReflectionSubroutineEnd
	mul	r0,r3
	mov	r1,100
	bl	DivisionFunction
	
	ldr	r1,[r5]
	ldrb	r1,[r1,0x4]
	mov	r2,0x7F
	and	r1,r2
	cmp	r1,0
	ble	@DamageReflectionSubroutineEnd
	
	sub	r0,r1,r0
	cmp	r0,0
	bgt	@DamageReflectionSubroutineSaveDamage
	mov	r0,1
@DamageReflectionSubroutineSaveDamage:	
	ldr	r1,[r5]
	ldrb	r1,[r1,0x4]
	mov	r2,0x80
	and	r1,r2
	orr	r0,r1
	ldr	r1,[r5]
	strb	r0,[r1,0x4]

@DamageReflectionSubroutineEnd:	
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	
