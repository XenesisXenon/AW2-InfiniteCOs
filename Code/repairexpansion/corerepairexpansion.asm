;corerepairexpansion.asm

RepairExpansionOne:
	add	sp,-0x8

	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r0,[r0,0x1D]
	mov	r1,0
	mov	r2,Gather_CO_RepairBonus
	bl	GatherCOAbility
	str	r0,[sp]

	ForceRankCheckerPlayerTurnOnly ForceRank_Mechanic,ForceRank_Strength_Mechanic
	ldr	r1,[sp]
	add	r1,r0,r1
	str	r1,[sp]
	ForceRankCheckerPlayerTurnOnly ForceRank_GearHead,ForceRank_Strength_GearHead
	ldr	r1,[sp]
	add	r1,r0,r1
	str	r1,[sp]

	ldrb	r0,[r2]
	mov	r2,1
	sub	r2,r2,r0
	lsl	r2,r2,0x18
	lsr	r2,r2,0x18
	ldr	r1,[sp]
	add	sp,0x8
	
	ldr	r0,=RepairExpansionReturnOne+1
	bx	r0
	.pool

RepairExpansionTwo:
	add	sp,-0x8
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrb	r0,[r0,0x1D]
	mov	r1,0
	mov	r2,Gather_CO_RepairBonus
	bl	GatherCOAbility
	str	r0,[sp]

	ForceRankCheckerPlayerTurnOnly ForceRank_Mechanic,ForceRank_Strength_Mechanic
	ldr	r1,[sp]
	add	r1,r0,r1
	str	r1,[sp]
	ForceRankCheckerPlayerTurnOnly ForceRank_GearHead,ForceRank_Strength_GearHead
	ldr	r1,[sp]
	add	r1,r0,r1
	str	r1,[sp]
	
	ldrb	r0,[r1]
	mov	r2,1
	sub	r2,r2,r0
	lsl	r2,r2,0x18
	lsr	r2,r2,0x18
	ldr	r1,[sp]
	add	sp,0x8
	
	ldr	r0,=RepairExpansionReturnTwo+1
	bx	r0
	.pool	
;Blank Line	
