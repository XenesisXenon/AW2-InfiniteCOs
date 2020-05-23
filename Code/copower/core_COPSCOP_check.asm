;core_COPSCOP_check.asm
;Adds a custom check to allow for non-standard input modes for the animation
Core_COPSCOP_Check:
	mov	r4,r1
	mov	r5,r2
	ldr	r1,=0x03005970
	str	r0,[r1]
	ldr	r0,=0x03005904
	str	r4,[r0]
	
	cmp	r4,COMode_Power
	bne	@Branch_One
	ldr	r0,=Hook_COPSCOP_Check_ReturnCOP+CPUModeThumb
	bx	r0
	
@Branch_One:
	cmp	r4,COMode_Super
	bne	@Branch_Two
	ldr	r0,=Hook_COPSCOP_Check_ReturnSCOP+CPUModeThumb
	bx	r0
	
@Branch_Two:
	cmp	r4,0x3
	blt	@Branch_Three
	ldr	r0,=Hook_COPSCOP_Check_ReturnCOP+CPUModeThumb
	bx	r0
	
@Branch_Three: ;Standard return
	pop	{r4,r5}
	pop	{r0}
	bx	r0	
	.pool