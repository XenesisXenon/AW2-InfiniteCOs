;core_pathfinding.asm

Core_Pathfinding:
	ldr	r0,=Custom_PathfindingRAM
	strb	r2,[r0]
	
	cmp	r2,13
	blt	@Branch_1
	cmp	r2,0xFF
	beq	@Branch_1
	mov	r0,0
	sub	r0,1
	mul	r0,r2
	lsl	r0,r0,0x18
	lsr	r0,r0,0x18
	sub	r0,1
	mov	r2,r0
	
@Branch_1:
	mov	r0,0x0F
	and	r1,r0
	add	r1,r1,r2
	lsl	r1,r1,0x10
	lsr	r3,r1,0x10
	asr	r1,r1,0x10
	mov	r2,r12
	
	ldr	r0,=0x0801F76A+1
	bx	r0
	.pool
	
Core_PathfindingTwo:
	ldr	r1,[r4]
	mov	r2,r12
	lsl	r0,r2,0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,r8
	
	ldr	r4,=Custom_PathfindingRAM
	ldrb	r4,[r4]
	cmp	r4,13
	blt	@Branch_2
	cmp	r4,0xFF
	beq	@Branch_2
	mov	r4,0xF0
	orr	r3,r4
	
@Branch_2:	
	strb	r3,[r0]
	add	sp,0x4
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	