;BitSet_ToggleGlobal.asm
;Uses an EOR to switch a bit, instead of set a bit

BitSet_ToggleGlobal:
	push	{r14}
	mov	r2,r0
	sub	r2,0x60
	cmp	r2,0x3F
	bhi	@Check_Global
	b	@End
@Check_Global:	
	mov	r2,r0
	sub	r2,0x20
	cmp	r2,0x3F
	bhi	@End
	
	lsl	r1,r1,0x18
	lsr	r1,r1,0x18
	mov	r0,r2
	bl	@Bit_Toggle;0x0803CA00
	b	@End
@End:	
	pop	{r0}
	bx	r0
	.pool

;0x0803CA00
@Bit_Toggle:
	push	{r4,r14}
	lsl	r1,r1,0x18
	lsr	r1,r1,0x18
	ldr	r2,=0x02028030
	lsr	r4,r0,0x3
	add	r4,r4,r2
	mov	r3,0x7
	and	r3,r0
	mov	r2,0x1
	lsl	r2,r3
	ldrb	r0,[r4]
	lsl	r1,r3
	eor	r0,r1
	strb	r0,[r4]
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
