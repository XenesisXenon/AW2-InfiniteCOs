;corestunningmeteor.asm

MeteorInflictDamageAndStun:
	mov	r0,0x1
	and	r0,r5
	cmp	r0,0x0
	beq	MeteorInflictDamageNoStun
	mov	r1,0x80
	ldrb	r0,[r4,0x6]
	orr	r0,r1
	strb	r0,[r4,0x6]
	ldrb	r0,[r4,0x1]
	mov	r1,0xDF
	and	r0,r1
	strb	r0,[r4,0x1]	
	
MeteorInflictDamageNoStun:
	mov	r0,0xFE
	and	r5,r0
	
	lsr	r0,r3,#0x19
	sub	r0,r0,r5
	mov	r1,#0x7F
	and	r0,r1
	mov	r1,#0x80
	neg	r1,r1
	and	r1,r2	
	orr	r1,r0
	strb	r1,[r4,#0x4]
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	
;Blank Line	
