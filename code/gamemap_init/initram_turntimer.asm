;initram_timer.asm
InitialiseGameRulesRAM_TurnTimer:
	push	{r4,r5,r14}
	;Nulls the value if unset
	mov	r1,0x0	;Timer in Seconds (approx)
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_TurnTimer
	strh	r1,[r0]
	
	;Check whether the global is set
	mov	r1,UnlockBoolean_Custom_TurnTimer
	sub	r1,0x20
	mov	r0,1
	lsl	r0,r1
	ldr	r1,=CurrentUnlockedStatus
	ldr	r1,[r1]
	and	r1,r0
	cmp	r1,0x0
	beq	@End
	
	;Checks if the current Game Mode is Versus
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_Gamemode
	ldrb	r0,[r0]
	cmp	r0,GameMode_Versus
	bne	@End
	
;Actually set the turn timer
	ldr	r1,=180	;Timer in Seconds (approx)
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_TurnTimer
	strh	r1,[r0]	
	
@End:	
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
