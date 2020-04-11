;VisibilityCheckBuildUnitAWP.asm
;Checks to see whether to display this menu function

	.align 4
VisibilityCheckUnit4Build:
	push	{r14}
	ldr	r1,=0x030040D8
	ldr	r1,[r1]
	ldrb	r0,[r1,0x8]
	cmp	r0,0x0
	beq	VisibilityCheckUnit4BuildEmptySlot2
	ldrb	r0,[r1,0x7]
	cmp	r0,0x0
	bne	VisibilityCheckUnit4BuildFalse
VisibilityCheckUnit4BuildEmptySlot2:	
	ldrb	r0,[r1]
	ldr	r1,=UnitBuildingCapabilityFourTable
	add	r1,r0,r1
	ldrb	r1,[r1]
	cmp	r1,0x0	
	beq	VisibilityCheckUnit4BuildFalse
	ldr	r0,=0x030046C0
	strb	r1,[r0,0x9]	
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
	bge	VisibilityCheckUnit4BuildFalse
	
	mov	r0,0x0
	b	VisibilityCheckUnit4BuildEnd
VisibilityCheckUnit4BuildFalse:	
	mov	r0,0x2
VisibilityCheckUnit4BuildEnd:
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line	
