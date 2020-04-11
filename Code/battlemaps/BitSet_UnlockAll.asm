;BitSet_UnlockAll
;Unlocks all the things

BitSet_UnlockAll:
	push	{r14}
	ldr	r0,=0x17F	;Campaign/Game Modes
	ldr	r1,=0x02028030
	strh	r0,[r1]
	
	mov	r0,0x1		;Map Cases
	neg	r0,r0
	add	r1,0x10
	strb	r0,[r1]
	
	add	r1,2
	mov	r2,0		;Maps
@Map_Loop_Start:	
	add	r2,0x1
	strb	r0,[r1,r2]
	cmp	r2,0x11
	blt	@Map_Loop_Start
	
	ldr	r0,=0xFFFF	;COs
	add	r1,0x18
	strb	r0,[r1]
	strb	r0,[r1,0x1]
	strb	r0,[r1,0x2]
	
	ldr	r0,=0xFFFF	;Colour Edits
	add	r1,0x3
	strb	r0,[r1]
	strb	r0,[r1,0x1]
	strb	r0,[r1,0x2]
	
	pop	{r1}
	bx	r1
	.pool
