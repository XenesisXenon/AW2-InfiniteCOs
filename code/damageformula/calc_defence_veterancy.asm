;calc_defence_veterancy.asm
;Adds the defence boost if a unit has "levelled up"
	
DefenceBoost_Veterancy:
	ldr r2, [r2]
	ldrb r2, [r2, 0x1]
	lsr r2, r2, 0x6
	ldr r1,=DefenceBoost_Veterancy_Table
	ldrb r0, [r1, r2]
	bx r14
	.pool	
	
;Veterancy Boost Table
DefenceBoost_Veterancy_Table:
	.byte 0,0,0,20	
	
.align 4

;Blank Line