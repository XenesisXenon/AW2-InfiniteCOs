;corepowercharge.asm
;Support for multiple CO Power charging systems here

PowerChargeSystem:
	;Source pointer in r8
	;Lead player saved in r9
	ldr	r0,=0x030040D8
	mov	r8,r0	;Source pointer saved in r8
	ldr	r0,[r0]
	Calculate_PlayerfromUnitPointer
	mov	r8,r0	;Lead Player saved in r8
	ldr	r1,=CurrentBattle_Defender
	ldr	r0,[r1]
	Calculate_PlayerfromUnitPointer
	mov	r9,r0	;Opposing Player saved in r9
	
	;Set up Attacking Player's Charge
	mov	r0,r8
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r1,r0,r1
	ldrb	r0,[r1,CurrentPlayerCO]
	mov	r1,0
	mov	r2,Gather_CO_GameID
	bl	GatherCOAbility
	mov	r10,r0	
	mov	r1,r8
	add	r1,1
	ForceRankCheckerTurnInput	ForceRank_StarPower,ForceRank_Strength_StarPower
	mov	r1,r0
	mov	r0,r10	
	ldr	r2,=CurrentBattle_Attacker
	ldr	r3,=CurrentBattle_Defender	
	bl	PowerCharge_Versioned
	
	;Set up Defending Player's Charge
	mov	r0,r9
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r1,r0,r1
	ldrb	r0,[r1,CurrentPlayerCO]
	mov	r1,0
	mov	r2,Gather_CO_GameID
	bl	GatherCOAbility
	mov	r10,r0	
	mov	r1,r9
	add	r1,1
	ForceRankCheckerTurnInput	ForceRank_StarPower,ForceRank_Strength_StarPower
	mov	r1,r0
	mov	r0,r10	
	ldr	r2,=CurrentBattle_Defender
	ldr	r3,=CurrentBattle_Attacker	
	bl	PowerCharge_Versioned
	
	;Return and clear
	ldr	r0,=PowerChargeSys_End+1
	bx	r0
	.pool
	
PowerCharge_Versioned:
;This separates the charging mechanics based on version and executes
;Input: r0 = Game Version ID, r1 = Charge Rate Modifier, r2 = Attacker Pointer, r3 = Defender Pointer
	push	{r7,r14}
	mov	r7,r8
	push	{r7}
	mov	r8,r0
	mov	r7,r1
	
	;Checks whether we're in War Room/Campaign mode
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_GameMode
	ldrb	r0,[r1]
	cmp	r0,GameMode_Versus
	bne	@PowerCharge_AW2
	
	;Checks the game rules whether to use CO Specific or
	;Global AW2 charge rates
	ldr	r1,=CurrentGameOptions
	add	r1,GameRule_ChargingStyle
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	@Standard_Charging
	
	cmp	r0,0x2
	beq	@PowerCharge_AW2
	
	cmp	r0,0x1
	beq	@PowerCharge_AW1
	
	cmp	r0,0x3
	beq	@PowerCharge_AWDS
	
@Standard_Charging:
	mov	r0,r8
	mov	r1,r7
	cmp	r0,Game_AW2
	beq	@PowerCharge_AW2
	cmp	r0,Game_AWDS
	beq	@PowerCharge_AWDS
	cmp	r0,Game_AW1
	beq	@PowerCharge_AW1	
	pop	{r7}
	mov	r8,r7
	pop	{r7}
	pop	{r0}
	bx	r0
	.pool
	
@PowerCharge_AW2:
	mov	r0,r8
	mov	r1,r7
	;Charge rate is 100% by default.
	;Add skill modifiers from Force Ranks
	mov	r0,100
	add	r0,r0,r1
	bl	PowerChargeCalculation_AW2
	b	@PowerCharge_End
	
@PowerCharge_AWDS:
	mov	r0,r8
	mov	r1,r7
	mov	r0,100
	add	r0,r0,r1
	bl	PowerChargeCalculation_AWDS
	b	@PowerCharge_End
@PowerCharge_AW1:
	mov	r0,r8
	mov	r1,r7
	mov	r0,100
	add	r0,r0,r1
	bl	PowerChargeCalculation_AW1
		
@PowerCharge_End:
	pop	{r7}
	mov	r8,r7
	pop	{r7}
	pop	{r0}
	bx	r0
;Blank Line
	
	

PowerChargeCalculation_AW2:
	;Input: r0 = Charge Rate, r1 = pointer, 
	;r2 = Player Pointer, r3 = Opposing Player Pointer
	push	{r4-r7,r14}
	add	sp,-0xC
	;Check that there's a multiplier
	cmp	r0,0
	beq	@PowerChargeCalculation_AW2_NoMult
	b	@PowerChargeCalculation_AW2_Setup
@PowerChargeCalculation_AW2_NoMult:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	
@PowerChargeCalculation_AW2_Setup:	
	mov	r7,r0
	@ChargeRateRegister equ r7
	mov	r6,r2
	@AttackerRegister equ r6	
	mov	r5,r3
	@DefenderRegister equ r5

