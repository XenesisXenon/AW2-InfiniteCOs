;corefreescopmusic.asm
;For the klaxxons
CoreFreeSCOPMusic:

	mov	r1,0x82
	lsl	r1,r1,0x1
	mul	r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r0,r0,r1
	mov	r1,21
	ldrb	r0,[r0,r1]
	cmp	r0,0x5
	beq	@IsBlackHole
	mov	r0,0
	b	@End
@IsBlackHole:	
	mov	r0,1
@End:
	bx	r14
	.pool
	
Core_NoSwapMusic:
	ldr	r1,=0x03005904
	ldr	r1,[r1]
	cmp	r1,0x4
	beq	@Swap_True
	
	mov	r1,0x82
	lsl	r1,r1,0x1
	mul	r0,r1
	ldr	r1,=COStatsAbilitiesDatatable
	add	r0,r0,r1
	mov	r1,0xA0
	ldrh	r0,[r0,r1]
	bl	@Long_COPMusic_One;0x0803B4EC
	
@Swap_True:
	pop	{r0}
	bx	r0
	
@Long_COPMusic_One:
	LongBL	r1,0x0803B4EC+1
;Blank Line
