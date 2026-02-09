;Onselect_Capt.asm
;Code executed when the Capt and Capt* menu option is selected

.org 0x0802D064
MenuOnSelect_Capture:
	push	{r14}
	bl	0x08034F48
	bl	0x0801A168
	bl	0x0802C57C
	bl	0x08042650
	bl	0x080424FC
	bl	0x0802C594
	ldr	r0,=CurrentGameOptions
	add	r0,0x32
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	@@False
	ldr	r0,=0x03003F38
	ldrb	r1,[r0]
	mov	r0,0x3
	mov	r2,0x0
	mov	r3,0x0
	bl	0x08034534
@@False:	
	pop	{r0}
	bx	r0
	.pool
	