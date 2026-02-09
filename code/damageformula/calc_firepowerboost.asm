;calc_firepowerboost.asm
;This is the standard firepower calculation.
FirepowerBoost_Standard:
	;Input: r0 = CO ID, r1 = CO Power State, r2 = Battle Pointer
	push	{r4-r7,r14}
	ldr	r2,[r2]
	ldrb	r2,[r2]
	ldr	r3,=0x080430B2+1
	bx	r3
	.pool
