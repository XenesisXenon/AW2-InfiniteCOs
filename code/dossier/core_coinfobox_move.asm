;core_coinfobox_move.asm
;Moves the box so low sprites don't get covered

Core_MoveDossierInfoBox:
	mov	r0,0x0
	ldsh	r2,[r4,r0]
	mov	r0,PlayerMemory_Length
	mul	r0,r2
	ldr	r1,=BasePlayerMemory-PlayerMemory_Length
	add	r0,r0,r1
	ldrb	r0,[r0,CurrentPlayerCO]
	cmp	r0,COCCOEliwood
	beq	@Move
	cmp	r0,COCCONergal
	beq	@Move
	cmp	r0,COSFWCaroline
	beq	@Move
	cmp	r0,COSFWBillyGates
	beq	@Move
	cmp	r0,COSFWYamamoto
	beq	@Move
	
	mov	r0,0x0
	ldsh	r2,[r4,r0]
	mov	r0,0x98
	mov	r1,0x70
	b	@Draw
@Move:
	mov	r0,0x0
	ldsh	r2,[r4,r0]
	mov	r0,0x98
	mov	r1,0x4
	b	@Draw
@Draw:
	bl	@Long_DrawInfoBox
	add	sp,0x4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
@Long_DrawInfoBox:
	LongBL r3,0x080436DC+1
