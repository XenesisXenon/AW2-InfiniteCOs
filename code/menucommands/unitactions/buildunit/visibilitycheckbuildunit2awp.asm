;VisibilityCheckBuildUnitAWP.asm
;Checks to see whether to display this menu function

	.align 4
VisibilityCheckUnit2Build:
	push	{r14}
	ldr	r1,=0x030040D8
	ldr	r1,[r1]
	ldrb	r0,[r1,0x8]
	cmp	r0,0x0
	beq	VisibilityCheckUnit2BuildEmptySlot2
	ldrb	r0,[r1,0x7]
	cmp	r0,0x0
	bne	VisibilityCheckUnit2BuildFalse
VisibilityCheckUnit2BuildEmptySlot2:	
	ldrb	r0,[r1]
	ldr	r1,=UnitBuildingCapabilityTwoTable
	add	r1,r0,r1
	ldrb	r1,[r1]
	cmp	r1,0x0	
	beq	VisibilityCheckUnit2BuildFalse
	ldr	r0,=0x030046C0
	strb	r1,[r0,0x7]	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	bl	LongBLUnitPriceGather;0x08042C9C Price Subroutine
	mov	r1,0xA
	mul	r0,r1
	mov	r1,0x3C
	ldr	r2,=CurrentPlayerTurn
	ldrb	r2,[r2]
	mul	r2,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r1,r2
	ldr	r1,[r1]
	cmp	r0,r1
	bge	VisibilityCheckUnit2BuildFalse
	
	mov	r0,0x0
	b	VisibilityCheckUnit2BuildEnd
VisibilityCheckUnit2BuildFalse:	
	mov	r0,0x2
VisibilityCheckUnit2BuildEnd:
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line	
