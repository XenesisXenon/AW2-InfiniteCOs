;COPower8HPMeteor.asm

.org 0x08044A88
COPowerMeteorStrike8HP:
	push	{r14}
	mov	r1,r0
	ldr	r0,=0x084A0858
	bl	0x0801C95C
	add	r0,0x64
	mov	r1,0x50
	strh	r1,[r0]
	pop	{r0}
	bx	r0
	.pool
	
;Blank Line	
