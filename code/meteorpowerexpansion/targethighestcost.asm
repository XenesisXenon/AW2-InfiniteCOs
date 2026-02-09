;TargetHighestCost.asm
;Targets the units with the greatest funds

MeteorTargetHighestCost:
	push	{r1-r4,r14}

	ldr	r0,=0x02022F90
	cmp	r4,r0
	blt	MeteorTargetHighestCostCheckP3
	mov	r0,0x4
	b	MeteorTargetHighestCostPlayerCheckDone

MeteorTargetHighestCostCheckP3:	
	ldr	r0,=0x02022C90
	cmp	r4,r0
	blt	MeteorTargetHighestCostCheckP2
	mov	r0,0x3
	b	MeteorTargetHighestCostPlayerCheckDone
	
MeteorTargetHighestCostCheckP2:	
	ldr	r0,=0x02022990
	cmp	r4,r0
	blt	MeteorTargetHighestCostCheckP1	
	mov	r0,0x2
	b	MeteorTargetHighestCostPlayerCheckDone
	
MeteorTargetHighestCostCheckP1:
	mov	r0,0x1
	b	MeteorTargetHighestCostPlayerCheckDone
	
MeteorTargetHighestCostPlayerCheckDone:
	ldrb	r1,[r4]
	bl	MeteorTargetHighestCostLongBL
	mov	r2,r0
	
	ldrb	r0,[r4,#0x4]
	lsl	r0,r0,#0x19
	lsr	r0,r0,#0x19
	ldr	r1,=CustomMeteorBuffer;0x0201FD84
	ldrb	r1,[r1,0x4]
	cmp	r0,r1
	blt	MeteorTargetHighestCostEnd
	mov	r0,r1	
MeteorTargetHighestCostEnd:
	mov	r1,10
	bl	DivisionFunction
	mul	r0,r2

	pop	{r1-r4}
	pop	{r1}
	bx	r1

MeteorTargetHighestCostLongBL:	
	LongBL r3,0x08042C9C+1	
	.pool
	
