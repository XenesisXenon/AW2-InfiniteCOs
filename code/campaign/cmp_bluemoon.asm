;cmp_bluemoon.asm

.org 0x08078404
	push	{r14}
	add	sp,-0x4
	ldr	r3,=Event_Intro_BlueMoon;0x084B9F00
	str	r0,[sp]
	mov	r0,0x98
	mov	r1,0xA0
	mov	r2,0x1
	bl	0x080785CC
	add	sp,0x4
	pop	{r0}
	bx	r0
	.pool
	