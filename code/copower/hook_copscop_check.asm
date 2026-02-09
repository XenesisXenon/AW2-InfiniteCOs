;hook_copscop_check.asm
;Checks for which COP mode has been activated
;Runs a script for each

.org	0x08080E74
	push	{r4,r5,r14}
	
	ldr	r4,=Core_COPSCOP_Check+1
	bx	r4
	;mov	r4,r1
	;mov	r5,r2
	;ldr	r1,=0x03005970
	;str	r0,[r1]
	;ldr	r0,=0x03005904
	;str	r4,[r0]
	;cmp	r4,0x1
	;bne	@Branch_One ;0x08080E8E
Hook_COPSCOP_Check_ReturnCOP:
	ldr	r0,=0x08616794
	mov	r1,r5
	bl	0x0801C95C
	b	@End
	
;@Branch_One:
;	cmp	r4,0x2
;	bne	@Branch_Two ;0x08080E9A
Hook_COPSCOP_Check_ReturnSCOP:
	ldr	r0,=0x08616844
	mov	r1,r5
	bl	0x0801C95C
;@Branch_Two:
@End:
	pop	{r4,r5}
	pop	{r0}
	bx	r0
	.pool
	