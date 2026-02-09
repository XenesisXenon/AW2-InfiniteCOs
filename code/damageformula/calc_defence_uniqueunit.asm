;calc_defence_UniqueUnit.asm
;Function that specifically grants defence bonuses if the CO only
;has one of a unit.
;Uses Special Bit

DefenceBoost_UniqueUnit:
@UniqueUnit_Defence 		equ 10
@UniqueUnit_COP_Defence		equ 20
@UniqueUnit_Super_Defence 	equ 30
	push	{r4-r7,r14}
	mov	r7,r0	;CO ID
	mov	r6,r1	;CO Power State
	mov	r5,r2	;Battle Pointer
	
	;Check for Terrain Stars to Firepower Skill
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	ldr	r1,=Special_CO_UniqueUnitBoost
	and	r1,r0
	cmp	r1,0x0
	beq	@DefenceBoost_UniqueUnit_False
	
	;Calculate Player Number from Battle Pointer
	;First check if we're in the dossier rather than a real battle	
	ldr	r0,[r5]
	ldr	r1,=RamTable_FakeUnit
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x300
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x600
	cmp	r0,r1
	beq	@Dossier
	ldr	r1,=RamTable_FakeUnit+0x900
	cmp	r0,r1
	beq	@Dossier
	b	@Game
	
@Dossier:
	ldrb	r0,[r0,0xB]	;Loads the PID from the Fake Unit
	b	@Loop_Setup
	
@Game:
	ldr	r1,=0x00001F00
	and	r0,r1
	mov	r1,0xC0
	lsl	r1,r1,0x2
	sub	r0,r0,r1
	bl	DivisionFunction
@Loop_Setup:
	mov	r7,r0	;Replace CO ID with Player ID
	
	;Count how many of the input unit type there is.
	ldr	r0,[r5]
	ldrb	r0,[r0]	;Get Unit ID from battle pointer
	mov	r1,0xC0
	lsl	r1,r1,0x2
	ldr	r2,=BaseUnitOffset
	mul	r1,r7
	add	r1,r1,r2
	mov	r3,0	;Num Matches
	mov	r4,0	;Loop Iterations (Cap at 50 Units)
	
@DefenceBoost_UniqueUnit_Loop:
	ldrb	r2,[r1]
	cmp	r2,0
	beq	@DefenceBoost_UniqueUnit_NoUnit
	cmp	r0,r2
	bne	@DefenceBoost_UniqueUnit_NoMatch
	add	r3,1
	
@DefenceBoost_UniqueUnit_NoMatch:
@DefenceBoost_UniqueUnit_NoUnit:
	add	r1,0xC	;Iterate unit pointer
	add	r4,1	;Iterate loop
	cmp	r4,50
	ble	@DefenceBoost_UniqueUnit_Loop
	
	cmp	r3,1	;Check how many of a unit we have
	bgt	@DefenceBoost_UniqueUnit_False
	mov	r0,@UniqueUnit_Defence
	;Check if SCOP for Multiplier
	cmp	r6,COMode_Power
	bne	@Check_SCOP
	mov	r0,@UniqueUnit_COP_Defence
	b	@DefenceBoost_UniqueUnit_End

@Check_SCOP:
	cmp	r6,COMode_Super
	bne	@DefenceBoost_UniqueUnit_End
	mov	r0,@UniqueUnit_Super_Defence
	b	@DefenceBoost_UniqueUnit_End

@DefenceBoost_UniqueUnit_False:	
	mov	r0,0x0
@DefenceBoost_UniqueUnit_End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

;Blank Line