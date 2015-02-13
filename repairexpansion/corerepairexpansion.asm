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
	mov	r2,GatherRepairBonus
	bl	GatherCOAbility
	
	str	r0,[sp]
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
	mov	r2,GatherRepairBonus
	bl	GatherCOAbility
	str	r0,[sp]
	
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
