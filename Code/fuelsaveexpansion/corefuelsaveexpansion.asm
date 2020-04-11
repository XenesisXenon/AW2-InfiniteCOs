
FuelSaverExpansion:
	push	{r0}
	ldrb	r0,[r4,0x1]
	mov	r1,0x20
	and	r0,r1
	cmp	r0,0x0
	beq	FuelSaverExpansion_UnitNotHidden

	ForceRankCheckerPlayerTurnOnly	ForceRank_Sneaky,ForceRank_Strength_Sneaky
	sub	r5,r5,r0
	ForceRankCheckerPlayerTurnOnly	ForceRank_Stealthy,Forcerank_Strength_Stealthy
	sub	r5,r5,r0

	cmp	r5,0
	bgt	FuelSaverExpansion_NoUnderflow
	mov	r5,0

FuelSaverExpansion_UnitNotHidden:
FuelSaverExpansion_NoUnderFlow:
	pop	{r0}
	lsl	r1,r5,0x18
	asr	r1,r1,0x18
	add	r1,r1,r0
	lsl	r1,r1,0x18

	ldr	r5,=0x0802542C+1
	bx	r5
	.pool