;core_firepowerboost.asm

Core_Firepowerboost:
	;Unit Base Firepower
	ldr	r2, [sp]
	ldr	r3, [sp,0x4]
	ldr	r6, [sp, 0x18]	;Load input of sp+0x0
	ldr	r5,=0x085D5ABC
	mov	r4, 0x1A
	mul	r4, r6
	add	r3, r3, r4
	mov	r4, 0x5C
	;Extra Load to recover UIDs
	mul	r4, r2
	add	r3, r3, r4
	add	r5, 0x1E
	add	r3, r3, r5
	ldrb	r4,[r3]

	add 	r0, 100
	cmp 	r4, 0
	ble 	UnitDoesNoDamage
	mul 	r0, r4
	mov 	r1, 100
	bl 	DivisionFunction
	cmp 	r0, 0
	bne 	UnitDamageCalculationEnd
	mov 	r0, 1
	b 	UnitDamageCalculationEnd
UnitDoesNoDamage:
	mov 	r0, 0
UnitDamageCalculationEnd:
	add	sp,0x8
	pop 	{r4-r6}
	pop 	{r1}
	bx r1

