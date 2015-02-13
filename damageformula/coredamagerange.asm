;coredamagerangedisplay.asm
;Adds capability to display the damage range


DamageMaxXOffset equ 32
DamageMaxYOffset equ 0

DamageDisplayMaximumCalculator:
	;+0x6 =  SP+0x0
	;+0xE = SP+0x4
	;+0xC = SP+0x8
	;+0x14 = SP+0xC

	push	{r0-r2}
	add	sp,-0x10
	ldrh	r0,[r5,0x6]
	str	r0,[sp,0x0]
	ldrh	r0,[r5,0xE]
	str	r0,[sp,0x4]
	ldrh	r0,[r5,0x10]
	str	r0,[sp,0x8]
	ldrh	r0,[r5,0x14]
	str	r0,[sp,0xC]
	
	
	mov	r0,r5
	mov	r1,r10
	mov	r2,sp
	add	r2,0x1C
	ldr	r2,[r2]
	
	ldr	r4,=0x08090A34
	ldr	r0,[r4]
	ldr	r3,[r5]
	ldr	r1,[r0]
	sub	r1,r3,r1
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	ldr	r2,=BasePlayerMemory-0x3C
	lsl	r1,r0,0x4
	sub	r1,r1,r0
	lsl	r1,r1,0x2
	add	r1,r1,r2
	mov	r0,r1
	add	r0,0x62
	mov	r6,0x0
	ldsh	r2,[r0,r6]
	mov	r9,r2
	add	r1,0x64
	mov	r2,0x0
	ldsh	r0,[r1,r2]
	mov	r6,0x64
	ldrb	r1,[r3,0x4]
	mov	r0,0x7F
	and	r0,r1
	mov	r7,r4
	cmp	r0,0x0
	beq	CoreDamageRangeFalse1
	lsl	r0,r1,0x19
	lsr	r0,r0,0x19
	sub	r0,1
	mov	r1,10
	bl	DivisionFunction
	add	r4,r0,1
	b	CoreDamageRangeFalse2
CoreDamageRangeFalse1:
	mov	r4,0x0
CoreDamageRangeFalse2:	
	mov	r0,r5
	bl	LongBLGatherCurrentTerrainDefence ;0x08043304
;	strh	r0,[r5,0x6]
	str	r0,[sp,0x0]
	mov	r1,0x6
	ldsh	r0,[r5,r1]
	mul	r0,r4
	mov	r1,10
	bl	DivisionFunction
;	strh	r0,[r5,0xE]
	str	r0,[sp,0x4]
	ldr	r7,[r7]
	ldr	r2,[r5]
	ldr	r1,[r7]
	sub	r1,r2,r1
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	add	r0,0x1
	ldrb	r1,[r2]
	bl	LongBLGatherDefenceTotal	;0x08042CF8
;	ldrh	r1,[r5,0xE]
	ldr	r1,[sp,0x4]

	add	r1,r1,r0
	add	r1,r8
;	strh	r1,[r5,0xE]
	str	r1,[sp,0x4]
	ldr	r0,[sp,0x8]
;	strh	r0,[r5,0xC]
	str	r0,[sp,0x8]
	mov	r2,r10
	cmp	r2,0x1
	bne	CoreDamageRangeFalse3
	mov	r0,r5
	bl	LongCoreDamageRange3	;0804338C
	add	r6,r6,r0
	
CoreDamageRangeFalse3:
	mov	r0,r5
	bl	LongCoreDamageRange4	;0804334C
	add	r6,r6,r0
	add	r6,r9
	mov	r1,0x10
	ldsh	r0,[r5,r1]
	mul	r0,r6
	mov	r1,100
	bl	DivisionFunction
;	strh	r0,[r5,0xC]
	str	r0,[sp,0x8]
;	strh	r0,[r5,0x14]
	str	r0,[sp,0xC]
	lsl	r0,r0,0x10
	cmp	r0,0x0
	beq	CoreDamageRangeEnd;0x08024DC8 (End)
	ldr	r0,=0x03003FC0
	ldrb	r0,[r0,0x6]
	cmp	r0,0x0
	beq	CoreDamageRange4
	mov	r2,sp
	add	r2,0x1C
	ldr	r2,[r2]
	cmp	r2,0x0
	beq	CoreDamageRangeEnd
	
