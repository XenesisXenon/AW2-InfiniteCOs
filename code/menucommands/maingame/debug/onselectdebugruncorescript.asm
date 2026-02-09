;OnSelectDebugRunCoreScript.asm

OnSelectDebugRunCoreScript:
	push	{r2,r14}
	bl	LongMenuLoadFunctionB	;0x0801A168	

	ldr	r0,=0x03000CE8
	ldr	r0,[r0]
	cmp	r0,0x0
	beq	OnSelectDebugRunCoreScript_False
	ldr	r0,=0x03000CEC
	ldr	r0,[r0]
cmp	r0,0x0
	beq	OnSelectDebugRunCoreScript_False
ldr	r2,=0x0801C8F4+1
bl	BranchR2
OnSelectDebugRunCoreScript_False:
	pop	{r2}
	pop	{r1}
	bx	r1
	.pool

;Blank Line
