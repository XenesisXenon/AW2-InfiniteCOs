;corecopy.asm

EndTurnDisableCopy:
	mov	r2,0x0
	strb	r2,[r3,0x1E]
	ldr	r0,[r4]
	add	r1,r1,r0
	strh	r2,[r1,0x26]
	strh	r2,[r1,0x28]
	mov	r0,0x33
	ldrb	r0,[r1,r0]
	sub	r0,0x1
	cmp	r0,0x0
	blt	EndTurnDisableCopyEnd
	strb	r0,[r1,0x1D]
	mov	r2,0x33
	mov	r0,0
	strb	r0,[r1,r2]
EndTurnDisableCopyEnd:	
	pop	{r4}
	pop	{r0}
	bx	r0
;Blank Line	
