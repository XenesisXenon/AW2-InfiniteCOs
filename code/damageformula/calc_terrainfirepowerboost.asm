;corecoterrainfirepowerboost.asm
;Grants a firepower boost to a CO's unit depending on the terrain that they are on
;For Kindle/Koal/Jake style boosts.

FirepowerBoost_TerrainTiles:
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


