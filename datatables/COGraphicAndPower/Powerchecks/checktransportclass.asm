;checktransportclass.asm
;Checks whether a unit is a transport and/or if a unit is being transported

COPCheckTransportClass:
	mov	r3,r0
	ldrb	r1,[r3,0x1]
	mov	r0,0x8
	and	r0,r1
	cmp	r0,0x8
	beq	COPCheckTransportClassTrue
	
	ldr	r1,=COPCheckTransportClassTable
	ldrb	r0,[r3]
	add	r1,r0,r1
	ldrb	r0,[r1]
	cmp	r0,0x1
	beq	COPCheckTransportClassTrue
	b	COPCheckTransportClassFalse	
COPCheckTransportClassFalse:	
	mov	r0,0x0
	b	COPCheckTransportClassEnd
	.pool
COPCheckTransportClassTrue:	
	mov	r0,0x1
COPCheckTransportClassEnd:	
	bx	r14
;Blank Line	

COPCheckTransportClassTable:
	.db 0,0,0,0,0,0,1,1,0,0
	.db 0,0,1,1,0,0,0,0,0
	.db 1,1,0,1,1,0 
	.align
