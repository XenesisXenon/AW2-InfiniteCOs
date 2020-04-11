;coreterrainstardisplayadjustment.asm
TerrainStarDisplayAdjustment:
	;Old Code
	ldr	r0,[r0]
	
	bl	TerrainStarAdjustmentCalculator
	
	;Old Code
;	mov	r0,r1
	mov	r2,r0
	lsl	r2,r2,0x10
	asr	r2,r2,0x10
	mov	r0,r5
	ldr	r1,=0x0802ABB4+1
	bx	r1
	;mov	r1,r4
	;bl	0x0802BAFC
	.pool
	
;Same as above, but for the Info-Panel that pops up when you press R.	
TerrainStarDisplayRInfoAdjustment:
	push	{r1,r3-r4}
	ldr	r0,[r1]
	bl	TerrainStarAdjustmentCalculator
	pop	{r1,r3-r4}
	mov	r2,0x38
	add	r2,r8
	mov	r9,r2
	cmp	r5,r0
	mov	r10,r0	
	bge	TerrainStarDisplayRInfoAdjustmentCompare1
	cmp	r0,6
	bge	TerrainStarDisplayRInfoAdjustmentHighStarRange
	
	ldr	r4,=0x08046BB6+1
	ldr	r6,=TerrainStarDisplayBoxAlignmentTable
	bx	r4	
	
TerrainStarDisplayRInfoAdjustmentHighStarRange:
	ldr	r4,=0x08046BB6+1
	ldr	r6,=TerrainStarDisplayBoxAlignmentTable2
	bx	r4
	
	
TerrainStarDisplayRInfoAdjustmentCompare1:
	ldr	r0,=0x08046BE8+1
	bx	r0
	.pool

TerrainStarDisplayRInfoAdjustmentTwo:
	push	{r1,r3-r4}
	ldr	r0,[r1]
	bl	TerrainStarAdjustmentCalculator
	pop	{r1,r3-r4}
	mov	r2,0x38
	add	r2,r8
	mov	r9,r2
	cmp	r5,r0
	mov	r10,r0	
	bge	TerrainStarDisplayRInfoAdjustmentCompareTwo1
	cmp	r0,6
	bge	TerrainStarDisplayRInfoAdjustmentHighStarRangeTwo
	
	ldr	r4,=0x08046CD0+1
	ldr	r6,=TerrainStarDisplayBoxAlignmentTable
	bx	r4	
	
TerrainStarDisplayRInfoAdjustmentHighStarRangeTwo:
	ldr	r4,=0x08046CD0+1
	ldr	r6,=TerrainStarDisplayBoxAlignmentTable2
	bx	r4
	
	
TerrainStarDisplayRInfoAdjustmentCompareTwo1:
	ldr	r4,=0x08046D02+1
	bx	r4
	.pool


TerrainStarDisplayBoxAlignmentTable:
	;Normal Spacings for 0-5 Stars
	.db	0,0
	.db	8,0
	.db	16,0	
	.db	4,8
	.db	12,8
	
TerrainStarDisplayBoxAlignmentTable2:
	;Tight Spacing for 6-10 Stars
	.db	0,0
	.db	1,8	
	.db	5,0
	.db	6,8	
	.db	10,0
	.db	11,8	
	.db	15,0
	.db	16,8	
	.db	20,0
	.db	21,8
	
TerrainStarAdjustmentCalculator:
	;Input of r0 = Terrain Stars
	push	{r14}
	add	sp,-0x4
	str	r0,[sp]
	;Check for 2x Terrain Star Multiplier
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	bl	TerrainStarDisplayDoubleStars
	cmp	r0,0
	beq	TerrainStarDisplayAdjustmentNegativeStars
	ldr	r0,[sp]
	lsl	r0,r0,0x1
	str	r0,[sp]
	
	;Check for Enemy Terrain Star Reduction	
TerrainStarDisplayAdjustmentNegativeStars:	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	bl	EnemyTerrainStarCutDisplay
	cmp	r0,0
	beq	TerrainStarDisplayAdjustmentEnd
	ldr	r1,[sp]
	sub	r1,r1,r0
	cmp	r1,0
	bge	TerrainStarDisplayAdjustmentNegativeStarsNotBelowZero
	mov	r1,0
TerrainStarDisplayAdjustmentNegativeStarsNotBelowZero:	
	str	r1,[sp]
TerrainStarDisplayAdjustmentEnd:	
	ldr	r0,[sp]
	add	sp,0x4
	pop	r1
	bx	r1
	.pool
	
;Doubles Terrain Stars
TerrainStarDisplayDoubleStars:
	push	{r14}
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1	
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	mov	r1,0x20
	and	r0,r1
	cmp	r0,0
	beq	TerrainStarDisplayDoubleStarsFalse
	mov	r0,1
	b	TerrainStarDisplayDoubleStarsEnd
TerrainStarDisplayDoubleStarsFalse:
	mov	r0,0
TerrainStarDisplayDoubleStarsEnd:
	pop	{r1}
	bx	r1
	.pool
		
	
;Removes Terrain Stars from the opponent (AWDS Sonja)	
EnemyTerrainStarCutDisplay:
	;Gathers the Current Player (so Other players can be checked)
	push	{r5-r7,r14}
	
	mov	r6,r0
	mov	r5,1
	mov	r7,0
	
EnemyTerrainStarCutDisplayLoop:
	mov	r0,r5
	cmp	r0,r6
	beq	EnemyTerrainStarCutDisplayLoopEnd
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1B]
	cmp	r0,0x0
	beq	EnemyTerrainStarCutDisplayLoopEnd
	ldrb	r0,[r1,0x14]
	cmp	r0,0x1
	beq	EnemyTerrainStarCutDisplayLoopEnd	
	ldrb	r0,[r1,0x1D]
	ldrb	r1,[r1,0x1E]
	mov	r2,Gather_CO_TerrainStarReduction
	bl	GatherCOAbility
	add	r7,r0,r7
	
EnemyTerrainStarCutDisplayLoopEnd:
	add	r5,1
	cmp	r5,5
	blt	EnemyTerrainStarCutDisplayLoop
	
	mov	r0,r7
	pop	{r5-r7}
	pop	r1
	bx	r1
	.pool
	
