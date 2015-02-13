;COPower0HPMeteor.asm
;For Stun Effect

COPowerMeteorStrike0HP:
	push	{r14}
	mov	r1,r0
	ldr	r0,=0x084A0858
	bl	LongBLCOPowerMeteorStrike0HP;0x0801C95C
	add	r0,0x64
	mov	r1,0x1
	strh	r1,[r0]
	pop	{r0}
	bx	r0
	.pool

LongBLCOPowerMeteorStrike0HP:
	LongBL r2,0x0801C95D
	
;Blank Line	
