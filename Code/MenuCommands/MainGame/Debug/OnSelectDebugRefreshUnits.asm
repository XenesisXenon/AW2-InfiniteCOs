;OnSelectDebugRefreshUnits.asm

OnSelectDebugRefreshUnits:
	push	{r14}
	bl	LongMenuLoadFunctionB	;0x0801A168	
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
;	sub	r0,1
	ldr	r1,=0x300
	mul	r0,r1
	ldr	r1,=BaseUnitOffset
	add	r1,r0,r1
	mov	r2,0x0
	mov	r3,0xFE
OnSelectDebugRefreshUnitsLoop:	
	ldrb	r0,[r1,0x1]
	and	r0,r3
	strb	r0,[r1,0x1]
	add	r2,1
	add	r1,0xC
	cmp	r2,50
	ble	OnSelectDebugRefreshUnitsLoop
	pop	r1
	bx	r1
	.pool

;Blank Line
