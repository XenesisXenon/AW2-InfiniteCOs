;OnSelect_Super.asm
;Code executed when the Super menu option is selected

.org 0x0802CEFC
MenuOnSelect_Super:
	push	{r4,r14}
	bl	0x0801A168
	ldr	r1,=0x030044B0
	ldr	r0,=0x03001FD4
	ldr	r0,[r0]
	str	r0,[r1,0x8]
	ldr	r0,=CurrentGameOptions
	add	r0,0x32
	ldrb	r0,[r0]
	ldr	r4,=0x08090BFC
	cmp	r0,0x0
	beq	@Jump_One
	ldr	r0,[r4]
	ldrb	r2,[r0]
	mov	r0,0x10
	mov	r1,0x0
	mov	r3,0x0
	bl	0x08034534
@Jump_One:
	ldr	r0,[r4]
	ldrh	r0,[r0]
	mov	r1,0x2
	bl	0x0804438C
	bl	0x08024268
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
