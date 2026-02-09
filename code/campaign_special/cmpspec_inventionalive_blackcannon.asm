;cmpspec_inventionalive_BlackCannon.asm

.org 0x08045800
Cmpspec_Inventionalive_BlackCannon:
	push	{r14}
	mov	r0,0x3	;Invention ID of BlackCannon
	bl	0x0803E388
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@Cmpspec_Inventionalive_BlackCannon_Destroyed
	mov	r0,0x0
	b	@Cmpspec_Inventionalive_BlackCannon_End
@Cmpspec_Inventionalive_BlackCannon_Destroyed:	
	mov	r0,0x1
@Cmpspec_Inventionalive_BlackCannon_End:	
	pop	{r1}
	bx	r1
	