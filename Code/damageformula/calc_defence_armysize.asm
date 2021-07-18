;calc_defence_ArmySize.asm
;Function that specifically grants defence bonuses if the CO only
;has one of a unit.
;Uses Special Bit

DefenceBoost_ArmySize:
@Max_Size 	equ 10
@Defence_Boost	equ 1
	push	{r4-r7,r14}
	mov	r7,r0	;CO ID
	mov	r6,r1	;CO Power State
	mov	r5,r2	;Battle Pointer
	
	;Check for Terrain Stars to Firepower Skill
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	ldr	r1,=Special_CO_ArmySizeBoost
	and	r1,r0
	cmp	r1,0x0
	beq	@False
	
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
	sub	r0,1
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	mov	r1,CurrentPlayerUnitCount
	ldrb	r1,[r0,r1]
	mov	r2,CurrentPlayerUnitLossCount
	ldrb	r0,[r0,r2]
	sub	r0,r1,r0
	cmp	r0,@Max_Size
	ble	@False
	
	sub	r0,@Max_Size
	mov	r1,0
	sub	r1,1
	mov	r2,@Defence_Boost
	mul	r1,r2
	mul	r0,r1
	b	@End
	
@False:	
	mov	r0,0x0
@End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

;Blank Line