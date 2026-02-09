;hookstunningmeteor.asm
;Allows a Meteor Strike to inflict the custom Stun Status

.org 0x08044854
	push	{r4-r6,r14}
	mov	r4,r0
	mov	r5,r2
	cmp	r4,#0x0
	blt	MeteorInflictDamageEnd;#0x80448DE

	cmp	r1,#0x0
	blt	MeteorInflictDamageEnd;#0x80448DE

	ldr	r0,=#0x8499590
	ldr	r3,[r0]
	ldrh	r0,[r3]
	cmp	r4,r0
	bge	MeteorInflictDamageEnd;#0x80448DE

	ldrh	r6,[r3,#0x2]
	cmp	r1,r6
	bge	MeteorInflictDamageEnd;#0x80448DE

	ldr	r2,=#0x8499594
	lsl	r1,r1,#0x1
	ldr	r6,=#0x417A
	add	r0,r3,r6
	add	r0,r0,r1
	ldrh	r1,[r0]
	add	r1,r1,r4
	ldr	r4,=#0x51A
	add	r0,r3,r4
	add	r0,r0,r1
	ldrb	r1,[r0]
	lsl	r0,r1,#0x1
	add	r0,r0,r1
	lsl	r0,r0,#0x2
	ldr	r1,[r2]
	add	r4,r1,r0
	ldrb	r0,[r4]
	cmp	r0,#0x0
	beq	MeteorInflictDamageEnd;#0x80448DE

	ldrb	r1,[r4,#0x1]
	mov	r0,#0x8
	and	r0,r1
	cmp	r0,#0x0
	bne	MeteorInflictDamageEnd;#0x80448DE

	ldrb	r2,[r4,#0x4]
	lsl	r3,r2,#0x19
	lsr	r1,r3,#0x19
	add	r0,r5,1
	cmp	r1,r0
	bge	MeteorInflictDamageTargetTrue;#0x80448CC

	mov	r0,#0x80
	neg	r0,r0
	and	r0,r2
	mov	r1,#0x1
	orr	r0,r1
	strb	r0,[r4,#0x4]
	b	MeteorInflictDamageEnd;#0x80448DE
	.pool

MeteorInflictDamageTargetTrue:
	ldr	r0,=MeteorInflictDamageAndStun+1
	bx	r0
	.pool
	
;	lsr	r0,r3,#0x19
;	sub	r0,r0,r5
;	mov	r1,#0x7F
;	and	r0,r1
;	mov	r1,#0x80
;	neg	r1,r1
;	and	r1,r2	
;	orr	r1,r0
;	strb	r1,[r4,#0x4]
MeteorInflictDamageEnd:
	pop	{r4-r6}
	pop	{r0}
	bx	r0

;Blank Line
