;hookhardtoggle.asm

.org 0x0803866C
	push	{r14}
	ldr	r0,=HardToggleExpansion+1
	bx	r0
	.pool
	
;	ldr	r0,=CurrentGameOptions
;	ldrb	r0,[r0,GameRule_GameMode]
;	cmp	r0,GameMode_Campaign
;	bne	HardCheck_False;0x08038688
;	mov	r0,0x60
;	bl	0x0803CBD8
;	cmp	r0,0x0
;	beq	HardCheck_False;0x08038688
;	mov	r0,0x1
;	b	0x0803868A
;	.pool
;HardCheck_False:
;	mov	r0,0x0
;	pop	{r1}
;	bx	r1

	;push	{r14}
	;ldr	r0,=0x03003FC0
	;ldrb	r0,[r0,0x1]
	;cmp	r0,0x1
	;bne	0x08038688
	;mov	r0,0x60
	;bl	0x0803CBD8
	;cmp	r0,0x0
	;beq	0x08038688
	;mov	r0,0x1
	;b	0x0803868A
	;.pool
	;mov	r0,0x0
	;pop	{r1}
	;bx	r1	
;Blank Line
