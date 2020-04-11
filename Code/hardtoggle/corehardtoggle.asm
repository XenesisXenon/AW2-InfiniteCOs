;corehardtoggle.asm
HardToggleExpansion:
	ldr	r0,=CurrentGameOptions
	ldrb	r0,[r0,GameRule_GameMode]
	cmp	r0,GameMode_Campaign
	bne	HardCheck_Campaign_False
	
	mov	r0,0x60
	bl	Long_Unlock_BitCheck;0x0803CBD8
	cmp	r0,0x0
	beq	HardCheck_False
	
	mov	r0,0x1
	b	HardCheck_End;0x0803868A
HardCheck_Campaign_False:
	ldr	r0,=CurrentGameOptions
	ldrb	r0,[r0,GameRule_GameMode]
	cmp	r0,GameMode_Versus
	bne	HardCheck_False
	
	ldr	r0,=Custom_HardToggleFlag
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	HardCheck_False
	mov	r0,1
	b	HardCheck_End
	
HardCheck_False:
	mov	r0,0x0
HardCheck_End:
	pop	{r1}
	bx	r1
	.pool
	
Long_Unlock_BitCheck:
	LongBL	r2,0x0803CBD8+1

;Blank Line
