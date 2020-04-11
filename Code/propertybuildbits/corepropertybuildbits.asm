
PropertyBuildBits_AICheck:
	mov	r0,0x1F
	and	r0,r3
	cmp	r0,0x6
	beq	PropertyBuildBits_ExtraCheck
	
	cmp	r0,0xA
	blt	PropertyBuildBits_AICheck_NoBuild
	cmp	r0,0xB
	ble	PropertyBuildBits_AICheck_Build
	cmp	r0,0xE
	bne	PropertyBuildBits_AICheck_NoBuild
PropertyBuildBits_AICheck_Build:
	mov	r0,0x1
	b	PropertyBuildBits_AICheck_End
PropertyBuildBits_AICheck_NoBuild:
	mov	r0,0
	b	PropertyBuildBits_AICheck_End

PropertyBuildBits_ExtraCheck:
	;Checks for 'Build from Cities' bit
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	mov	r1,SpecialCityDeploy
	and	r0,r1
	cmp	r0,0x0
	bne	PropertyBuildBits_AICheck_Build	

	;Checks for Soul of Hachi Force Rank
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	cmp	r1,ForceRank_Strength_SoulofHachi
	blt	PropertyBuildBits_AICheck_NoBuild
	ForceRankCheckerPlayerTurnOnly ForceRank_SoulofHachi,ForceRank_Strength_SoulofHachi
	cmp	r0,ForceRank_Strength_SoulofHachi
	beq	PropertyBuildBits_AICheck_Build
	mov	r0,0
	b	PropertyBuildBits_AICheck_End
PropertyBuildBits_AICheck_End:
	pop	{r4}
	pop	{r1}
	bx	r1
	.pool

PropertyBuildBits_HumanCheck:
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_SpecialEffectsLow
	bl	GatherCOAbility
	mov	r1,SpecialCityDeploy
	and	r0,r1
	cmp	r0,0x0
	bne	PropertyBuildBits_HumanCheck_Build

	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	cmp	r1,ForceRank_Strength_SoulofHachi
	blt	PropertyBuildBits_HumanCheck_NoBuild
	ForceRankCheckerPlayerTurnOnly ForceRank_SoulofHachi,ForceRank_Strength_SoulofHachi
	cmp	r0,ForceRank_Strength_SoulofHachi
	bne	PropertyBuildBits_HumanCheck_NoBuild

PropertyBuildBits_HumanCheck_Build:
	mov	r0,0x1
	b	PropertyBuildBits_HumanCheck_End
PropertyBuildBits_HumanCheck_NoBuild:
	mov	r0,0
PropertyBuildBits_HumanCheck_End:
	pop	{r4}
	pop	{r1}
	bx	r1
	.pool
