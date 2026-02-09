;CoreForceRankChecker.asm
;Checks whether any given force rank is attached.
;input: Force Rank ID in r0
;Player Number in r1
;Player Number of 5-8 = Back Slot 1-4

ForceRankCheckerSubroutine:
	push	{r2-r3}
	sub	r1,1
	mov	r2,ForceRank_Slot_Total
	mul	r1,r2
	ldr	r2,=CustomForceRankRAM
	add	r1,r1,r2
	mov	r2,0

ForceRankCheckerSubroutineLoopStart:
	ldrb	r3,[r1,r2]
	cmp	r3,0
	beq	ForceRankCheckerSubroutineLoopNoData
	
	cmp	r3,r0
	beq	ForceRankCheckerSubroutineLoopReturnTrue
ForceRankCheckerSubroutineLoopNoData:
	add	r2,1
	mov	r3,ForceRank_Slot_Total
	cmp	r2,r3
	bge	ForceRankCheckerSubroutineLoopReturnFalse
	b	ForceRankCheckerSubroutineLoopStart
	
ForceRankCheckerSubroutineLoopReturnTrue:
	mov	r0,1
	pop	{r2-r3}
	bx	r14

ForceRankCheckerSubroutineLoopReturnFalse:	
	mov	r0,0
	pop	{r2-r3}
	bx	r14
	.pool

;Blank Line
