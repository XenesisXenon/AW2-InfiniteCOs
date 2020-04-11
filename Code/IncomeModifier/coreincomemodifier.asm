;coreincomemodifier.asm
PropertyIncomeCalculator_Forces:
	mov	r3,r0

	ldr	r2,=0x020232C0
	cmp	r2,r4
	bne	PropertyIncomeCalculator_Forces_PlayerTwo
	mov	r1,1
	b	PropertyIncomeCalculator_Forces_Check

PropertyIncomeCalculator_Forces_PlayerTwo:
	add	r2,0x3C
	cmp	r2,r4
	bne	PropertyIncomeCalculator_Forces_PlayerThree
	mov	r1,2
	b	PropertyIncomeCalculator_Forces_Check

PropertyIncomeCalculator_Forces_PlayerThree:
	add	r2,0x3C
	cmp	r2,r4
	bne	PropertyIncomeCalculator_Forces_PlayerFour
	mov	r1,3
	b	PropertyIncomeCalculator_Forces_Check

PropertyIncomeCalculator_Forces_PlayerFour:
	add	r2,0x3C
	cmp	r2,r4
	bne	PropertyIncomeCalculator_Forces_CurrentPlayer
	mov	r1,4
	b	PropertyIncomeCalculator_Forces_Check

PropertyIncomeCalculator_Forces_CurrentPlayer:
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	ldr	r4,=BasePlayerMemory-0x3C
	mov	r2,0x3C
	mul	r2,r1
	add	r4,r2,r4

PropertyIncomeCalculator_Forces_Check:
	mov	r0,ForceRank_Goldrush
	bl	ForceRankCheckerSubroutine
	cmp	r0,0x0
	beq	PropertyIncomeCalculator_Forces_False
	mov	r0,ForceRank_Strength_Goldrush
	b	PropertyIncomeCalculator_Forces_True
PropertyIncomeCalculator_Forces_False:
	mov	r0,0
PropertyIncomeCalculator_Forces_True:
	add	r0,r0,r3

;Add CO-Special Income
	ldrb	r1,[r4,0x1D]
	mov	r2,0x82
	lsl	r2,r2,0x1
	mul	r1,r2
	ldr	r2,=COStatsAbilitiesDatatable
	add	r1,r1,r2
	add	r1,0x60
	ldrh	r1,[r1]
	add	r0,r0,r1

	ldr	r1,=PropertyIncomeCalculator_Forces_Return+1
	bx	r1	
	.pool

AddFlatIncomeBoost:
	ldr	r3,=BasePlayerMemory
	mov	r4,0
	
AddFlatIncomeBoostLoop:	
	ldrb	r0,[r3,0x14]
	cmp	r0,0x0
	bne	AddFlatIncomeBoostLoopEnd
	mov	r1,r3
	add	r1,0x1B
	ldr	r0,[r1]
	cmp	r0,0x0
	beq	AddFlatIncomeBoostLoopEnd
	ldrb	r0,[r3,0x1D]
	mov	r1,0
	mov	r2,Gather_CO_FlatIncome
	bl	GatherCOAbility
	mov	r1,100
	mul	r0,r1
	ldr	r1,[r3,0x8]
	add	r0,r0,r1
	str	r0,[r3,0x8]
AddFlatIncomeBoostLoopEnd:
	add	r4,1
	add	r3,0x3C
	cmp	r4,3
	bgt	AddFlatIncomeBoostEnd
	b	AddFlatIncomeBoostLoop
	
AddFlatIncomeBoostEnd:
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r0}
	bx	r0	
	.pool
	;Blank Line

;Terrain Income Table
TerrainPropertyIncomeTable:
	;City
	.db	1
	;Sea
	.db	0
	;HQ
	.db	1
	;N/A
	.db	0
	;Airport
	.db	1
	;Port
	.db	1
	;Bridge
	.db	0
	;Shoal
	.db	0
	;Base
	.db	1
	;Pipeline
	.db	0
	;Pipe Seam
	.db	0
	;Silo
	.db	0
	;12
	.db	0
	;Reef
	.db	0
.align 4
	;Lab
	.db	1