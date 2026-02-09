;cmpspec_pipeseamalive.asm

.org 0x08045830
Cmpspec_PipeSeamAlive:
	push	{r14}
	bl	0x08045650
	cmp	r0,0x0
	beq	@Cmpspec_PipeSeamAlive_Destroyed
	mov	r0,0x0
	b	@Cmpspec_PipeSeamAlive_End
@Cmpspec_PipeSeamAlive_Destroyed:	
	mov	r0,0x1
@Cmpspec_PipeSeamAlive_End:	
	pop	{r1}
	bx	r1
