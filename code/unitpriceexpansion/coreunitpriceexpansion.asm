
CostChangeExpansionFunction:
	mov	r5,r0

	mov	r1,r4
	ForceRankCheckerTurnInput ForceRank_FireSale,ForceRank_Strength_FireSale
	sub	r5,r5,r0
	mov	r1,r4
	ForceRankCheckerTurnInput ForceRank_SalePrice,ForceRank_Strength_SalePrice
	sub	r5,r5,r0
	mov	r1,100
	add	r0,r5,r1
	mul	r0,r6
	mov	r1,100
	bl	DivisionFunction
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool