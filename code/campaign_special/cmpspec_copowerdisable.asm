;cmpspec_copowerdisable.asm

.org 0x08019894
Cmpspec_COPowerDisable:
	ldr	r1,=CurrentGameOptions
	mov	r0,0x0
	strb	r0,[r1,GameRule_COPowers]
	bx	r14
	.pool
