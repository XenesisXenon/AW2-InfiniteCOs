;initram_chargestyle.asm

InitialiseGameRulesRAM_ChargeStyle:
	push	{r4,r5,r14}
	;Nulls the value if unset
	mov	r1,0x0	;Default Style
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ChargingStyle
	strb	r1,[r0]
	
	;Checks if the current Game Mode is Versus
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_Gamemode
	ldrb	r0,[r0]
	cmp	r0,GameMode_Versus
	bne	@End

@Check_AW2:
	;Check whether the global is set (AW2)
	mov	r1,UnlockBoolean_Custom_Charging
	sub	r1,0x20
	mov	r0,1
	lsl	r0,r1
	ldr	r1,=CurrentUnlockedStatus
	ldr	r1,[r1]
	and	r1,r0
	cmp	r1,0x0
	beq	@Check_AW1
	
;Actually set the game rule
	mov	r1,2
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ChargingStyle
	strb	r1,[r0]
	b	@End

@Check_AW1:
	;Check whether the global is set (AW1)
	mov	r1,UnlockBoolean_Custom_ChargingAW1
	sub	r1,0x20
	mov	r0,1
	lsl	r0,r1
	ldr	r1,=CurrentUnlockedStatus
	ldr	r1,[r1]
	and	r1,r0
	cmp	r1,0x0
	beq	@Check_AW3
		
;Actually set the game rule
	mov	r1,1
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ChargingStyle
	strb	r1,[r0]
	b	@End

@Check_AW3:
	;Check whether the global is set
	mov	r1,UnlockBoolean_Custom_ChargingAW3
	sub	r1,0x20
	mov	r0,1
	lsl	r0,r1
	ldr	r1,=CurrentUnlockedStatus
	ldr	r1,[r1]
	and	r1,r0
	cmp	r1,0x0
	beq	@End
		
;Actually set the game rule
	mov	r1,3
	ldr	r0,=CurrentGameOptions
	add	r0,GameRule_ChargingStyle
	strb	r1,[r0]
	b	@End
	
@End:	
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool

