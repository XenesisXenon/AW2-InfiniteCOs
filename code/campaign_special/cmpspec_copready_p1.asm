;cmpspec_COPReady_P1.asm

.org 0x080745A8
Cmpspec_COPReady_P1:
	push	{r14}
	mov	r0,0x1	;Player Number input
	bl	0x084423C	;Returns COP charge
	cmp	r0,0x0
	bne	@Cmpspec_COPReady_Full
	mov	r0,0x0
	b	@Cmpspec_COPReady_End
@Cmpspec_COPReady_Full:	
	mov	r0,0x1
@Cmpspec_COPReady_End:	
	pop	{r1}
	bx	r1
