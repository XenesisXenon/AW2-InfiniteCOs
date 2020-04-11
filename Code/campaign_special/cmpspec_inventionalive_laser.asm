;cmpspec_inventionalive_Laser.asm

.org 0x080457E8
Cmpspec_Inventionalive_Laser:
	push	{r14}
	mov	r0,0x1	;Invention ID of Laser
	bl	0x0803E388
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@Cmpspec_Inventionalive_Laser_Destroyed
	mov	r0,0x0
	b	@Cmpspec_Inventionalive_Laser_End
@Cmpspec_Inventionalive_Laser_Destroyed:	
	mov	r0,0x1
@Cmpspec_Inventionalive_Laser_End:	
	pop	{r1}
	bx	r1
	