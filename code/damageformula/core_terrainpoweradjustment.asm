;Terrain
;Note CO Ability bit 0x10 is set to be immune to the terrain inversion
;Also makes the CO Immune to terrain star doubling. Them's the breaks.
;Order of Operations is changed from AWDS so Terrain Star cut is down last
;Also adds AW1 Drake's extra 2 terrain stars

CustomCOTerrainAdjustment:
	push	{r2}
	add	sp,-0x8
	str	r0,[sp,0x4]
	mov	r1,0x6
	ldsh	r0,[r4,r1]
	str	r0,[sp]	
	
	;Compare for Double Terrain Stars ability
	ldr	r0,[sp,0x4]
	mov 	r1, 0x20
	and 	r1, r0
	cmp 	r1, 0x0
	beq 	NoDoubleTerrainStars
	
	mov	r1,sp
	mov	r0,0
	ldsh 	r0,[r1, r0]
	asl 	r0, r0, 0x1
	str	r0,[sp,0x0]	

NoDoubleTerrainStars:
	;Unit Class Specific Terrain Bonus
	bl 	UnitBasedTerrainStarBonus
	mov	r1,0
	mov	r2,sp
	ldsh	r1,[r2,r1]
	add	r0,r0,r1
	str	r0,[sp]

	;Terrain Star Cut
	bl 	EnemyTerrainStarCut
	
	mov	r1,0
	mov	r2,sp
	ldsh	r1,[r2,r1]
	add	r0,r0,r1
	cmp	r0,0x0
	bge	TerrainStarCutPositive
	mov	r0,0
	
TerrainStarCutPositive:	
	str	r0,[sp]
	
CustomCOTerrainAdjustmentEnd:
	mov	r0,0
	mov	r1,sp
	ldsh	r0,[r0,r1]
	add	sp,0x8
	pop	{r2}
	pop 	{r4}
	pop 	{r1}
	bx 	r1

;Allows the Addition of Terrain Stars to a Unit Class (AW1 Drake)	
UnitBasedTerrainStarBonus:
	push	{r4-r6,r14}
;Calculates Player Number from Unit Address	
	add	sp,-0x8
	ldr	r0,=0x08499594
	ldr	r1,[r4]
	ldr	r0,[r0]
	
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
	add	r0,1
	
	mov	r1,0x3C
	mul	r0,r1
	
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]	
	mov	r2,Gather_CO_UnitTerrainStarBonus
	bl	GatherCOAbility
;Stores Info in stack	
	mov	r1,0xFF
	and	r1,r0
	str	r1,[sp,0x0]
	mov	r1,0xFF
	lsl	r1,r1,0x8
	and	r1,r0
	lsr	r1,r1,0x8
	str	r1,[sp,0x4]
;Unit Checks	
	ldr	r0,[r4]
	ldrb	r0,[r0]
	mov	r1,GatherUnitClass
	mov	r2,1
	bl	GatherUnitAbility
	ldr	r1,[sp,0x4]
	cmp	r1,0xFF
	beq	UnitBasedTerrainStarBonusAllUnits
	cmp	r0,r1
	bne	UnitBasedTerrainStarBonusNoBonus
UnitBasedTerrainStarBonusAllUnits:
	ldr	r0,[sp]
	mov	r1,10
	mul	r0,r1
	b	UnitBasedTerrainStarBonusEnd	
	
UnitBasedTerrainStarBonusNoBonus:
	mov	r0,0
	b	UnitBasedTerrainStarBonusEnd
	
UnitBasedTerrainStarBonusEnd:
	add	sp,0x8
	pop	{r4-r6}
	pop	r1
	bx	r1
	.pool

;Removes Terrain Stars from the opponent (AWDS Sonja)	
EnemyTerrainStarCut:
	;Gathers the Current Player (so Other players can be checked)
	push	{r5-r7,r14}
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
	add	r0,1
	mov	r6,r0
	mov	r5,1
	mov	r7,0
	
EnemyTerrainStarCutLoop:
	mov	r0,r5
	cmp	r0,r6
	beq	EnemyTerrainStarCutLoopEnd
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1B]
	cmp	r0,0x0
	beq	EnemyTerrainStarCutLoopEnd
	ldrb	r0,[r1,0x14]
	cmp	r0,0x1
	beq	EnemyTerrainStarCutLoopEnd	
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,Gather_CO_TerrainStarReduction
	bl	GatherCOAbility
	add	r7,r0,r7
	
EnemyTerrainStarCutLoopEnd:
	add	r5,1
	cmp	r5,5
	blt	EnemyTerrainStarCutLoop
	
	mov	r0,10
	mul	r0,r7
	neg	r0,r0
	pop	{r5-r7}
	pop	r1
	bx	r1
	.pool
;Blank Line
