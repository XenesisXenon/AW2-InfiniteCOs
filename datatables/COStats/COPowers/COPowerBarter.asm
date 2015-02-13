;copowerenhancedvision.asm
;Graphical Effect for Barter/Merchant Union

.org 0x080447EC
COPowerBarterFade:
	push	{r4,r14}
	mov	r4,r0
	mov	r0,0xFB
	lsl	r0,r0,0x1
	bl	0x0803B4DC
	mov	r0,r4
	bl	0x080443C4
	pop	{r4}
	pop	{r0}
	bx	r0
;Blank Line
