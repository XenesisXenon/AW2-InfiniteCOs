;COPowerBlackStorm.asm

.org 0x08044D34
COPowerBlackStorm:
	push	{r4,r5,r14}
	add	sp,-0x14
	ldr	r5,=0x084A0994
	ldr	r1,=0x081133D0
	ldr	r2,=0x08113BC0
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	mov	r4,0x2
	str	r4,[sp]
	str	r4,[sp,0x4]
	sub	r4,0x3
	str	r4,[sp,0x8]
	mov	r4,0x0
	str	r4,[sp,0xC]
	str	r0,[sp,0x10]
	mov	r0,r5
	bl	0x08044D70
	add	sp,0x14
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
;Blank Line	
