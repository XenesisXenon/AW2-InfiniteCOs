;OnSelect_End.asm
;Code executed when the End menu option is selected

.org 0x0802CF6C
MenuOnSelect_End:
	push	{r14}
	bl	0x0801A168
	bl	0x08042B9C
	ldr	r1,=CurrentGameOptions
	mov	r0,r1
	add	r0,0x32
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	@Jump_One
	mov	r0,r1
	add	r0,0x2E
	ldrb	r0,[r0]
	bl	0x080344F0
@Jump_One:
	pop	{r0}
	bx	r0
	.pool