CoreDamageRange4:	
;	bl	LongBLRNGFunction;0x080129E0
;	mov	r4,r0
	ldr	r1,[r5]
	ldr	r0,[r7]
	sub	r1,r1,r0
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	add	r0,0x1
	bl	LongBLGatherLuckMax;0x08042E64 Luck Max
	sub	r0,1
;	mov	r1,r0
;	mov	r0,r4
;	bl	DivisionFunction
	mov	r6,r0
	ldr	r1,[r5]
	ldr	r0,[r7]
	sub	r1,r1,r0
	lsl	r0,r1,0x2
	add	r0,r0,r1
	lsl	r1,r0,0x4
	add	r0,r0,r1
	lsl	r1,r0,0x8
	add	r0,r0,r1
	lsl	r1,r0,0x10
	add	r0,r0,r1
	neg	r0,r0
	asr	r0,r0,0x8
	add	r0,0x1
	bl	LongCoreDamageRange6;0x08042EBC ;Luck Minimum
	mov	r4,r0
	cmp	r4,0x0
	b	CoreDamageRange5
	
	bl	LongBLRNGFunction;0x080129E0
	mov	r1,r4
	bl	DivisionFunction
	mov	r4,r0
CoreDamageRange5:		
;	ldrh	r0,[r5,0xC]
	ldr	r0,[sp,0x8]
	add	r0,r0,r6
;	sub	r0,r0,r4
;	strh	r0,[r5,0xC]
;	str	r0,[sp,0x8]
	strh	r0,[r5,0x16]
	ldrh	r0,[r5,0x10]
	cmp	r4,0x0
	ble	CoreDamageRangeNoNegLuck
	sub	r4,1
	sub	r0,r0,r4
	cmp	r0,0x0
	bgt	CoreDamageRangeNegativeNormal
	mov	r0,0	
CoreDamageRangeNegativeNormal:	
	strh	r0,[r5,0x10]	
CoreDamageRangeNoNegLuck:	

	lsl	r0,r0,0x10
	cmp	r0,0x0
	bge	CoreDamageRangeEnd
	mov	r0,0x0
;	strh	r0,[r5,0xC]
;	strh	r0,[sp,0x8]
;Adds the Max Damage to 0x16
	strh	r0,[r5,0x16]
	
CoreDamageRangeEnd:
	add	sp,0x10
	pop	{r0-r2}
	add	sp,0x4
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	r0
	bx	r0
	.pool

;LongCoreDamageRange1:
;	LongBL r1, 0x08043304+1	
;LongCoreDamageRange2:
;	LongBL r1, 0x08042CF8+1
LongCoreDamageRange3:
	LongBL r2, 0x0804338C+1
LongCoreDamageRange4:
	LongBL r1, 0x0804334C+1
LongCoreDamageRange6:
	LongBL r1, 0x08042EBC+1
	
DamageDisplayMaximumDisplay:
	add	sp,-0xC
	str	r0,[sp]
	str	r1,[sp,0x4]
	str	r2,[sp,0x8]
	ldrh	r2,[r2,0x14]
	mov	r3,0xD3
	lsl	r3,r3,0x1
	bl	LongDamageDisplayMaximumDisplay	
	
	ldr	r0,[sp]
	ldr	r1,[sp,0x4]
	ldr	r2,[sp,0x8]
	ldrh	r2,[r2,0x16]
	add	r0,DamageMaxXOffset
	add	r1,DamageMaxYOffset
	mov	r3,0xD3
	lsl	r3,r3,0x1	
	bl	LongDamageDisplayMaximumDisplay	

	add	sp,0xC
	
	pop	{r3,r4}
	mov	r8,r3
	mov	r9,r4
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
LongDamageDisplayMaximumDisplay:
	LongBL r4,0x08037200+1
;Blank Line
