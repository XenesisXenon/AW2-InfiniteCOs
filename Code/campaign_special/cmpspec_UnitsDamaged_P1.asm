;cmpspec_UnitsDamaged_P1.asm
;Checks if any units have below maximum HP

.org 0x080459E4
CmpSpec_UnitsDamaged_P1:
	push	{r4-r7,r14}
	mov	r7,r9
	mov	r6,r8
	push	{r6,r7}
	mov	r6,0x0
	ldr	r2,=0x084995FE
	ldr	r1,=0x0812A0F4
	ldr	r0,[r1]
	ldrh	r0,[r0]
	lsl	r0,r0,0x1
	add	r0,r0,r2
	ldrh	r0,[r0]
	add	r4,r0,1
	add	r0,0x33
	mov	r9,r1
	cmp	r4,r0
	bge	@CmpSpec_UnitsDamaged_P1_UnitLoop_End
	
	ldr	r0,=0x08499594
	mov	r8,r0
	mov	r7,r2
	lsl	r0,r4,0x1
	add	r0,r0,r4
	lsl	r5,r0,0x2
@CmpSpec_UnitsDamaged_P1_UnitLoop_Start:	
	mov	r1,r8
	ldr	r0,[r1]
	add	r1,r0,r5
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	@CmpSpec_UnitsDamaged_P1_UnitFalse
	
	ldrb	r1,[r1,0x4]
	mov	r0,0x7F
	and	r0,r1
	cmp	r0,0x0
	beq	@CmpSpec_UnitsDamaged_P1_UnitNullHP
	
	lsl	r0,r1,0x19
	lsr	r0,r0,0x19
	sub	r0,0x1
	mov	r1,0xA
	bl	DivisionSubroutine;0x0808AAAC
	
	add	r0,0x1
	cmp	r0,0x9
	bgt	@CmpSpec_UnitsDamaged_P1_UnitMaxHP

@CmpSpec_UnitsDamaged_P1_UnitNullHP:	
	add	r6,0x1
@CmpSpec_UnitsDamaged_P1_UnitFalse:
@CmpSpec_UnitsDamaged_P1_UnitMaxHP:
	add	r5,0xC
	add	r4,0x1
	mov	r1,r9
	ldr	r0,[r1]
	ldrh	r0,[r0]
	lsl	r0,r0,0x1
	add	r0,r0,r7
	ldrh	r0,[r0]
	add	r0,0x33
	cmp	r4,r0
	blt	@CmpSpec_UnitsDamaged_P1_UnitLoop_Start

@CmpSpec_UnitsDamaged_P1_UnitLoop_End:	
	cmp	r6,0x0
	bgt	@CmpSpec_UnitsDamaged_P1_True	
	mov	r0,0x0
	b	@CmpSpec_UnitsDamaged_P1_End	
	.pool
@CmpSpec_UnitsDamaged_P1_True:	
	mov	r0,0x1
@CmpSpec_UnitsDamaged_P1_End:	
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	