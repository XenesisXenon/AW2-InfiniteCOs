;checkcopycheck.asm
;Copies another CO's Check

COPCheckCopyCOPower:
	push 	{r0-r1}
	ldr	r0,=0x030033EE
	ldrb	r0,[r0]
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	mov	r2,0x3C
	mul	r1,r2
	ldr	r2,=BasePlayerMemory-0x3C
	add	r1,r1,r2
	ldrb	r2,[r1,0x1D]
	cmp	r2,r0
	beq	COPCheckCopyCOPowerNoCopy
	
	mov	r1,0x44
	mul	r1,r0
	add	r1,32
	ldr	r2,=COGraphicsPowerEffectsTable
	add	r1,r1,r2
	ldr	r2,[r1]
	cmp	r2,0
	beq	COPCheckCopyCOPowerNoCopy
	;Copies another COP Check
	pop	{r0-r1}
	bx	r2	
	
COPCheckCopyCOPowerNoCopy:
	pop	{r0-r1}
	mov	r0,0x1
	bx	r14
	
	.pool
	
COPCheckCopySuperCOPower:
	push 	{r0-r1}
	ldr	r0,=0x030033EE
	ldrb	r0,[r0]
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	mov	r2,0x3C
	mul	r1,r2
	ldr	r2,=BasePlayerMemory-0x3C
	add	r1,r1,r2
	ldrb	r2,[r1,0x1D]
	cmp	r2,r0
	beq	COPCheckCopySuperCOPowerNoCopy
	
	mov	r1,0x44
	mul	r1,r0
	add	r1,52
	ldr	r2,=COGraphicsPowerEffectsTable
	add	r1,r1,r2
	ldr	r2,[r1]
	cmp	r2,0
	beq	COPCheckCopySuperCOPowerNoCopy
	;Copies another COP Check
	pop	{r0-r1}
	bx	r2	
	
COPCheckCopySuperCOPowerNoCopy:
	pop	{r0-r1}
	mov	r0,0x1
	bx	r14
	
	.pool	
