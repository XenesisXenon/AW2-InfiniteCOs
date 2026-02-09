;copowergoldrush.asm
;Graphical Effect and Fund Multiplication for Gold Rush

.org 0x08044804
COPowerGoldRush:
	push	{r4,r14}
	mov	r4,r0
;Business End	
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	ldr	r1,=0x08499598
	ldr	r2,[r1]
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	ldr	r1,[r1]
	lsr	r1,r1,0x1
	bl	0x08025B58
	
;Graphical and SFX
	mov	r0,0xFB
	lsl	r0,r0,0x1
	bl	0x0803B4DC
	mov	r0,r4
	bl	0x080443C4
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
;Blank Line	
