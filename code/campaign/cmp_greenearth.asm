;cmp_greenearth.asm
.org 0x080783BC
	push	{r4,r14}
	add	sp,-0x4
	mov	r4,r0
	ldr	r2,=0x0202FDFC
	mov	r0,r2
	add	r0,0x21
	ldrb	r1,[r0]
	mov	r3,0x2
	mov	r0,r3
	and	r0,r1
	cmp	r0,0x0
	beq	@cmp_greenearth_end
	
	mov	r0,r2
	add	r0,0x29
	ldrb	r1,[r0]
	mov	r0,r3
	and	r0,r1
	cmp	r0,0x0
	beq	@cmp_greenearth_end
	
	mov	r0,0xB0
	lsl	r0,r0,0x1
	ldr	r3,=Event_Intro_GreenEarth;0x084BA210
	str	r4,[sp]
	mov	r1,0xA0
	mov	r2,0x2
	bl	0x080785CC
@cmp_greenearth_end:	
	add	sp,0x4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	