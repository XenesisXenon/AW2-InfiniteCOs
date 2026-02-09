
CO_MoveBonusExpansionFunction:
	mov	r0,r6
	cmp	r0,Unit_APC
	beq	@Transport_Skill
	cmp	r0,Unit_TransportCopter
	beq	@Transport_Skill
	cmp	r0,Unit_Lander
	beq	@Transport_Skill
	b	@End
@Transport_Skill:	
	mov	r1,r5
	ForceRankCheckerTurnInput	ForceRank_APCBoost,ForceRank_Strength_APCBoost
	add	r4,r0,r4

@End:
	mov	r0,r4 ;Safety check for max movement range
	cmp	r0,12
	blt	@Skip
	mov	r0,11	
@Skip:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool