;AvailCheck_Turntimer.asm
;Checks whether the Turn Timer Bit is Off
;Returns 0 if Off
;Returns 1 if On

AvailCheck_TurnTimer_IsOff:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_TurnTimer
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	@Timer_Off
	mov	r0,1
	neg	r0,r0
	b	@End
@Timer_Off:
	mov	r0,1
@End:	
	pop	{r1}
	bx	r1
	.pool

AvailCheck_TurnTimer_IsOn:
	push	{r14}
	mov	r0,UnlockBoolean_Custom_TurnTimer
	bl	Long_GlobalBitCheck;0x0803CBD8
	cmp	r0,0x0
	bne	@Timer_On
	mov	r0,0
	b	@End2
@Timer_On:
	mov	r0,1
@End2:	
	pop	{r1}
	bx	r1
	.pool
