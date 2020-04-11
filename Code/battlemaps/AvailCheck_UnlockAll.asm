;AvailCheck_UnlockAll.asm
;A simple check that shows the "Unlock All" Option in Battle Maps
;Checks if the Sound Room (final unlock) is done

AvailCheck_UnlockAll:
	push	{r14}
	mov	r0,0x28
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@SoundRoomUnlock_False
	mov	r0,1
	neg	r0,r0
	b	@Check_End

@SoundRoomUnlock_False:
	mov	r0,1
@Check_End:	
	pop	{r1}
	bx	r1
	.pool
