;coreinfoboxhpdisplayadjust.asm

InfoboxHPDisplayAdjustment:
	push	{r1}
	;Need to check whether Everyone's HP is hidden.
	push	{r6}
	mov	r6,0x1
InfoboxHPDisplayHideAllHPLoop:	
	mov	r0,r6
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1B]
	cmp	r0,0x0
	beq	InfoboxHPDisplayHideAllHPLoopEnd
	
	ldrb	r0,[r1,0x14]
	cmp	r0,0x1
	beq	InfoboxHPDisplayHideAllHPLoopEnd
	
	ldrb	r0,[r1,	0x1D]
	ldrb	r1,[r1,0x1E]	
	mov	r2,GatherSpecialEffectsLow
	bl	GatherCOAbility
	
	ldr	r1,=SpecialHideAllHP
	and	r1,r0
	cmp	r1,0
	beq	InfoboxHPDisplayHideAllHPLoopEnd
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	cmp	r0,r6
	beq	InfoboxHPDisplayHideAllHPLoopEnd
	pop	{r6}
	pop	{r1}
	ldr	r2,=0x0802ADC2+1
	bx	r2
	
	
InfoboxHPDisplayHideAllHPLoopEnd:
	add	r6,1
	cmp	r6,4
	ble	InfoboxHPDisplayHideAllHPLoop
	pop	{r6}
	
	;Do Regular HP Here
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,	0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,GatherSpecialEffectsLow
	bl	GatherCOAbility
	
	ldr	r1,=SpecialViewAccurateHP
	and	r1,r0
	cmp	r1,0x0
	beq	InfoboxHPDisplayAdjustmentTensAccurate
InfoboxHPDisplayAdjustmentHundredsAccurate:
	;Gather Hundreds HP Here
	pop	{r1}
	lsl	r0,r1,0x19
	lsr	r0,r0,0x19
	cmp	r0,100
	blt	InfoboxHPDisplayAdjustmentLessThanHundred
	mov	r0,99	
InfoboxHPDisplayAdjustmentLessThanHundred:
	ldr	r2,=0x0802AE56+1
	bx	r2

InfoboxHPDisplayAdjustmentTensAccurate:
	pop	{r1}
	lsl	r0,r1,0x19
	lsr	r0,r0,0x19
	sub	r0,1
	mov	r1,10
	ldr	r2,=0x0802AE50+1
	bx	r2
	.pool
