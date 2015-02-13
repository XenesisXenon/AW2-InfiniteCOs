;COPowerDefault.asm

.org 0x080443D8
COPowerDefault:
	push	{r14}
	mov	r1,r0
	ldr	r0,=0x084A0818
	bl	0x0801C95C
	pop	{r0}
	bx	r0
	.pool
;Blank Line	
