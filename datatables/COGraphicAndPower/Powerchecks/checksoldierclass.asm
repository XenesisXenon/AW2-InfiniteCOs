;checksoldierclass.asm

.org 0x08044460
COPCheckSoldierClass:
	mov	r3,r0
	ldrb	r1,[r3,0x1]
	mov	r0,0x8
	and	r0,r1
	cmp	r0,0x0
	bne	COPCheckSoldierClassFalse
	ldr	r2,=0x085D5ABC
	ldrb	r1,[r3]
	mov	r0,0x5C
	mul	r0,r1
	add	r0,r0,r2
	ldrb	r0,[r0,0x18]
	cmp	r0,0x0
	beq	COPCheckSoldierClassTrue
COPCheckSoldierClassFalse:	
	mov	r0,0x0
	b	COPCheckSoldierClassEnd
	.pool
COPCheckSoldierClassTrue:	
	mov	r0,0x1
COPCheckSoldierClassEnd:	
	bx	r14
;Blank Line	
