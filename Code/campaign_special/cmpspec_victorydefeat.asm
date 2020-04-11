;cmpspec_victorydefeat.asm
;This determines whether a victory or defeat condition is issued

.org 0x0803861C
CmpSpec_VictoryDefeat:
	push	{r4,r5,r14}
	mov	r5,0x0
	mov	r4,0x1
@CmpSpec_VictoryDefeat_Loop_Start:	
	mov	r0,r4
	bl	0x080266DC
	lsl	r0,r0,0x18
	cmp	r0,0x0
	beq	@CmpSpec_VictoryDefeat_Loop_Increment
	
	ldr	r0,=BaseUnitPointer;0x08499598
	ldr	r1,[r0]
	mov	r2,r1
	add	r2,0x66
	lsl	r0,r4,0x4
	sub	r0,r0,r4
	lsl	r0,r0,0x2
	add	r0,r0,r1
	add	r0,0x2A
	ldrb	r1,[r2]
	ldrb	r0,[r0]
	cmp	r1,r0
	bne	@CmpSpec_VictoryDefeat_Loop_Increment

	add	r0,r5,1
	lsl	r0,r0,0x18
	lsr	r5,r0,0x18
@CmpSpec_VictoryDefeat_Loop_Increment:	
	add	r0,r4,1
	lsl	r0,r0,0x18
	lsr	r4,r0,0x18
	cmp	r4,0x4
	bls	@CmpSpec_VictoryDefeat_Loop_Start
	
	cmp	r5,0x0
	bne	@CmpSpec_VictoryDefeat_SetDefeat
	
	mov	r0,0x0
	b	@CmpSpec_VictoryDefeat_End
	
	.pool
@CmpSpec_VictoryDefeat_SetDefeat:	
	mov	r0,0x1
@CmpSpec_VictoryDefeat_End:	
	pop	{r4,r5}
	pop	{r1}
	bx	r1
	