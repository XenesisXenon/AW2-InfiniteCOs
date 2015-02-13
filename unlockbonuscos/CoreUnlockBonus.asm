;CoreUnlockBonusCOs.asm

CoreUnlockBonusCOs:
	cmp	r0,0x12
	bgt	CoreUnlockBonusCOisTrue
	ldr	r1,=0x02028030
	lsr	r2,r0,0x3
	add	r1,0x2A
	add	r2,r2,r1
	mov	r1,0x7
	and	r1,r0
	mov	r0,0x1
	lsl	r0,r1
	ldrb	r1,[r2]
	and	r0,r1
	bx	r14
CoreUnlockBonusCOisTrue:
	mov	r0,0x1
	bx	r14
	.pool
	
;Blanke Line	
