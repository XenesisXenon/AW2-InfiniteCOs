;COPowerBlizzard.asm

.org 0x080443EC
COPowerBlizzard:
	push	{r14}
	mov	r0,0x23
	bl	0x0803B4DC
	mov	r0,0x1		;This is the Weather Change
	bl	0x08035144
	bl	0x08039F58
	pop	{r0}
	bx	r0
	
;Blank Line	
