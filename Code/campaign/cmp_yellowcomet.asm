;cmp_yellowcomet.asm
.org 0x08078420
	push	{r14}
	add	sp,-0x4
	mov	r1,0x80
	lsl	r1,r1,0x1
	ldr	r3,=Event_Intro_YellowComet;0x084BA480
	str	r0,[sp]
	mov	r0,r1
	mov	r1,0x70
	mov	r2,0x3
	bl	0x080785CC
	add	sp,0x4
	pop	{r0}
	bx	r0
	.pool
	