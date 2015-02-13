;checkdirectcombatunits.asm

.org 0x0804440C
COPCheckDirectCombatUnits:
	mov	r2,r0
	ldrb	r1,[r2,0x1]
	mov	r0, 0x8
	and	r0,r1
	cmp	r0,0x0
	bne	COPCheckDirectCombatUnitsNotDirect
	ldrb	r0,[r2]
	cmp	r0,0x1
	beq	COPCheckDirectCombatUnitsNotDirect
	cmp	r0,0xA
	beq	COPCheckDirectCombatUnitsNotDirect
	cmp	r0,0xB
	beq	COPCheckDirectCombatUnitsNotDirect
	cmp	r0,0xF
	beq	COPCheckDirectCombatUnitsNotDirect
	cmp	r0,0x15
	beq	COPCheckDirectCombatUnitsNotDirect
	mov	r0,0x1
	b	COPCheckDirectCombatUnitsEnd
COPCheckDirectCombatUnitsNotDirect:
	mov	r0,0x0
COPCheckDirectCombatUnitsEnd:	
	bx	r14
;Blanke Line	
