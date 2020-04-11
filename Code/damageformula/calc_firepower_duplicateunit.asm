;calc_firepower_DuplicateUnit.asm
;Function that specifically grants firepower bonuses if the CO only
;has one of a unit.
;Uses Special Bit

FirepowerBoost_DuplicateUnit:
@Firepower 		equ 5
	push	{r4-r7,r14}
	mov	r7,r0	;CO ID
	mov	r6,r1	;CO Power State
	mov	r5,r2	;Battle Pointer
	
	;Check for Terrain Stars to Firepower Skill
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	ldr	r1,=Special_CO_DuplicateUnitBoost
	and	r1,r0
	cmp	r1,0x0
	beq	@False
	
	;Calculate Player Number from Battle Pointer
	;First check if we're in the dossier rather than a real battle	
	ldr	r0,[r5]
	ldr	r1,=RamTable_FakeUnit
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
	
@Loop:
	ldrb	r2,[r1]
	cmp	r2,0
	beq	@NoUnit
	cmp	r0,r2
	bne	@NoMatch
	add	r3,1
	
@NoMatch:
@NoUnit:
	add	r1,0xC	;Iterate unit pointer
	add	r4,1	;Iterate loop
	cmp	r4,50
	ble	@Loop
	
	cmp	r3,1	;Check how many of a unit we have
	ble	@NoBonus
	
	mov	r0,@Firepower
	sub	r3,1
	mul	r0,r3
	b	@End
@NoBonus:
@False:
	mov	r0,0
@End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

;Blank Line