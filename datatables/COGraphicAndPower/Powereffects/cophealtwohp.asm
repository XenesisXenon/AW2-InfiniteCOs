;copeffectheal2HP.asm
;Heals 2 HP

.org 0x080444EC
COPEffectHealTwoHP:
	push	{r14}
	mov	r1,0x2
	mov	r2,0x0
	bl	0x08029AF8
	pop	{r0}
	bx	r0
;Blank Line	
