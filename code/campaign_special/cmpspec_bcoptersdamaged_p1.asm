;cmpspec_BCoptersDamaged_P1.asm
;Checks if any units have below maximum HP
;Unfininshed

.org 0x08045A78
CmpSpec_BCoptersDamaged_P1:
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8	
	push	{r5-r7}
	mov	r6,0x0
	mov	r7,0x0
	
	ldr	r2,=0x084995FE
	ldr	r1,=0x0812A0F4
	ldr	r0,[r1]
	ldrh	r0,[r0]
	lsl	r0,r0,0x1
	add	r0,r0,r2
	ldrh	r0,[r0]
	add	r4,r0,1
	add	r0,0x33
	mov	r10,r1
	cmp	r4,r0
	bge	@UnitLoop_End
	
	ldr	r0,=0x08499594
	mov	r9,r0
	mov	r8,r2
	lsl	r0,r4,0x1
	add	r0,r0,r4
	lsl	r5,r0,0x2
@UnitLoop_Start:	
	mov	r1,r9
	ldr	r0,[r1]
	add	r0,r0,r5
	ldrb	r1,[r0]
	cmp	r1,0x0
	beq	@UnitFalse
	
	cmp	r1,0x13	;B-Copter
	bne	@UnitNotBCopter
	
	add	r6,0x1
	ldrb	r1,[r0,0x4]
	mov	r0,0x7F
	and	r0,r1
	cmp	r0,0x0
	beq	@UnitNullHP
	
	lsl	r0,r1,0x19
	lsr	r0,r0,0x19
	sub	r0,0x1
	mov	r1,0xA
	bl	0x0808AAAC
	
	add	r0,0x1
	cmp	r0,0x9
	bgt	@UnitMaxHP

@UnitNullHP:	
	add	r7,0x1
@UnitFalse:
@UnitNotBCopter:
@UnitMaxHP:
	add	r5,0xC
	add	r4,0x1
	mov	r1,r10
	ldr	r0,[r1]
	ldrh	r0,[r0]
	lsl	r0,r0,0x1
	add	r0,r8
	ldrh	r0,[r0]
	add	r0,0x33
	cmp	r4,r0
	blt	@UnitLoop_Start
	
	cmp	r6,0x1
	ble	@End;Fix Branch here

@UnitLoop_End:	
	cmp	r7,0x0
	bgt	@True	
	mov	r0,0x0
	b	@End	
	.pool
@True:	
	mov	r0,0x0
@End:	
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	