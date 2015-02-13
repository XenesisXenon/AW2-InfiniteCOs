;corecoterrainfirepowerboost.asm
;Grants a firepower boost to a CO's unit depending on the terrain that they are on
;For Kindle/Koal/Jake style boosts.

COTerrainFirepowerBoost:
	push	{r4-r7,r14}
	;Collects Terrain Pointer
	mov	r4,0x82
	lsl	r4,r4,0x1
	mul	r0,r4
	
	mov	r4,0x44
	mul	r1,r4
	
	ldr	r4,=COStatsAbilitiesDatatable
	add	r4,r0,r4
	add	r4,r1,r4
	add	r4,0x68
	
	ldr	r4,[r4]
	cmp	r4,0x0
	beq	COTerrainFirepowerBoostFalse
	
;Terrain Boost
	ldrb	r0,[r2,0x4]
	mov	r1,0x1F
	and	r0,r1
	ldrb	r0,[r4,r0]
	
;Clears the Bottom Bit for Mass Damage Terrain
	mov	r1,0x0
	sub	r1,0x2
	and	r0,r1

	b	COTerrainFirepowerBoostEnd	
	
COTerrainFirepowerBoostFalse:
	mov	r0,0x0
COTerrainFirepowerBoostEnd:	
	pop	{r4-r7}
	pop	{r1}
	bx	r1	
	.pool

;Adjusts the Multiplier for the 0x20 (Terrain Into Firepower) special Ability.	
TerrainIntoFirepowerMultiplier:	
	mov	r1,0x40
	and	r1,r0
	mov	r0,0x0
	cmp	r1,0x0
	beq	TerrainIntoFirepowerMultiplierEnd
TerrainIntoFirepowerMultiplierGetMultiplier:
	ldr	r0,=BaseUnitMemory
	ldr	r0,[r0]
	ldr	r1,[r4]
	sub	r1,r1,r0
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r1,r0,r1
	ldrb	r0,[r1,	0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,GatherTerrainFirepowerMultiplier
	bl	GatherCOAbility
	cmp	r0,0
	beq	TerrainIntoFirepowerMultiplierDefault
	mov	r2,r0
	mov	r1,6
	ldsh	r0,[r4,r1]
	mov	r1,10
	bl	DivisionFunction
	mul	r0,r2
	b	TerrainIntoFirepowerMultiplierEnd	
TerrainIntoFirepowerMultiplierDefault:
	mov	r1,6			;If the CO has no bonus, just use default value
	ldsh	r0,[r4,r1]
TerrainIntoFirepowerMultiplierEnd:
	pop	{r4}
	pop	{r1}
	bx	r1
