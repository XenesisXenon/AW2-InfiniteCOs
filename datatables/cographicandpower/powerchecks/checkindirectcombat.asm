;checkindirectunit.asm

.org 0x0804443C
COPCheckIndirectCombatUnits:
	push	{r14}
	mov	r2,r0
	ldrb	r1,[r2,0x1]
	mov	r0,0x8
	and	r0,r1
	cmp	r0,0x0
	bne	COPCheckIndirectCombatUnitsFalse
	ldrb	r0,[r2]
	bl	0x080432E0
	cmp	r0,0x6
	beq	COPCheckIndirectCombatUnitsTrue
COPCheckIndirectCombatUnitsFalse:
	mov	r0,0x0
	b	COPCheckIndirectCombatUnitsEnd
COPCheckIndirectCombatUnitsTrue:
	mov	r0,0x1
COPCheckIndirectCombatUnitsEnd:
	pop	{r1}
	bx	r1
;Blank Line
