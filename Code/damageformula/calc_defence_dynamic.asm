;calc_dynamicboost.asm
;Used to calculate the dynamic boosts placed in the variable

DefenceBoost_Dynamic:
	ldr	r0,[r2]
	Calculate_PlayerfromUnitPointer
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r0,r0,r1
	ldrh	r0,[r0,CurrentPlayerTempDefence]
	bx	r14
	.pool
