;coremassdamagecaptureclear.asm
;Adds capability to clear captures during mass damage

CoreMassDamageCanClearCapture:
	mov	r1,0x1
	and	r1,r0
	cmp	r1,0x0
	beq	CoreMassDamageFuelHalvingFalse	
	push	{r0}

	;Transplanted Fuel Halving Subroutine
	ldrb	r0,[r4,#0x6]
	lsl	r1,r0,#0x19
	lsr	r1,r1,#0x1A
	mov	r2,r12
	and	r0,r2
	orr	r0,r1
	strb	r0,[r4,#0x6]
	pop	{r0}	
CoreMassDamageFuelHalvingFalse:	
	mov	r1,0x02
	and	r1,r0
	cmp	r1,0x0
	beq	CoreMassDamageNoCaptureClear
	
	;Capture Clear and Stun
	push	{r0}
	ldrb	r0,[r4,#0x5]
	mov	r1,0xF8
	and	r1,r0
	lsr	r1,r1,0x4
	cmp	r1,0x0
	beq	CoreMassDamageNoCaptureClearEnd
	
	mov	r1,0x07
	and	r0,r1
	strb	r0,[r4,0x5]
	ldrb	r0,[r4,0x6]
	mov	r1,0x80
	orr	r0,r1
	strb	r0,[r4,0x6]
CoreMassDamageNoCaptureClearEnd:	
	pop	{r0}		
CoreMassDamageNoCaptureClear:

	mov	r1,0x04
	and	r1,r0
	cmp	r1,0x0
	beq	CoreMassDamageNoAmmoClear
	;Ammo Clear
	push	{r0}
	ldrh	r0,[r4,0x4]
	mov	r1,0xF8
	lsl	r1,r1,0x8	
	add	r1,0x7F
	and	r0,r1
	strh	r0,[r4,0x4]
CoreMassDamageNoAmmoClearEnd:
	pop	{r0}
CoreMassDamageNoAmmoClear:

	mov	r1,0x08
	and	r1,r0
	cmp	r1,0x0
	beq	CoreMassDamageNoHPRounding
	;Round Down HP
	push	{r0}
	ldrh	r0,[r4,0x4]
	mov	r1,0x7F
	and	r0,r1
	mov	r1,10
	sub	r0,1
	bl	DivisionFunction
	add	r0,1
	mov	r1,10
	mul	r0,r1
	sub	r0,9
	ldrh	r1,[r4,0x4]
	ldr	r2,=0x0000FF80
	and	r2,r1
	orr	r0,r2
	strh	r0,[r4,0x4]
CoreMassDamageNoHPRoundingEnd:
	pop	{r0}
CoreMassDamageNoHPRounding:
;Final
	push	{r1}
	ldr	r1,=MassDamageExpansion11-1
	bx	r1
	.pool
;Blank Line
