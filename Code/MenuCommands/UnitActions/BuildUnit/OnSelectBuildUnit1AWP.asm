;OnSelectBuildUnitAWP.asm
;Builds a Unit, Loaded into the Unit

	.align 4
OnSelectBuildUnitOne:
	push	{r14}
	bl	MenuFunctionCommon

	ldr	r1,=0x030040D8
	ldr	r1,[r1]
	ldrb	r0,[r1,0x2]
	ldrb	r1,[r1,0x3]
	ldr	r2,=0x030046C0
	ldrb	r2,[r2,0x6]
	push	{r4}
	bl	LongBLBuildSubroutine
	ldr	r1,=0x030040D8
;	str	r0,[r1]
;	bl	LongBLMenuFunctionLoadUnit
	bl	OnSelectBuildUnitOneLoadUnit
	pop	{r4}
;Common Code
	ldr 	r0,=0x03003FC0
	add	r0,0x32
	ldrb	r1,[r0]
	mov	r0,0x3
	mov 	r2,0x0
	mov	r3,0x0
	push	{r4}
	bl	LongBLOnSelectBuildUnitOne;0x08034534
	pop	{r4}
	pop	{r0}
	bx 	r0
	.pool	
LongBLOnSelectBuildUnitOne:
	LongBL r4,0x08034535
	
OnSelectBuildUnitOneLoadUnit:
	push	{r4-r6,r14}
	;Sets unit to being Transported
	ldrb	r1,[r0,0x1]
	mov	r4,0xA
	orr	r1,r4
	strb	r1,[r0,0x1]
	;Calculates Unit ID
	ldr	r1,[r0]	
	ldr	r4,=BaseUnitOffset+0x300-0xC
	mov	r5,0x0
OnSelectBuildUnitOneLoadUnitLoop:	
	ldr	r6,[r4]
	cmp	r6,r1
	beq	OnSelectBuildUnitOneLoadUnitLoopEnd
	add	r4,0xC
	add	r5,0x1
	b	OnSelectBuildUnitOneLoadUnitLoop
OnSelectBuildUnitOneLoadUnitLoopEnd:	
	ldr	r0,=0x030040D8
	ldr	r0,[r0]
	ldrb	r1,[r0,0x1]
	;Sets Building Unit's 'Transporting' Flag
	mov	r4,0x10
	orr	r1,r4
	strb	r1,[r0,0x1]
	;Sets Building Unit's 'Stun' Flag
	ldrb	r1,[r0,0x6]
	mov	r4,0x80
	orr	r1,r4
	strb	r1,[r0,0x6]
	
	ldrb	r1,[r0,0x7]
	cmp	r1,0x0
	bne	OnSelectBuildUnitOneLoadUnitSlotOneFull
	strb	r5,[r0,0x7]
	b	OnSelectBuildUnitOneLoadUnitEnd
OnSelectBuildUnitOneLoadUnitSlotOneFull:	
	strb	r5,[r0,0x8]
OnSelectBuildUnitOneLoadUnitEnd:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool
		
;Blank Line	
