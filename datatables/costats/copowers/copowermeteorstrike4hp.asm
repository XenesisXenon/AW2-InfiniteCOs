;COPower4HPMeteor.asm

.org 0x08044AA0
COPowerMeteorStrike4HP:
	push	{r14}
	mov	r1,r0
	ldr	r0,=0x084A0858
	bl	0x0801C95C
	add	r0,0x64
	mov	r1,0x28
	strh	r1,[r0]
	pop	{r0}
	bx	r0
	.pool
	
;Blank Line	
