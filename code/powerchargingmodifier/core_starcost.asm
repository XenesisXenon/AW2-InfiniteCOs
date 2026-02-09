;core_starcost.asm

Core_COPowerStarCost_Versioned:
	mov	r5,r1	;save r1

	;Checks whether we're in War Room/Campaign mode
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_GameMode
	ldrb	r0,[r1]
	cmp	r0,GameMode_Versus
	bne	@IsAW2Charge
	
	;Checks the game rules whether to use CO Specific or
	;Global AW2 charge rates
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_ChargingStyle
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	@Standard_Charging
	
	cmp	r0,0x2
	beq	@IsAW2Charge
	
	cmp	r0,0x1
	beq	@IsAW1Charge
	
	cmp	r0,0x3
	beq	@IsAWDSCharge

@Standard_Charging:
	;Player Number in r4, multiplier in r1
	mov	r0,r4
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	
	ldr	r1,=BasePlayerMemory
	add	r1,r0,r1
	ldrb	r0,[r1,CurrentPlayerCO]
	mov	r1,0
	mov	r2,Gather_CO_GameID
	bl	GatherCOAbility
	
	cmp	r0,Game_AW1
	beq	@IsAW1Charge
	cmp	r0,Game_AWDS
	beq	@IsAWDSCharge
	cmp	r0,Game_AW2
	bne	@IsOtherCharge
	
@IsAW2Charge:
	ldr	r0,=9000
	b	@DoCalc
@IsAW1Charge:
	ldr	r0,=5000
	b	@DoCalc
@IsAWDSCharge:
	mov	r0,50
	b	@DoCalc
@IsOtherCharge:
	ldr	r0,=9000
@DoCalc:
	mov	r1,r5
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	pop	{r4-r5}
	pop	{r1}
	bx	r1
	.pool
	
;blank line