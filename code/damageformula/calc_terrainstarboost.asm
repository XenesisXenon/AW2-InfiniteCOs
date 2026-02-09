;calc_terrainstarboost.asm
;Reimplementation of Lash's Ability

FirepowerBoost_TerrainStars:
	push	{r4-r7,r14}
	mov	r4,r2
	mov	r5,r1
	mov	r6,r0
	
	;Check for a Valid Unit (Ground/Naval Units Only)
	mov	r0,r4
	ldr	r0,[r0]
	ldrb	r0,[r0]
	mov	r1,GatherUnitClass
	mov	r2,1
	bl	GatherUnitAbility
	cmp	r0,ClassCopter
	beq	@TerrainIntoFirepowerMultiplier_False
	cmp	r0,ClassPlane
	beq	@TerrainIntoFirepowerMultiplier_False
	
	;Check for Terrain Stars to Firepower Skill
	mov	r0,r6
	mov	r1,r5
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	mov	r1,SpecialTerrainGivesFirepower
	and	r1,r0
	cmp	r1,0x0
	beq	@TerrainIntoFirepowerMultiplier_False
	
	mov	r0,r6
	mov	r1,r5
	mov	r2,Gather_CO_TerrainFirepowerMultiplier
	bl	GatherCOAbility	
	mov	r7,r0	;Store Terrain Star Multiplier

	;Check for Double Terrain Stars Skill
	mov	r0,r6
	mov	r1,r5	
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	
	mov	r1,SpecialDoubleTerrainStars
	and	r1,r0
	cmp	r1,0x0
	beq	@TerrainIntoFirepower_StarDoubler_False
	lsl	r7,r7,0x1	;Doubles the Effect
@TerrainIntoFirepower_StarDoubler_False:
	;Grab the number of Terrain Stars directly from the Terrain Data
	ldrb	r0,[r4,0x4]
	mov	r1,0x14
	mul	r0,r1
	ldr	r1,=Table_TerrainClass
	add	r0,r0,r1
	ldr	r0,[r0,0x10]
	mul	r0,r7
	b	@TerrainIntoFirepowerMultiplier_End	

@TerrainIntoFirepowerMultiplier_False:	
	mov	r0,0x0
@TerrainIntoFirepowerMultiplier_End:
	pop	{r4-r7}
	pop	{r1}
	bx	r1	