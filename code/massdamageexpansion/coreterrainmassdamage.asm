;coreterrainmassdamage.asm
;Inflicts Terrain-Specific Mass Damage
MassDamageExpansionTerrain:
	push	{r2,r5,r6}
	ldrb	r1,[r4,#0x1]
	mov	r0,#0x8
	and	r0,r1
	cmp	r0,#0x0
	beq	MassDamageExpansionTerrainCheck
MassDamageExpansionTerrainFalse:
	pop	{r2,r5,r6}
	ldr	r1,=MassDamageExpansion8+1
	bx	r1
	
MassDamageExpansionTerrainCheck:
	;Terrain Specific Mass Damage
	ldr	r0,=BaseMapPointer
	ldr	r0,[r0]
	ldrh	r1,[r0]
	ldrb	r2,[r4,0x3]
	mul	r1,r2
	ldrb	r2,[r4,0x2]
	add	r1,r1,r2
	ldr	r0,=CurrentMapData
	add	r0,r0,r1
	ldrb	r0,[r0]
	mov	r1,0x1F
	and	r0,r1
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	mov	r2,0x3C
	mul	r1,r2
	ldr	r2,=BasePlayerMemory-0x3C
	add	r1,r1,r2
	ldrb	r2,[r1,0x1E]
	ldrb	r1,[r1,0x1D]

	mov	r5,0x82
	lsl	r5,r5,0x1
	mul	r1,r5
	mov	r5,0x44
	mul	r2,r5
	ldr	r5,=COStatsAbilitiesDatatable
	add	r1,r5,r1
	add	r1,r1,r2
	add	r1,0x68
	ldr	r1,[r1]
	cmp	r1,0x0
	beq	MassDamageDoMassDamage

	add	r1,r0,r1
	ldrb	r1,[r1]
	mov	r0,0x1
	and	r1,r0
	cmp	r1,0x0
	
	beq	MassDamageExpansionTerrainFalse
	
MassDamageDoMassDamage:
	pop	{r2,r5,r6}
	ldrb	r5,[r4,0x4]
	ldr	r1,=MassDamageExpansionTerrainReturn+1
	bx	r1
	.pool
