;coreincomemodifier.asm

AddFlatIncomeBoost:
	ldr	r3,=BasePlayerMemory
	mov	r4,0
	
AddFlatIncomeBoostLoop:	
	ldrb	r0,[r3,0x14]
	cmp	r0,0x0
	bne	AddFlatIncomeBoostLoopEnd
	mov	r1,r3
	add	r1,0x1B
	ldr	r0,[r1]
	cmp	r0,0x0
	beq	AddFlatIncomeBoostLoopEnd
	ldrb	r0,[r3,0x1D]
	mov	r1,0
	mov	r2,GatherFlatIncome
	bl	GatherCOAbility
	mov	r1,100
	mul	r0,r1
	ldr	r1,[r3,0x8]
	add	r0,r0,r1
	str	r0,[r3,0x8]
AddFlatIncomeBoostLoopEnd:
	add	r4,1
	add	r3,0x3C
	cmp	r4,3
	bgt	AddFlatIncomeBoostEnd
	b	AddFlatIncomeBoostLoop
	
AddFlatIncomeBoostEnd:
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r0}
	bx	r0	
	.pool
	;Blank Line
