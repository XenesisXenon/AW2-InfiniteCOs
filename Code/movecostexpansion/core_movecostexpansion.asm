;core_movecostexpansion.asm

Core_MoveCostExpansion:
	ldr	r1,=0x03004480
	ldrb	r1,[r1]
	ForceRankCheckerTurnInput ForceRank_PrairieDog,1
	cmp	r0,0
	beq	@Check_2
	ldr	r0,=0x03003400
	mov	r1,TerrainClass_Plain
	add	r0,r0,r1
	mov	r1,ForceRank_Strength_PrairieDog
	strb	r1,[r0]

@Check_2:	
	ldr	r1,=0x03004480
	ldrb	r1,[r1]
	ForceRankCheckerTurnInput ForceRank_Pathfinder,1
	cmp	r0,0
	beq	@Return
	ldr	r0,=0x03003400
	mov	r1,TerrainClass_Wood
	add	r0,r0,r1
	mov	r1,ForceRank_Strength_Pathfinder
	strb	r1,[r0]

@Return:
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

Core_MoveCostExpansion_Two:
	ldr	r0,=0x030040D8
	ldr	r0,[r0]
	ldrb	r2,[r0]
	mov	r0,0x5C
	mul	r0,r2
	add	r0,r0,r3
	ldrb	r0,[r0,0x19]
	lsl	r0,r0,0x5
	push	{r1}	;Save r1 for later
	add	r1,r1,r0
	add	r4,r4,r1
	;New Code
	pop	{r1}
	
	cmp	r1,TerrainClass_Plain
	bne	@CheckTwo
	ldr	r1,=0x03003F38
	ldrb	r1,[r1]
	lsr	r1,r1,0x6
	add	r1,1
	ForceRankCheckerTurnInput ForceRank_PrairieDog,1
	cmp	r0,0
	beq	@ReturnTwo_NoForce
	ldrb	r0,[r7]
	mov	r1,ForceRank_Strength_PrairieDog
	b	@ReturnTwo_YesForce
	
@CheckTwo:
	cmp	r1,TerrainClass_Wood
	bne	@ReturnTwo_NoForce
	ldr	r1,=0x03003F38
	ldrb	r1,[r1]
	lsr	r1,r1,0x6
	add	r1,1
	ForceRankCheckerTurnInput ForceRank_Pathfinder,1
	cmp	r0,0
	beq	@ReturnTwo_NoForce
	ldrb	r0,[r7]
	mov	r1,ForceRank_Strength_Pathfinder
	b	@ReturnTwo_YesForce
	
@ReturnTwo_NoForce:
	;Original Code
	ldrb	r0,[r7]
	ldrb	r1,[r4]
@ReturnTwo_YesForce:
	sub	r0,r0,r1
	mov	r2,r8
	strb	r0,[r2]
	pop	{r3}
	mov	r8,r3
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool

Core_MoveCostExpansion_Three:
	;Original Code
	ldrb	r0,[r2]
	mov	r1,0x1F
	and	r1,r0
	;Branches
	cmp	r1,TerrainClass_Plain
	beq	@CheckThree
	cmp	r1,TerrainClass_Wood
	beq	@CheckThree_2

@ReturnThree_NoForce:
	ldr	r3,=0x085D5ABC
	ldr	r0,=0x08038EA8+1
	bx	r0	

@CheckThree:
	push	{r0-r2}
	ldr	r1,=0x03003F38
	ldrb	r1,[r1]
	lsr	r1,r1,0x6
	add	r1,1
	ForceRankCheckerTurnInput ForceRank_PrairieDog,1
	cmp	r0,0
	pop	{r0-r2}
	beq	@ReturnThree_NoForce
	b	@ReturnThree_YesForce

@CheckThree_2:
	push	{r0-r2}
	ldr	r1,=0x03003F38
	ldrb	r1,[r1]
	lsr	r1,r1,0x6
	add	r1,1
	ForceRankCheckerTurnInput ForceRank_Pathfinder,1
	cmp	r0,0
	pop	{r0-r2}
	beq	@ReturnThree_NoForce
	b	@ReturnThree_YesForce
	
@ReturnThree_YesForce:
	ldr	r0,=0x030040D8
	ldr	r0,[r0]
	ldrb	r2,[r0]
	mov	r0,0x5C
	mul	r0,r2
	add	r0,r0,r3
	ldrb	r0,[r0,0x19]
	lsl	r0,r0,0x5
	add	r1,r1,r0
	add	r4,r4,r1
	mov	r1,0
	ldsb	r1,[r7,r1]
	mov	r0,1	;Movement cost for Skills
	cmp	r1,r0
	bge	@ReturnThree_Path
	b	@ReturnThree_Skip
	
@ReturnThree_Path:
	ldr	r1,=0x08038ECA+1
	bx	r1
	
@ReturnThree_Skip:
	ldr	r6,=0x08038FC0+1
	bx	r6	
	.pool
	