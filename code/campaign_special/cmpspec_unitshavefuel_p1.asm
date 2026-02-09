;cmpspec_UnitsHaveFuel_P1.asm
;Checks whether all of P1's Units have any fuel left

.org 0x08045924
CmpSpec_UnitsHaveFuel_P1:
	push	{r4-r6,r14}
	mov	r5,0x0
	ldr	r1,=0x084995FE
	ldr	r0,=0x03003F2C
	ldrh	r0,[r0]
	lsl	r0,r0,0x1
	add	r0,r0,r1
	ldrh	r0,[r0]
	add	r3,r0,1
	mov	r4,r0
	add	r4,0x33
	cmp	r3,r4
	bge	@CmpSpec_UnitsHaveFuel_P1_Loop_End
	
	ldr	r0,=0x8499594
	ldr	r1,[r0]
	lsl	r0,r3,0x1
	add	r0,r0,r3
	lsl	r0,r0,0x2
	add	r2,r0,r1
	mov	r6,0x7f
	sub	r3,r4,r3
@CmpSpec_UnitsHaveFuel_P1_Loop_Start:	
	ldrb	r0,[r2]
	cmp	r0,0x0
	beq	@CmpSpec_UnitsHaveFuel_P1_NoUnit
	
	ldrb	r1,[r2,0x6]
	mov	r0,r6
	and	r0,r1
	cmp	r0,0x0
	beq	@CmpSpec_UnitsHaveFuel_P1_HaveFuel
	
	add	r5,0x1
@CmpSpec_UnitsHaveFuel_P1_NoUnit:
@CmpSpec_UnitsHaveFuel_P1_HaveFuel:
	add	r2,0xC
	sub	r3,0x1
	cmp	r3,0x0
	bne	@CmpSpec_UnitsHaveFuel_P1_Loop_Start

@CmpSpec_UnitsHaveFuel_P1_Loop_End:	
	cmp	r5,0x0
	beq	@CmpSpec_UnitsHaveFuel_P1_HaveFuel
	
	mov	r0,0x0
	b	@CmpSpec_UnitsHaveFuel_P1_End
	.pool
@CmpSpec_UnitsHaveFuel_P1_HaveFuel:	
	mov	r0,0x1
@CmpSpec_UnitsHaveFuel_P1_End:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
