;COPower_Scriptfunction_UnitSpawnTarget.asm
;Called to generate locations to spawn units
;0x08045564

COPower_Scriptfunction_UnitSpawnTarget:
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x4
	mov	r4,r0
	bl	@LongBL_One;0x08025AEC
	
	cmp	r0,0x0
	bne	@Branch_One;0x08454C0
	
	mov	r0,r4
	mov	r1,1
	bl	@LongBL_Two;0x0801CBC8	
	b	@Branch_Two;0x08045540

@Branch_Six:
	lsl	r0,r2,0x10
	asr	r0,r0,0x10
	mov	r2,r10
	lsl	r1,r2,0x10
	asr	r1,r1,0x10
	bl	@LongBL_Three;0x08029088
	b	@Branch_Two;0x08045540
	
@Branch_One:
	ldr	r1,=0x08499590
	ldr	r0,[r1]
	ldr	r6,[r4,0x30]
	ldrh	r3,[r0,0x2]
	cmp	r6,r3
	bge	@Branch_Three;0x08045538
	
	mov	r9,r0
@Branch_Eight:
	ldr	r2,[r4,0x2C]
	ldr	r6,[r4,0x30]
	mov	r7,r9
	ldrh	r7,[r7]
	cmp	r2,r7
	bge	@Branch_Four;0x08045528
	
	ldr	r0,=0x08499590
	ldr	r5,[r0]
	mov	r10,r6
	lsl	r1,r6,0x1
	ldr	r3,=0x417A
	add	r0,r5,r3
	add	r0,r0,r1
	mov	r8,r0
	ldr	r7,=0x1432
	add	r7,r7,r5
	mov	r12,r7
	ldr	r1,=0x030033EC
	ldrh	r0,[r1]
	lsl	r3,r0,0x5
	mov	r0,0x8	;Terrain Type
	orr	r3,r0	;Player Owner ORR'd
	ldr	r7,=0x51A
	add	r7,r5,r7
	str	r7,[sp]
@Branch_Seven:
	mov	r1,r8
	ldrh	r0,[r1]
	add	r1,r0,r2
	mov	r7,r12
	add	r0,r7,r1
	ldrb	r0,[r0]
	cmp	r0,r3
	bne	@Branch_Five;0x0804551A
	
	ldr	r7,[sp]
	add	r0,r7,r1
	ldrb	r0,[r0]
	cmp	r0,0x0
	beq	@Branch_Six;0x080454B0

@Branch_Five:
	ldr	r0,[r4,0x2C]
	add	r0,0x1
	str	r0,[r4,0x2C]
	mov	r2,r0
	ldrh	r0,[r5]
	cmp	r2,r0
	blt	@Branch_Seven;0x08045500

@Branch_Four:
	mov	r0,0x0
	str	r0,[r4,0x2C]
	add	r0,r6,1
	str	r0,[r4,0x30]
	mov	r1,r9
	ldrh	r1,[r1,0x2]
	cmp	r0,r1
	blt	@Branch_Eight;0x080454CE

@Branch_Three:
	mov	r0,r4
	mov	r1,0x1
	bl	@LongBL_Two;0x0801CBC8

@Branch_Two:
	add	sp,0x4
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
	
@LongBL_One:
	LongBL	r0,0x08025AEC+1
	
@LongBL_Two:
	push	{r4-r6,r14}
	LongBL	r4,0x0801CBCA+1
	
@LongBL_Three:
	LongBL	r2,0x08029088+1
;Blank Line