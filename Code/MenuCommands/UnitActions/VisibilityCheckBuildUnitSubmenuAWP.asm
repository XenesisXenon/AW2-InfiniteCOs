;VisibilityCheckBuildUnitSubmenuAWP.asm
;Checks to see whether to display this menu function

	.align 4
VisibilityCheckUnitActionBuildSubmenu:
	push	{r14}
	ldr	r1,=0x030040D8
	ldr	r1,[r1]
	ldrb	r0,[r1,0x8]
	cmp	r0,0x0
	beq	VisibilityCheckUnitActionBuildSubmenuEmptySlot2
	
	ldrb	r0,[r1,0x7]
	cmp	r0,0x0
	bne	VisibilityCheckUnitActionBuildSubmenuFalse
	
VisibilityCheckUnitActionBuildSubmenuEmptySlot2:	
	ldrb	r0,[r1]
	ldr	r1,=UnitBuildingCapabilityTable
	add	r1,r0,r1
	ldrb	r1,[r1]
	cmp	r1,0x0	
	beq	VisibilityCheckUnitActionBuildSubmenuFalse
	
;	ldr	r0,=0x030046C0
;	strb	r1,[r0,0x6]	
;	ldr	r0,=CurrentPlayerTurn
;	ldrb	r0,[r0]
;	bl	LongBLUnitPriceGather;0x08042C9C Price Subroutine
;	mov	r1,0xA
;	mul	r0,r1
;	mov	r1,0x3C
;	ldr	r2,=CurrentPlayerTurn
;	ldrb	r2,[r2]
;	mul	r2,r1
;	ldr	r1,=BasePlayerMemory-0x3C
;	add	r1,r1,r2
;	ldr	r1,[r1]
;	cmp	r0,r1
;	bge	MenuDisplayCarrierBuildFalse
	
	mov	r0,0x0
	b	VisibilityCheckUnitActionBuildSubmenuEnd
VisibilityCheckUnitActionBuildSubmenuFalse:	
	mov	r0,0x1
VisibilityCheckUnitActionBuildSubmenuEnd:
	pop	{r1}
	bx	r1
	.pool
	
;Blank Line	
