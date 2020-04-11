;Core_COP_Launch.asm
;Additions to allow for more stuff for COP Field Effect launchers. Prevents crashes.

Core_COPLaunch_FieldAnimation:
	cmp	r1,0x2
	bgt	@Input_Bounds
	b	@Return
	
@Input_Bounds:
	cmp	r1,0x3	;Tag Power Input
	beq	@Is_TagPower
	cmp	r1,0x4	;Swap Input
	beq	@Is_Swap
	pop	{r4-r5}
	pop	{r0}
	bx	r0	

@Is_TagPower:
	mov	r1,0x2
	b	@Return
	
@Is_Swap:
	pop	{r4-r5}
	pop	{r0}
	bx	r0
	
@Return:
	ldr	r5,=0x08499598
	ldr	r4,[r5]
	lsl	r3,r0,0x4
	sub	r3,r3,r0
	lsl	r3,r3,0x2
	add	r4,r3,r4
	strb	r1,[r4,0x1F]
	
	ldr	r4,=COPLaunch_FieldAnimation_Return+1
	bx	r4
	.pool
	