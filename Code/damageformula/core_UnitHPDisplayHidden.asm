;CoreUnitHPDisplayHidden.asm

CoreUnitHPDisplayHidden:
	pop	{r0}
	
	;Need to check whether Everyone's HP is hidden.
	push	{r0,r1,r6}
	mov	r6,0x1
HPDisplayHideAllHPLoop:	
	mov	r0,r6
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1B]
	cmp	r0,0x0
	beq	HPDisplayHideAllHPLoopEnd
	
	ldrb	r0,[r1,0x14]
	cmp	r0,0x1
	beq	HPDisplayHideAllHPLoopEnd
	
	ldrb	r0,[r1,	0x1D]
	ldrb	r1,[r1,0x1E]	
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	
	ldr	r1,=SpecialHideAllHP
	and	r1,r0
	cmp	r1,0
	beq	HPDisplayHideAllHPLoopEnd
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	cmp	r0,r6
	beq	HPDisplayHideAllHPLoopEnd	
	;dostuff here
	pop	{r0,r1,r6}
	ldr	r3,=0xF000
	and	r0,r3
	ldr	r3,=0x2AF
	orr	r0,r3
	b	HPDisplayHideAllHPOriginalCode
	
HPDisplayHideAllHPLoopEnd:
	add	r6,1
	cmp	r6,4
	ble	HPDisplayHideAllHPLoop
	
	pop	{r0,r1,r6}
	
HPDisplayHideAllHPOriginalCode:	
	;Original Code, Store result here.	
	strh	r0,[r1]
	add	sp,0x14
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
