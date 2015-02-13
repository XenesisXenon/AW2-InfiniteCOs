;COPowerTyphoon.asm

.org 0x08044CBC
COPowerTyphoon:
	push	{r4-r6,r14}
	add	sp,-0x14
	ldr	r6,=0x084A0994		;
	ldr	r1,=0x0811315C		;Attack Icon
	ldr	r2,=0x08113BC0		;Pallete
	ldr	r3,=CurrentPlayerTurn
	ldrh	r3,[r3]
	mov	r5,0x2			;Damage
	str	r5,[sp]
	mov	r4,0x0
	str	r4,[sp,0x4]
	str	r5,[sp,0x8]
	mov	r4,0x1			;Fuel Change
	str	r4,[sp,0xC]
	str	r0,[sp,0x10]
	mov	r0,r6	
	bl	0x08044D70
	add	sp,0x14
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool
	
;Blank Line	
