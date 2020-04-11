;OnSelectDebugPowerOff.asm

OnSelectDebugPowerOff:
	push	{r14}
	bl	LongMenuLoadFunctionB	;0x0801A168	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1E]
	mov	r0,0
	strb	r0,[r1,0x1E]
	pop	{r1}
	bx	r1
	.pool

;Blank Line
