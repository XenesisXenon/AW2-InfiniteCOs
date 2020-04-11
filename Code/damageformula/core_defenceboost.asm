;coredefenceboost.asm
;Expands the Defence Boost Function
.align 4
CustomCODefenceBoost:
	add 	sp, -0x10
	str	r0,[sp,0x10]
	str 	r5, [sp, 0x8]
	mov 	r2, r1
	ldr 	r1,=BaseUnitPointer
	ldr 	r3, [r1]
	mov 	r1, 0x3C
	mul 	r1, r0
	add 	r1, r1, r3
	ldrb 	r0, [r1, 0x1D]
	ldrb 	r1, [r1, 0x1E]
	str 	r0, [sp, 0x0]
	str 	r1, [sp, 0x4]
	;mov 	r2, 1
	mov 	r2, r5
	ldr	r3,=List_DefenceCalculations
	ldr	r6,=Main_StatCalc+1
	bl	BranchR6
	
	add 	r0, 100
	add 	sp, 0x10
	pop 	{r4-r6}
	pop 	{r1}
	bx 	r1
	.pool	
