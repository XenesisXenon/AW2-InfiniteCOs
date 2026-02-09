;COPower_Ereshkigal.asm


COPower_Ereshkigal:
	push	{r4-r6,r14}
	add	sp,-0x14	
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	sub	r0,r3,1
	
	mov	r1,PlayerMemory_Length
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	mov	r1,CurrentPlayerUnitCount
	ldrb	r1,[r0,r1]
	mov	r2,CurrentPlayerUnitLossCount
	ldrb	r0,[r0,r2]
	sub	r0,r1,r0
	mov	r1,10
	bl	DivisionFunction
	cmp	r0,1
	bge	@HasDamage
	mov	r0,1
	
@HasDamage:
	mov	r4,r0
	
	ldr	r6,=0x084A0994
	ldr	r1,=0x081133D0
	ldr	r2,=0x08113BA0
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	str	r4,[sp]
	mov	r4,0x0	
	str	r4,[sp,0x4]
	sub	r4,0x1
	str	r4,[sp,0x8]
	mov	r4,0x0
	str	r4,[sp,0xC]
	str	r0,[sp,0x10]
	mov	r0,r6
	
	bl	@LongCOPower
	add	sp,0x14
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool
	
@LongCOPower:
	ldr	r4,=0x08044D70+1
	bx	r4
	.pool
;Blank Line	
