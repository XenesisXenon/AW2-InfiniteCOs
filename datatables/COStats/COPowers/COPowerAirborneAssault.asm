;copowerairborneassault.asm

.org 0x08045460
COPowerAirborneAssault:
	push	{r14}
	mov	r1,r0
	ldr	r0,=0x084A09CC
	bl	0x0801C95C
	mov	r1,0x2
	str	r1,[r0,0x54]
	pop	{r0}
	bx	r0
	.pool
	
;Blank Line
