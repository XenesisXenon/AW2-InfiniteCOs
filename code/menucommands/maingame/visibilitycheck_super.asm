;VisibilityCheckSuper.asm
;Custom Visibility Checks to hide the command for
;AW1 COs and SFW COs
;Hooks into the original subroutine.

VisibilityCheck_Super:
	push	{r14}
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	sub	r0,1
	mov	r1,0x3C
	mul	r0,r1
	ldr	r1,=BasePlayerMemory
	add	r0,r0,r1
	ldrb	r1,[r0,0x1E]
	ldrb	r0,[r0,0x1D]
	mov	r2,Gather_CO_GameID
	bl	GatherCOAbility
	cmp	r0,Game_AW1
	beq	@ShowSuper_False
	cmp	r0,Game_SFW
	beq	@ShowSuper_False
	ldr	r0,=0x0802C84A+1
	bx	r0
@ShowSuper_False:
	mov	r0,1
	pop	{r1}
	bx	r1
	.pool
