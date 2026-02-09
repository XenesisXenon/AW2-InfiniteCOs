;hookdailyitems.asm
;Modifies the Daily Run Script that runs after the 'Day X' splash.

.org 0x0802A7B0
	push	{r14}
	ldr	r0,=ScriptDailyItemsPostSplash;Default is 0x0849A1C0
	mov	r1,0
	bl	0x080152C0
	pop	{r0}
	bx	r0
	.pool
	
