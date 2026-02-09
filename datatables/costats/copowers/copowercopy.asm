;COPowerCopy.asm
;Copies Another CO's CO Power

COPowerCopyCOPower:
	push	{r0,r2-r7}
	push	{r14}
	add	sp,-0x10
	
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	ldr	r0,=0x030033EE
	mov	r5,0
	strh	r5,[r0]
	strh	r5,[r0,0x2]
	ldr	r0,=BasePlayerMemory-0x3C
	mov	r5,0
	str	r5,[sp,0x0]
	str	r5,[sp,0x4]
	str	r5,[sp,0x8]
	str	r5,[sp,0xC]	
	mov	r2,1
	
COPowerCopyCOPowerLoop:
	cmp	r1,r2
	beq	COPowerCopyCOPowerLoopEnd
	
	mov	r3,0x3C
	mul	r3,r2
	add	r3,r0,r3
	
	;Player Alive Check
	ldrb	r4,[r3,0x1B]
	cmp	r4,0x0
	beq	COPowerCopyCOPowerLoopEnd
	ldrb	r4,[r3,0x14]
	cmp	r4,0x1	
	beq	COPowerCopyCOPowerLoopEnd
	
	;Copy CO Power Pointer
	ldrb	r3,[r3,0x1D]
	ldr	r4,=0x030033EE	;Saves the CO IDs to Scratch for Later Use
	sub	r4,1
	strb	r3,[r4,r2]
	mov	r4,0x82
	lsl	r4,r4,0x1
	mul	r3,r4
	ldr	r4,=COStatsAbilitiesDatatable
	add	r3,r3,r4
	add	r3,0x80
	ldr	r3,[r3]

	mov	r5,r2
	sub	r5,1
	lsl	r5,r5,0x2
	mov	r6,sp
	str	r3,[r6,r5]	
	
COPowerCopyCOPowerLoopEnd:
	add	r2,1
	cmp	r2,4
	ble	COPowerCopyCOPowerLoop
	
	;Pick Which CO Power to Use
COPowerCopyCOPowerRandomSelect:
	bl	LongBLRNG
	mov	r1,4
	bl	DivisionFunction
	lsl	r1,r1,0x2
	mov	r6,sp
	ldr	r0,[r6,r1]
	cmp	r0,0x0
	beq	COPowerCopyCOPowerRandomSelect
	
	;Copies the CO ID to use for CO Power Copying
	asr	r1,r1,0x2
	ldr	r2,=0x030033EE
	ldrb	r1,[r2,r1]
	mov	r3,0
	strh	r3,[r2]
	strh	r3,[r2,0x2]
	strb	r1,[r2]
	
	mov	r1,r0
	ldr	r0,=COPowerCopyCOPower+1
	cmp	r1,r0
	bne	COPowerCopyRunCOPowerEnd
	
	ldr	r1,=COPowerDefault+1
	
COPowerCopyRunCOPowerEnd:	
	add	sp,0x10	
	pop	{r0}
	mov	r14,r0
	pop	{r0,r2-r7}
	bx	r1
	.pool

;This Copies the Super CO Power	
COPowerCopySuperCOPower:
	push	{r0,r2-r7}
	push	{r14}
	add	sp,-0x10
	
	ldr	r1,=CurrentPlayerTurn
	ldrb	r1,[r1]
	ldr	r0,=0x030033EE
	mov	r5,0
	strh	r5,[r0]
	strh	r5,[r0,0x2]
	ldr	r0,=BasePlayerMemory-0x3C
	mov	r5,0
	str	r5,[sp,0x0]
	str	r5,[sp,0x4]
	str	r5,[sp,0x8]
	str	r5,[sp,0xC]	
	mov	r2,1
	
COPowerCopySuperCOPowerLoop:
	cmp	r1,r2
	beq	COPowerCopySuperCOPowerLoopEnd
	
	mov	r3,0x3C
	mul	r3,r2
	add	r3,r0,r3
	
	;Player Alive Check
	ldrb	r4,[r3,0x1B]
	cmp	r4,0x0
	beq	COPowerCopySuperCOPowerLoopEnd
	ldrb	r4,[r3,0x14]
	cmp	r4,0x1	
	beq	COPowerCopySuperCOPowerLoopEnd
	
	;Copy CO Power Pointer
	ldrb	r3,[r3,0x1D]
	ldr	r4,=0x030033EE	;Saves the CO IDs to Scratch for Later Use
	sub	r4,1
	strb	r3,[r4,r2]
	mov	r4,0x82
	lsl	r4,r4,0x1
	mul	r3,r4
	ldr	r4,=COStatsAbilitiesDatatable
	add	r3,r3,r4
	add	r3,0xC4
	ldr	r3,[r3]

	mov	r5,r2
	sub	r5,1
	lsl	r5,r5,0x2
	mov	r6,sp
	str	r3,[r6,r5]	
	
COPowerCopySuperCOPowerLoopEnd:
	add	r2,1
	cmp	r2,4
	ble	COPowerCopySuperCOPowerLoop
	
	;Pick Which CO Power to Use
COPowerCopySuperCOPowerRandomSelect:
	bl	LongBLRNG
	mov	r1,4
	bl	DivisionFunction
	lsl	r1,r1,0x2
	mov	r6,sp
	ldr	r0,[r6,r1]
	cmp	r0,0x0
	beq	COPowerCopySuperCOPowerRandomSelect
	
	;Copies the CO ID to use for CO Power Copying
	asr	r1,r1,0x2
	ldr	r2,=0x030033EE
	ldrb	r1,[r2,r1]
	mov	r3,0
	strh	r3,[r2]
	strh	r3,[r2,0x2]
	strb	r1,[r2]
	
	mov	r1,r0
	ldr	r0,=COPowerCopySuperCOPower+1
	cmp	r1,r0
	bne	COPowerCopyRunSuperCOPowerEnd
	
	ldr	r1,=COPowerDefault+1
	
COPowerCopyRunSuperCOPowerEnd:	
	add	sp,0x10	
	pop	{r0}
	mov	r14,r0
	pop	{r0,r2-r7}
	bx	r1
	.pool
	
LongBLRNG:
	longbl	r1,0x080129E0+1	
	
;Blank Line	
