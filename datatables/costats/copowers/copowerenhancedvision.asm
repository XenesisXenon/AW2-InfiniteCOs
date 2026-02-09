;copowerenhancedvision.asm
;Graphical Effect for Enhanced Vision/Counterbreak

.org 0x080447EC
COPowerEnhancedVisionFade:
	push	{r4,r14}
	mov	r4,r0
	mov	r0,0xC4
	bl	0x0803B4DC
	mov	r0,r4
	bl	0x080443C4
	pop	{r4}
	pop	{r0}
	bx	r0
;Blank Line
