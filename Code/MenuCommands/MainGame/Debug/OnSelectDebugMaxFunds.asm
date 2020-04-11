;OnSelectDebugMaxFunds.asm

OnSelectDebugMaxFunds:
	push	{r14}
	bl	LongMenuLoadFunctionB	;0x0801A168
	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldr	r0,=0xF423F
	str	r0,[r1]
	pop	{r1}
	bx	r1
	.pool

;Blank Line
