;cmpspec_inventionalive_deathray.asm

.org 0x080457D0
Cmpspec_Inventionalive_Deathray:
	push	{r14}
	mov	r0,0x5	;Invention ID of Deathray
	bl	0x0803E388
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@Cmpspec_Inventionalive_Deathray_Destroyed
	mov	r0,0x0
	b	@Cmpspec_Inventionalive_Deathray_End
@Cmpspec_Inventionalive_Deathray_Destroyed:	
	mov	r0,0x1
@Cmpspec_Inventionalive_Deathray_End:	
	pop	{r1}
	bx	r1
	