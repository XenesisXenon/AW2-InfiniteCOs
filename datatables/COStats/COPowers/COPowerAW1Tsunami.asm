;COPowerAW1Tsunami.asm

COPowerAW1Tsunami:
	push	{r4-r6,r14}
	add	sp,-0x14
	ldr	r6,=0x084A0994
	ldr	r1,=0x0811315C
	ldr	r2,=0x08113BA0
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	mov	r5,0x1
	str	r5,[sp]
	mov	r4,0x0
	str	r4,[sp,0x4]
	str	r4,[sp,0xC]	
	sub	r4,0x1
	str	r4,[sp,0x8]
	str	r0,[sp,0x10]
	mov	r0,r6
	bl	LongBLCOPowerAW1Tsunami
	add	sp,0x14
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool
	
LongBLCOPowerAW1Tsunami:
	ldr	r4,=0x08044D70+1
	bx	r4
	.pool	
;Blank Line	
