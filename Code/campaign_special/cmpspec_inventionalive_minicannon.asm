;cmpspec_inventionalive_MiniCannon.asm

.org 0x08045818
Cmpspec_Inventionalive_MiniCannon:
	push	{r14}
	mov	r0,0x4	;Invention ID of MiniCannon
	bl	0x0803E388
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@Cmpspec_Inventionalive_MiniCannon_Destroyed
	mov	r0,0x0
	b	@Cmpspec_Inventionalive_MiniCannon_End
@Cmpspec_Inventionalive_MiniCannon_Destroyed:	
	mov	r0,0x1
@Cmpspec_Inventionalive_MiniCannon_End:	
	pop	{r1}
	bx	r1
	