;calc_defenceboost.asm
;Gathers the standard Defence boosts

DefenceBoost_Standard:
	mov	r2,1
	LongBL r3, 0x08043121
	.pool
	
;Blank Line