;coredefenceboost.asm
;Expands the Defence Boost Function
.align
CustomCODefenceBoost:
	add 	sp, -0x10
	str	r0,[sp,0x10]
	str 	r5, [sp, 0x8]
	mov 	r2, r1
	ldr 	r1,=BaseUnitPointer
	ldr 	r3, [r1]
	mov 	r1, 0x3C
	mul 	r1, r0
	add 	r1, r1, r3
	ldrb 	r0, [r1, 0x1D]
	ldrb 	r1, [r1, 0x1E]
	str 	r0, [sp, 0x0]
	str 	r1, [sp, 0x4]
	mov 	r2, 1
	bl 	LongDefenceGather
	mov 	r6, r0
	;Additions go here
	;Check for Direct Combat Range, if Direct use DDB, if Indirect use RDB
	ldr	r0,=0x030013B0
	ldr	r1,[r0,0x20]
	ldr	r0,[r0]
	ldrb	r2,[r0,0x2]
	ldrb	r3,[r1,0x2]
	sub	r2,r2,r3
	ldrb	r3,[r0,0x3]
	ldrb	r5,[r1,0x3]
	sub	r3,r3,r5
	add	r2,r2,r3
	cmp	r2,1
	bne	CustomCODefenceBoostIndirectCombat
CustomCODefenceBoostDirectCombat:
	ldr	r0,[sp]
	ldr	r1,[sp,0x4]
	mov	r2,GatherDirectDefenceBonus
	bl	GatherCOAbility
	b	CustomCODefenceBoostAddition
CustomCODefenceBoostIndirectCombat:
	ldr	r0,[sp]
	ldr	r1,[sp,0x4]
	mov	r2,GatherIndirectDefenceBonus
	bl	GatherCOAbility	
	
CustomCODefenceBoostAddition:	
	add 	r0, r0, r6
	add 	r0, 100
	add 	sp, 0x10
	pop 	{r4-r6}
	pop 	{r1}
	bx 	r1
	.pool	

LongDefenceGather:
	LongBL r3, 0x08043121
	.pool
	
VeterancyDefenceBonus:
	ldr r2, [r2]
	ldrb r2, [r2, 0x1]
	lsr r2, r2, 0x6
	ldr r1,=VeterancyDefenceBoostTable
	ldrb r0, [r1, r2]
	bx r14
	.pool	
	
;Veterancy Boost Table
VeterancyDefenceBoostTable:
	.byte 0,0,0,20	
	
.align
