;copeffectheal2HPandresupply.asm
;Heals 2 HP to all units
;Resupplies all units


COPEffectHealVariableHPAndResupply:
	push	{r4,r14}
	ldrb	r1,[r0]
	ldr	r2,=COPEffectHealVariableHPTable
	add	r1,r1,r2
	ldrb	r1,[r1]
	mov	r2,0x0
	bl	LongBLCOPEffectHPHealingFunction;0x08029AF8
	ldr	r0,[sp,0x0]
	mov	r4,r0
	mov	r1,0x0
	bl	LongBLCOPEffectRefuelFunction;0x08029978
	mov	r0,r4
	mov	r1,0x0
	bl	LongBLCOPEffectResupplyFunction;0x08029A48
	pop	{r4}
	pop	{r0}
	bx	r0


LongBLCOPEffectHPHealingFunction:
	LongBL r3,0x08029AF9
	
LongBLCOPEffectRefuelFunction:
	LongBL r3,0x08029979
	
LongBLCOPEffectResupplyFunction:
	LongBL r3,0x08029A49
	
COPEffectHealVariableHPTable:
	.db 0,2,2,2,2,2
	.db 2,2,2,4,2
	.db 2,4,4,2,2
	.db 4,4,4,4,4
	.db 4,4,4,4,4
	.align 4
	
;Blank Line	
