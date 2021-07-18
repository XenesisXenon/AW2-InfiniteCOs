;CoreLuckBoost.asm
;Adds luck bonuses from a non-CO source

Damage_LuckBonus_Boost:
	str	r0, [sp,0x0]	;CO ID
	str	r1, [sp,0x4]	;Power State
	;Player Number in +0x8
	
	mov	r6,0x0
	
	;Standard CO Luck
	ldr	r0,[sp,0x0]
	ldr	r1,[sp,0x4]
	bl	@LongBLGather_COLuck
	mov	r6,r0
	
	ldr	r1,[sp,0x8]
	ForceRankCheckerTurnInput	ForceRank_Luck,ForceRank_Strength_Luck
	add	r6,r0,r6
	
	;Finish up
	mov	r0,r6
	cmp	r0,1
	bge	@Damage_LuckBonus_Boost_End
	mov	r0,1		;Prevents underflow
	
@Damage_LuckBonus_Boost_End:
	add	sp,0xC
	pop	{r6}
	pop	{r1}
	bx	r1
	.pool
	
@LongBLGather_COLuck:
	push	{r4,r14}
	LongBL	r4, 0x08042E2E+1
