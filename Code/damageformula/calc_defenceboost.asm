;calc_defenceboost.asm
;Gathers the standard Defence boosts

DefenceBoost_Standard:
	ldr	r2,[r2]
	ldrb	r2,[r2]
	LongBL r3, 0x08043121
	.pool
	
;Blank Line