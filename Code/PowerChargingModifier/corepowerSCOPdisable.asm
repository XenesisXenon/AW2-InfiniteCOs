;corepowerSCOPdisable.asm

MenuCommandShowSCOP:
	push	{r14}
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory-0x3C
	add	r1,r0,r1
	ldrb	r0,[r1,0x1D]	;
	mov	r1,0x0		;Need a D2D state always
	mov	r2,Gather_CO_SpecialEffectsWord
	bl	GatherCOAbilityPointer
	ldr	r1,=SpecialDisableSCOP
	and	r0,r1
	cmp	r0,0x0
	beq	MenuCommandShowSCOPTrue
	mov	r0,0x1
	pop	r1
	bx	r1
MenuCommandShowSCOPTrue:
	ldr	r0,=0x0802C84A+1
	bx	r0
	.pool
