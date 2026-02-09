;OnSelectBuildUnitAWP.asm
;Builds a Unit, Loaded into the Unit

	.align 4
OnSelectBuildUnitTwo:
	push	{r14}
	bl	MenuFunctionCommon

	ldr	r1,=0x030040D8
	ldr	r1,[r1]
	ldrb	r0,[r1,0x2]
	ldrb	r1,[r1,0x3]
	ldr	r2,=0x030046C0
	ldrb	r2,[r2,0x7]
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
	
;Blank Line	
