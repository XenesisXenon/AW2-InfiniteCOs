;calc_firepower_ConsecutiveKills.asm
;Function that specifically grants firepower bonuses for each kill
;a player has gotten this turn
;Uses Special Bit

FirepowerBoost_ConsecutiveKills:
@Firepower 		equ 5
@COP_Firepower		equ 5
@Super_Firepower	equ 5

	push	{r4-r7,r14}
	mov	r7,r0	;CO ID
	mov	r6,r1	;CO Power State
	mov	r5,r2	;Battle Pointer
	
	;Check for Skill Bit
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	ldr	r1,=Special_CO_MomentumFirepower
	and	r1,r0
	cmp	r1,0x0
	beq	@Skill_False
	
	ldr	r0,[r5]
	ldr	r1,=0x00001F00
	and	r0,r1
	mov	r1,0xC0
	lsl	r1,r1,0x2
	sub	r0,r0,r1
	bl	DivisionFunction
	
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrh	r0,[r0,CurrentPlayerCurrentUnitKills]

	cmp	r6,COMode_Super
	bne	@Power
	mov	r1,@Super_Firepower
	b	@Multiplier
	
@Power:
	cmp	r6,COMode_Power
	bne	@Daily
	mov	r1,@COP_Firepower
	b	@Multiplier
	
@Daily:	
	mov	r1,@Firepower
	
@Multiplier:
	mul	r0,r1
	b	@End
	
@Skill_False:	
	mov	r0,0x0
	
@End:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool

;Blank Line