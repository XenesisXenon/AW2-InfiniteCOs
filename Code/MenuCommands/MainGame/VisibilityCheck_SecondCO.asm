;VisibilityCheckSecondCO.asm

VisibilityCheckSecondCO:
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	sub	r0,1
	mov	r1,8
	mul	r0,r1
	ldr	r1,=CustomSwapCORam
	add	r0,r0,r1
	ldrb	r0,[r0,0x4]
	cmp	r0,0xFF
	beq	VisibilityCheckSecondCO_False
	mov	r0,0x0
	b	VisibilityCheckSecondCO_End
VisibilityCheckSecondCO_False:
	mov	r0,0x1
VisibilityCheckSecondCO_End:
	bx	r14
;Blank Line	
