;cmpspec_COPGaugefill_P1.asm

.org 0x080745A8
Cmpspec_COPGaugefill_P1:
	push	{r14}
	mov	r0,0x1	;Player Number input
	bl	0x08044094	;Returns COP charge
	cmp	r0,0x0
	bne	@Cmpspec_COPGaugefill_Full
	mov	r0,0x0
	b	@Cmpspec_COPGaugefill_End
@Cmpspec_COPGaugefill_Full:	
	mov	r0,0x1
@Cmpspec_COPGaugefill_End:	
	pop	{r1}
	bx	r1
