;checkaerialclassorwaitmode.asm

.org 0x080444B4
COPCheckAerialClassOrWaitMode:
	mov	r1,r0
	ldrb	r3,[r1,0x1]
	mov	r0,0x8
	and	r0,r3
	cmp	r0,0x0
	bne	COPCheckAerialClassOrWaitModeFalse
	ldr	r2,=0x085D5ABC
	ldrb	r1,[r1]
	mov	r0,0x5C
	mul	r0,r1
	add	r0,r0,r2
	ldrb	r0,[r0,0x18]
	cmp	r0,0x2
	beq	COPCheckAerialClassOrWaitModeTrue
	cmp	r0,0x3
	beq	COPCheckAerialClassOrWaitModeTrue
	cmp	r0,0x0
	beq	COPCheckAerialClassOrWaitModeFalse
	mov	r0,0x1
	and	r0,r3
	cmp	r0,0x0
	beq	COPCheckAerialClassOrWaitModeFalse
COPCheckAerialClassOrWaitModeTrue:	
	mov	r0,0x1
	b	COPCheckAerialClassOrWaitModeEnd
	.pool
COPCheckAerialClassOrWaitModeFalse:	
	mov	r0,0x0
COPCheckAerialClassOrWaitModeEnd:	
	bx	r14
;Blank Line	
