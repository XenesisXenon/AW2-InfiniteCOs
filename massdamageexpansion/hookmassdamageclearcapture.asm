;hookmassdamageclearcapture.asm
;Allows Mass Damage COPs to also clear the capture status.

;Mass Damage Subroutine
.org 0x08044F24
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x4
	mov	r8,r0
	add	r0,#0x2D
	ldrb	r0,[r0]
	cmp	r0,#0x0
	b	MassDamageExpansion1;bne	MassDamageExpansion1;#0x8044F42

MassDamageExpansion4:
	mov	r0,r8
	bl	#0x801CB20
	b	MassDamageExpansionEnd;#0x804507E
	
;Damage	
MassDamageExpansion1:
	mov	r4,r8
	add	r4,#0x2B
	ldrb	r0,[r4]
	add	r0,#0x1
	strb	r0,[r4]
	ldr	r0,=#0x849A00C
	bl	#0x8015BD0
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	mov	r1,#0x1
	neg	r1,r1
	cmp	r0,r1
	beq	MassDamageExpansion2;#0x8044F60

	b	MassDamageExpansionEnd;#0x804507E

MassDamageExpansion2:
	ldrb	r0,[r4]
	cmp	r0,#0x4
	bhi	MassDamageExpansion3;#0x8044F68
	
	b	MassDamageExpansionEnd;#0x804507E

MassDamageExpansion3:
	mov	r0,#0x0
	strb	r0,[r4]
	mov	r0,r8
	add	r0,#0x2A
	ldrb	r5,[r0]
	mov	r10,r0
	lsl	r0,r5,#0x4
	sub	r0,r0,r5
	lsl	r6,r0,#0x2
	cmp	r5,#0x4
	bgt	MassDamageExpansion4;#0x8044F3A

	lsl	r0,r5,#0x18
	lsr	r0,r0,#0x18
	bl	#0x80266DC
	lsl	r0,r0,#0x18
	cmp	r0,#0x0
	beq	MassDamageExpansion5;#0x8044FAE

	ldr	r0,=#0x8499598
	ldr	r3,[r0]
	add	r2,r6,r3
	add	r2,#0x2A
	mov	r4,r8
	add	r4,#0x2C
	ldrb	r1,[r4]
	lsl	r0,r1,#0x4
	sub	r0,r0,r1
	lsl	r0,r0,#0x2
	add	r0,r0,r3
	add	r0,#0x2A
	ldrb	r1,[r2]
	mov	r9,r4
	ldrb	r0,[r0]
	cmp	r1,r0
	bne	MassDamageExpansion6;#0x8044FBC

MassDamageExpansion5:
	add	r6,#0x3C
	add	r5,#0x1
	b	#0x8044F7A
	.pool
;add	r0,=#0x8044FE8
;lsr	r1,r1,#0x1
;str	r5,[sp,#0x260]
;lsr	r1,r1,#0x1

MassDamageExpansion6:
	mov	r0,r10
	strb	r5,[r0]
	mov	r0,r8
	add	r0,#0x29
	ldrb	r7,[r0]
	str	r0,[sp]
	cmp	r7,#0x32
	bgt	MassDamageExpansion7;#0x8045064
	
	ldr	r2,=#0x8499594
	mov	r1,#0x80
	neg	r1,r1
	mov	r12,r1
	ldr	r1,=#0x84995FE
	mov	r3,r10
	ldrb	r0,[r3]
	lsl	r0,r0,#0x1
	add	r0,r0,r1
	ldrh	r0,[r0]
	add	r0,r0,r7
	lsl	r1,r0,#0x1
	add	r1,r1,r0
	lsl	r1,r1,#0x2
	ldr	r0,[r2]
	add	r4,r0,r1
	ldrb	r0,[r4]
	cmp	r0,#0x0
	beq	MassDamageExpansion8;#0x0804505e

;Hook For Terrain Specific Mass Damage
	ldr	r1,=MassDamageExpansionTerrain+1
	bx	r1
	.pool
;	ldrb	r1,[r4,#0x1]
;	mov	r0,#0x8
;	and	r0,r1
;	cmp	r0,#0x0
;	bne	MassDamageExpansion8;#0x0804505e

;	ldrb	r5,[r4,#0x4]
MassDamageExpansionTerrainReturn:	
	lsl	r6,r5,#0x19
	lsr	r2,r6,#0x19
	mov	r0,r8
	add	r0,#0x2D
	ldrb	r1,[r0]
	lsl	r0,r1,#0x2
	add	r0,r0,r1
	lsl	r3,r0,#0x1
	add	r0,r3,1
	cmp	r2,r0
	bge	MassDamageExpansion9;#0x8045024

	mov	r0,r12
	and	r0,r5
	mov	r1,#0x1
	b	MassDamageExpansion10;#0x8045030

MassDamageExpansion9:
	lsr	r1,r6,#0x19
	sub	r1,r1,r3
	mov	r0,#0x7F
	and	r1,r0
	mov	r0,r12
	and	r0,r5
MassDamageExpansion10:
	orr	r0,r1
	strb	r0,[r4,#0x4]
	mov	r0,r8
	add	r0,#0x30
;Fuel Halving	
	ldrb	r0,[r0]
	cmp	r0,#0x0
	beq	MassDamageExpansion11;#0x804504C

	ldr	r1,=CoreMassDamageCanClearCapture+1
	bx	r1	
;	ldrb	r0,[r4,#0x6]
;	lsl	r1,r0,#0x19
;	lsr	r1,r1,#0x1A
;	mov	r2,r12
;	and	r0,r2
;	orr	r0,r1
;	strb	r0,[r4,#0x6]
	pop	{r1}
MassDamageExpansion11:
	bl	#0x8022580
	ldrb	r0,[r4,#0x2]
	ldrb	r1,[r4,#0x3]
	mov	r3,r9
	ldrb	r2,[r3]
	bl	#0x80452C0
	b	MassDamageExpansion7;#0x8045064

MassDamageExpansion8:
	add	r7,#0x1
	cmp	r7,#0x32
	ble	#0x8044FD4

MassDamageExpansion7:
	add	r0,r7,1
	ldr	r1,[sp]
	strb	r0,[r1]
	lsl	r0,r0,#0x18
	lsr	r0,r0,#0x18
	cmp	r0,#0x32
	bls	MassDamageExpansionEnd;#0x804507E

	mov	r0,#0x1
	strb	r0,[r1]
	mov	r2,r10
	ldrb	r0,[r2]
	add	r0,#0x1
	strb	r0,[r2]
MassDamageExpansionEnd:
	add	sp,0x4
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r0}
	bx	r0
	.pool
;Blank Line	
