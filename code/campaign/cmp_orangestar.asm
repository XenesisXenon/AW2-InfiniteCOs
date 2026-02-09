;cmp_orangestar.asm

.org 0x08076BC4
	push	{r14}
	add	sp,-0x4
	ldr	r3,=Event_Intro_OrangeStar;0x084BA6D0
	str	r0,[sp]
	mov	r0,0x0
	mov	r1,0x78
	mov	r2,0x0
	bl	0x080785CC
	add	sp,0x4
	pop	{r0}
	bx	r0
	.pool

.org 0x08076C64
;This code is unreferenced
	push	{r4,r14}
	add	sp,-0x4
	mov	r4,r0
	bl	0x0803866C
	cmp	r0,0x0
	beq	@cmp_orangestar_end
	ldr	r3,=Event_Intro_OrangeStar;0x084BA6D0
	str	r4,[sp]
	mov	r0,0x50
	mov	r1,0x70
	mov	r2,0x0
	bl	0x080785CC
@cmp_orangestar_end:	
	add	sp,0x4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
