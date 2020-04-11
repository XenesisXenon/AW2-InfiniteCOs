;core_statcalculator.asm
Main_StatCalc:
	;r0 = CO ID
	;r1 = Power State (0 D2D, 1 COP, 2 SCOP)
	;r2 = Combat Pointer
	;r3 = Routine list, terminated by 0x0
	
	push	{r4-r7,lr}
	mov	r4,r8
	mov	r5,r9
	push	{r4-r5}
	
	;Variables
	mov	r4,r3
	mov	r8,r2
	mov	r9,r1
	mov	r5,r0
	mov	r7,0x0
	
@Main_StatCalc_LoopStart:
	ldr	r6,[r4,0x0]
	cmp	r6,0x0
	beq	@Main_StatCalc_End
	
	mov	r0,r5
	mov	r1,r9
	mov	r2,r8
	
	bl	BranchR6
	
	add	r7,r7,r0
	add	r4,0x4
	b	@Main_StatCalc_LoopStart
	
@Main_StatCalc_End:
	mov	r0,r7
	pop	{r4,r5}
	mov	r8,r4
	mov	r9,r5
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool
	