@PowerChargeCalculation_AW2_ChargeFromLoss:	
	;This is Damage Suffered By the Allied Unit

	;Gather Selected Player's CO Price Mod	
	ldr	r0,[@AttackerRegister]
	Calculate_PlayerfromUnitPointer
	str	r0,[sp,0x0]	;Player Number in sp+0x0
	
	ldr	r0,[sp,0x0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_UnitPriceModifier
	bl	GatherCOAbility
	add	r0,100	;Adds the base price modifier
	
	str	r0,[sp,0x4]	;CO Cost Mod in sp+0x4
	
	;Gather Friendly Player's Unit Price
	ldr	r0,[@AttackerRegister]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x0]
	bl	LongBLGatherUnitPrice
	
	str	r0,[sp,0x8]	;Unit Price in sp+0x8
	
	;Calculate Friendly Player's Unit Initial HP
	ldr	r0,[@AttackerRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Friendly Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@AttackerRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AW2_ChargeFromLoss_HPLeft_Attacker;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AW2_ChargeFromLoss_HPLeft_Attacker:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Price
	mul	r0,r1
	
	ldr	r1,[sp,0x4]	;Multiply by CO Price Modifier
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge

	;This is Damage Inflicted

	;Gather Selected Player's CO Price Mod	
	ldr	r0,[@DefenderRegister]
	Calculate_PlayerfromUnitPointer
	str	r0,[sp,0x0]	;Player Number in sp+0x0
	
	ldr	r0,[sp,0x0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_UnitPriceModifier
	bl	GatherCOAbility
	add	r0,100	;Adds the base price modifier
	
	str	r0,[sp,0x4]	;CO Cost Mod in sp+0x4
	
	;Gather Opposing Player's Unit Price
	ldr	r0,[@DefenderRegister]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x0]
	bl	LongBLGatherUnitPrice
	
	str	r0,[sp,0x8]	;Unit Price in sp+0x8
	
	;Calculate Opposing Player's Unit Initial HP
	ldr	r0,[@DefenderRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Opposing Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@DefenderRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AW2_ChargeFromLoss_HPLeft_Defender;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AW2_ChargeFromLoss_HPLeft_Defender:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Price
	mul	r0,r1
	
	ldr	r1,[sp,0x4]	;Multiply by CO Price Modifier
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,200		;Halved rate on damage infliction
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]	;Specifically grab the attacker to charge
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge
	
@PowerChargeCalculation_AW2_End:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

PowerChargeCalculation_AW1:
	;Input: r0 = Charge Rate, r1 = pointer, 
	;r2 = Player Pointer, r3 = Opposing Player Pointer
	push	{r4-r7,r14}
	add	sp,-0xC
	;Check that there's a multiplier
	cmp	r0,0
	beq	@PowerChargeCalculation_AW1_NoMult
	b	@PowerChargeCalculation_AW1_Setup
@PowerChargeCalculation_AW1_NoMult:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	
@PowerChargeCalculation_AW1_Setup:	
	mov	r7,r0
	mov	r6,r2
	mov	r5,r3

@PowerChargeCalculation_AW1_ChargeFromLoss:	
	;This is Damage Suffered By the Allied Unit

	;Gather Selected Player's CO Price Mod	
	ldr	r0,[@AttackerRegister]
	Calculate_PlayerfromUnitPointer
	str	r0,[sp,0x0]	;Player Number in sp+0x0
	
	ldr	r0,[sp,0x0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_UnitPriceModifier
	bl	GatherCOAbility
	add	r0,100	;Adds the base price modifier
	
	str	r0,[sp,0x4]	;CO Cost Mod in sp+0x4
	
	;Gather Friendly Player's Unit Price
	ldr	r0,[@AttackerRegister]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x0]
	bl	LongBLGatherUnitPrice
	
	str	r0,[sp,0x8]	;Unit Price in sp+0x8
	
	;Calculate Friendly Player's Unit Initial HP
	ldr	r0,[@AttackerRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Friendly Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@AttackerRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AW1_ChargeFromLoss_HPLeft_Attacker;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AW1_ChargeFromLoss_HPLeft_Attacker:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Price
	mul	r0,r1
	
	ldr	r1,[sp,0x4]	;Multiply by CO Price Modifier
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge

	;This is Damage Inflicted

	;Gather Selected Player's CO Price Mod	
	ldr	r0,[@DefenderRegister]
	Calculate_PlayerfromUnitPointer
	str	r0,[sp,0x0]	;Player Number in sp+0x0
	
	ldr	r0,[sp,0x0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_UnitPriceModifier
	bl	GatherCOAbility
	add	r0,100	;Adds the base price modifier
	
	str	r0,[sp,0x4]	;CO Cost Mod in sp+0x4
	
	;Gather Opposing Player's Unit Price
	ldr	r0,[@DefenderRegister]
	ldrb	r1,[r0]
	ldr	r0,[sp,0x0]
	bl	LongBLGatherUnitPrice
	
	str	r0,[sp,0x8]	;Unit Price in sp+0x8
	
	;Calculate Opposing Player's Unit Initial HP
	ldr	r0,[@DefenderRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Opposing Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@DefenderRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AW1_ChargeFromLoss_HPLeft_Defender;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AW1_ChargeFromLoss_HPLeft_Defender:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Price
	mul	r0,r1
	
	ldr	r1,[sp,0x4]	;Multiply by CO Price Modifier
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,100		;Quartered rate on damage infliction
	lsl	r1,r1,0x2
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]	;Specifically grab the attacker to charge
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge
	
@PowerChargeCalculation_AW1_End:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

PowerChargeCalculation_AWDS:
	;Input: r0 = Charge Rate, r1 = pointer, 
	;r2 = Player Pointer, r3 = Opposing Player Pointer
	push	{r4-r7,r14}
	add	sp,-0xC
	;Check that there's a multiplier
	cmp	r0,0
	beq	@PowerChargeCalculation_AWDS_NoMult
	b	@PowerChargeCalculation_AWDS_Setup
@PowerChargeCalculation_AWDS_NoMult:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	
@PowerChargeCalculation_AWDS_Setup:	
	mov	r7,r0
	mov	r6,r2
	mov	r5,r3

@PowerChargeCalculation_AWDS_ChargeFromLoss:	
	;This is Damage Suffered By the Allied Unit
	;Gather Friendly Player's Unit Charge Rate
	ldr	r0,[@AttackerRegister]
	ldrb	r0,[r0]
	bl	Gather_DSUnitChargeRate
	
	str	r0,[sp,0x8]	;Unit Charge Rate in sp+0x8
	
	;Calculate Friendly Player's Unit Initial HP
	ldr	r0,[@AttackerRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Friendly Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@AttackerRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AWDS_ChargeFromLoss_HPLeft_Attacker;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AWDS_ChargeFromLoss_HPLeft_Attacker:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Charge Rate
	mul	r0,r1
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge

	;This is Damage Inflicted
	;Gather Opposing Player's Unit Charge Rate
	ldr	r0,[@AttackerRegister]
	ldrb	r0,[r0]
	bl	Gather_DSUnitChargeRate
	
	str	r0,[sp,0x8]	;Unit Charge Rate in sp+0x8
	
	;Calculate Opposing Player's Unit Initial HP
	ldr	r0,[@DefenderRegister]
	ldrb	r0,[r0,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r2,r0
	
	;Calculate Opposing Player's Unit Remaining HP
	mov	r1,0x8
	ldsh	r0,[@DefenderRegister,r1]
	
	;Calculate the Damage
	sub	r0,r2,r0
	cmp	r0,0x0
	bgt	@PowerChargeCalculation_AWDS_ChargeFromLoss_HPLeft_Defender;Bounds check for HP
	mov	r0,0x0
	
@PowerChargeCalculation_AWDS_ChargeFromLoss_HPLeft_Defender:
	mov	r1,10
	bl	DivisionFunction
	
	ldr	r1,[sp,0x8]	;Multiply by Unit Charge Rate
	mul	r0,r1
	
	mov	r1,r7		;Multiply by Unit Loss Charge Rate
	mul	r0,r1
	mov	r1,200		;Halved rate on damage infliction
	bl	DivisionFunction
	
	str	r0,[sp,0x0]	;Apply Charge to CO Meter
	ldr	r0,[@AttackerRegister]	;Specifically grab the attacker to charge
	Calculate_PlayerfromUnitPointer
	add	r0,1	;0-Offset Player Number
	ldr	r1,[sp,0x0]
	bl	LongBL_Player_AddPowerCharge
	
@PowerChargeCalculation_AWDS_End:
	add	sp,0xC
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool	
	
Gather_DSUnitChargeRate:
;Calculates the base charge rate for AWDS units
;Input of r0 = Unit ID
	ldr	r1,=Table_UnitChargeRate_AWDS
	lsl	r0,r0,0x1
	add	r0,r0,r1
	ldrh	r0,[r0,0x0]
	bx	r14
	.pool	

	.align 4
Table_UnitChargeRate_AWDS:
	.dh	0	;Blank
	.dh	2	;Infantry
	.dh	2	;Mech
	.dh	8	;Med Tank
	.dh	0	;Blank
	.dh	5	;Tank
	.dh	5	;Recon
	.dh	4	;APC
	.dh	9	;Neotank
	.dh	5	;Artillery
	.dh	7	;Rockets
	.dh	0	;Blank
	.dh	0	;Blank
	.dh	5	;Anti-Air
	.dh	7	;Missiles
	.dh	9	;Fighter
	.dh	9	;Bomber
	.dh	0	;Blank
	.dh	6	;B-Copter
	.dh	5	;T-Copter
	.dh	11	;Battleship
	.dh	8	;Cruiser
	.dh	6	;Lander
	.dh	9	;Submarine	
	.align 4
;Blank Line