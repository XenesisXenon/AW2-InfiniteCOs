;core_timerdisplay.asm

@DayTimer_Return equ	0x0804366E+1

GUITimer_Countdown:
	ldr	r0,=CurrentGameOptions
	add	r0, GameRule_TurnTimer
	ldrh	r0,[r0]	;Checks if a Timer Value is set
	cmp	r0,0x0
	beq	@CountdownTimer_False;SRankDaysRemainDisplayFalse
	
	mov	r4,r0	
	;Checks whether it's a human or AI turn
	;No Timer displayed for AIs
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,0x1
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r0,[r0,CurrentPlayerAIControl]
	cmp	r0,0x1	;Human Control
	bne	@CountdownTimer_False
	
	;Timer Calculation
	ldr	r0,=Turn_Frame_Counter
	ldr	r0,[r0]
	mov	r1,System_FramesPerSecond
	bl	DivisionFunction
	
	sub	r1,r4,r0
	cmp	r1,0
	ble	@CountdownTimer_False
	
	mov	r4,r1
	b	@WriteTimer
	
@CountdownTimer_False:	;Display the Days remaining timer instead
	mov	r0,r5
	mov	r1,r6
	bl	@Long_GetTurnTimer
	mov	r4,r0
	cmp	r4,0x0
	beq	@DayTimer_False
	
	ldr	r0,=@DayTimer_Return
	bx	r0
	
@DayTimer_False:	;Display Nergal's Power if neither are active
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,0x1
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,CurrentPlayerCO]
	cmp	r1,COCCONergal
	beq	@CODisplay_Nergal
	cmp	r1,COColin
	beq	@CODisplay_VariableAttack
	cmp	r1,COAWDSKindle
	beq	@CODisplay_VariableAttack
	cmp	r1,COAWDSColin
	beq	@CODisplay_VariableAttack
	cmp	r1,COCCOVenomAdder
	beq	@CODisplay_DayBoostAttack
	b	@AllDisplay_False
	
	
@CODisplay_Nergal:	
	mov	r1,CurrentPlayerUnitCount
	ldrb	r1,[r0,r1]
	mov	r4,CurrentPlayerUnitLossCount
	ldrb	r0,[r0,r4]
	sub	r0,r1,r0
	sub	r0,10
	cmp	r0,0
	bgt	@Threshold
	
	mov	r0,0
@Threshold:
	mov	r1,100
	sub	r0,r1,r0
	mov	r4,r0
	b	@WriteCOValue
	
@CODisplay_VariableAttack:
	ldrb	r1,[r0,CurrentPlayerPowerState]
	cmp	r1,COMode_Super
	bne	@AllDisplay_False
	
	mov	r1,CurrentPlayerTempAttack
	ldrh	r0,[r0,r1]
	mov	r4,r0
	cmp	r4,0
	beq	@AllDisplay_False
	b	@WriteCOValue
	
@CODisplay_DayBoostAttack:
	ldrb	r1,[r0,CurrentPlayerPowerState]
	add	r1,1
	ldr	r0,=CurrentGameDay
	ldrh	r0,[r0]
	mul	r0,r1
	lsr	r0,r0,0x1
	mov	r4,r0
	cmp	r4,0
	beq	@AllDisplay_False
	b	@WriteCOValue

@AllDisplay_False:
	add	sp,0x4
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	
@WriteTimer:
	cmp	r5,0x77	;Checks for side of the screen
	bgt	@WriteTimer_Right	
	add	r5,0x5B;0x55
@WriteTimer_Right:
	ldr	r0,=0x08043694+1
	bx	r0
	
@WriteCOValue:
	cmp	r5,0x77	;Checks for side of the screen
	bgt	@WriteCOValue_Right	
	add	r5,0x3A;0x55
	add	r6,0xA
	b	@WriteCOValue_End
@WriteCOValue_Right:
	add	r5,0x3A
	add	r6,0x0A
@WriteCOValue_End:
	ldr	r0,=0x08043694+1
	bx	r0

	.pool

@LongDrawGraphic:
	push		{r4-r7,r14}
	LongBL	r7,0x0801BD02+1

@LongNumberFactor:
	LongBL	r3,0x0808BCD4+1

@Long_GetTurnTimer:
	LongBL	r2,0x08043630+1
