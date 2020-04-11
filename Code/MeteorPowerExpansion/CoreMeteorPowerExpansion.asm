;CoreMeteorPowerExpansion.asm
;Adds additional targeting modes to Meteor Strike

;This enacts precisely one Meteor Targeting Type
GeneralMeteorTargetingType:	;0x080448E4
	push	{r4,r14}
	mov	r4,r0
	ldr	r0,=CurrentPlayerTurn
	ldrh	r0,[r0]
	mov	r1,0x1
	bl	CFTargetingOne;0x0805C290
	lsl	r0,r0,0x18
	lsr	r0,r0,0x18
	add	r4,0x66
	strh	r0,[r4]
	cmp	r0,0x0
	beq	GeneralMeteorTargetingTypeEnd
	ldr	r2,=0x08499594
	mov	r0,0x0
	ldsh	r1,[r4,r0]
	lsl	r0,r1,0x1
	add	r0,r0,r1
	lsl	r0,r0,0x2
	ldr	r1,[r2]
	add	r1,r1,r0
	ldrb	r0,[r1,0x2]
	ldrb	r1,[r1,0x3]
	bl	LongBLGeneralMeteorTargetingType;0x08029088
GeneralMeteorTargetingTypeEnd:	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
LongBLGeneralMeteorTargetingType:
	LongBL r2, 0x08029088+1
	.pool
	
	
CFTargetingOne:	;Mimic of 0x0805c290
	push	{r4-r6,r14}
	lsl	r0,r0,0x10
	lsr	r4,r0,0x10
	lsl	r1,r1,0x18
	lsr	r5,r1,0x18
	mov	r6,0x0
	mov	r0,r4
	mov	r1,r5
	bl	CustomMeteorTargeting
	lsl	r0,r0,0x18
	lsr	r6,r0,0x18
	mov	r0,r6
	pop	{r4-r6}
	pop	{r1}
	bx	r1

CustomMeteorTargeting: ;mod of 0x0805C514
;This sets the targeting to the highest concentration of HP
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x28
	lsl	r0,r0,#0x10
	lsr	r0,r0,#0x10
	str	r0,[sp]
	lsl	r1,r1,#0x18
	lsr	r1,r1,#0x18
	str	r1,[sp,#0x4]
	mov	r0,#0x0
	str	r0,[sp,#0xC]
	mov	r1,#0x0
	str	r1,[sp,#0x14]
	mov	r2,#0x0
CustomMeteorTargeting13:
	ldr	r0,=#0x8499598
	ldr	r1,[r0]
	ldr	r3,[sp]
	lsl	r0,r3,#0x4
	sub	r0,r0,r3
	lsl	r0,r0,#0x2
	add	r0,r0,r1
	add	r0,#0x2C
	ldrb	r1,[r0]
	asr	r1,r2
	mov	r0,#0x1
	and	r1,r0
	add	r4,r2,1
	str	r4,[sp,#0x1C]
	cmp	r1,#0x0
	bne	CustomMeteorTargeting1;#0x805C558
	b	CustomMeteorTargeting2
	
CustomMeteorTargeting1:
	lsl	r7,r2,#0x6
	mov	r0,r7
	add	r0,#0x40
	str	r7,[sp,#0x24]
	cmp	r7,r0
	blt	CustomMeteorTargeting3
	b	CustomMeteorTargeting2

CustomMeteorTargeting3:	
	ldr	r1,=#0x8499594
	lsl	r0,r7,#0x1
	add	r0,r0,r7
	lsl	r0,r0,#0x2
	ldr	r1,[r1]
	add	r4,r1,r0
	ldrb	r0,[r4]
	add	r1,r7,1
	str	r1,[sp,#0x18]
	cmp	r0,#0x0
	bne	CustomMeteorTargeting4
	b	CustomMeteorTargeting14;#0x805C6F0

CustomMeteorTargeting4:	
	mov	r2,#0x0
	str	r2,[sp,#0x10]
	mov	r0,#0xFF
	bl	LongBLCustomMeteorTargeting3;#0x801F838 ;r2

	ldrb	r0,[r4,#0x2]
	ldrb	r1,[r4,#0x3]
	mov	r2,#0x2
	mov	r3,#0x0
	bl	LongBLCustomMeteorTargeting2;#0x801F9C0	;Painful

	mov	r3,#0x0
	str	r3,[sp,#0x8]
	ldr	r4,=#0x8499590
	ldr	r0,[r4]
	ldr	r1,[sp,#0x10]
	ldrh	r0,[r0,#0x2]
	cmp	r1,r0
	blt	CustomMeteorTargeting5
	b	CustomMeteorTargeting11

CustomMeteorTargeting5:
	mov	r6,#0x0
	ldr	r2,=#0x816D9DC
	ldr	r3,=#0x8499590
	ldr	r0,[r3]
	ldr	r4,[sp,#0x8]
	add	r4,#0x1
	str	r4,[sp,#0x20]
	b	CustomMeteorTargeting6;#0x805C6C8
	.pool

CustomMeteorTargeting10:	
	ldr	r1,=#0x3003340
	ldr	r3,[sp,#0x8]
	lsl	r0,r3,#0x2
	add	r0,r0,r1
	ldr	r0,[r0]
	add	r0,r0,r6
	ldrb	r0,[r0]
	lsl	r0,r0,#0x18
	asr	r0,r0,#0x18
	cmp	r0,#0x0
	blt	CustomMeteorTargetingLoop

	ldr	r2,[r2]
	mov	r10,r2
	ldr	r1,[r2]
	lsl	r5,r3,#0x1
	ldr	r4,=#0x417A
	mov	r9,r4
	add	r0,r1,r4
	add	r0,r0,r5
	ldrh	r0,[r0]
	add	r0,r0,r6
	ldr	r2,=#0x51A
	mov	r8,r2
	add	r1,r8
	add	r1,r1,r0
	ldrb	r0,[r1]
	cmp	r0,#0x0
	beq	CustomMeteorTargetingLoop

	ldr	r3,[sp,#0x4]
	cmp	r3,#0x0
	beq	CustomMeteorTargeting15;#0x805C620
	ldr	r4,[sp]
	lsl	r0,r4,#0x18
	lsl	r1,r6,#0x18
	lsr	r1,r1,#0x18
	ldr	r3,[sp,#0x8]
	lsl	r2,r3,#0x18
	lsr	r0,r0,#0x18
	lsr	r2,r2,#0x18
	bl	LongBLCustomMeteorTargeting;#0x8020DBC	;Painful

	lsl	r0,r0,#0x18
	cmp	r0,#0x0
	beq	CustomMeteorTargetingLoop
	
CustomMeteorTargeting15:
	mov	r4,r10
	ldr	r2,[r4]
	mov	r1,r9
	add	r0,r2,r1
	add	r0,r0,r5
	ldrh	r0,[r0]
	add	r3,r0,r6
	mov	r4,r8
	add	r0,r2,r4
	add	r0,r0,r3
	ldrb	r1,[r0]
	lsl	r0,r1,#0x1
	add	r0,r0,r1
	lsl	r0,r0,#0x2
	ldr	r4,=#0x8499594
	ldr	r1,[r4]
	add	r4,r1,r0
	ldrb	r0,[r4]
	cmp	r0,#0x18
	bne	CustomMeteorTargetingMinHPCheck;#0x805C664

	ldrb	r1,[r4,#0x1]
	mov	r0,#0x20
	and	r0,r1
	cmp	r0,#0x0
	bne	CustomMeteorTargetingLoop

	mov	r0,r2
	add	r0,#0x12
	add	r0,r0,r3
	ldrb	r0,[r0]
	bl	LongBLCustomMeteorTargeting4;#0x80257C0	;r2

	lsl	r0,r0,#0x18
	cmp	r0,#0x0
	beq	CustomMeteorTargetingLoop
	
CustomMeteorTargetingMinHPCheck:
	;This is the Min HP Check
	ldrb	r0,[r4,#0x4]
	lsl	r0,r0,#0x19
	lsr	r0,r0,#0x19
	ldr	r1,=CustomMeteorBuffer;0x0201FD84
	ldrb	r1,[r1,0x5]
	cmp	r0,r1
	bls	CustomMeteorTargetingLoop

	mov	r0,r10
	ldr	r1,[r0]
	mov	r2,r9
	add	r0,r1,r2
	add	r0,r0,r5
	ldrh	r0,[r0]
	add	r0,r0,r6
	add	r1,r8
	add	r1,r1,r0
	ldrb	r1,[r1]
	lsr	r1,r1,#0x6
	add	r1,#0x1
	ldr	r0,[sp]
	bl	LongBLCustomMeteorTargetingTeamCompare;#0x8026F28	;r2

	lsl	r0,r0,#0x18
	lsr	r0,r0,#0x18
	cmp	r0,#0x1
	bne	CustomMeteorTargetingIsEnemyUnit;#0x805C6B4

;Gathers the HP and adds it to the pool	
	ldrb	r0,[r4,#0x4]
	lsl	r0,r0,#0x19
	lsr	r0,r0,#0x19
	ldr	r3,[sp,#0x10]
	sub	r3,r3,r0
	str	r3,[sp,#0x10]
	b	CustomMeteorTargetingLoop
	.pool

CustomMeteorTargetingIsEnemyUnit:	
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r0,[r0]
	cmp	r0,0x0
	beq	CustomMeteorTargetingLoop
	add	r0,0x1
	
	bl	CustomMeteorTargetingCalculation

	ldr	r4,[sp,#0x10]
	add	r4,r4,r0
	str	r4,[sp,#0x10]
	
CustomMeteorTargetingLoop:	
	add	r6,#0x1
	ldr	r2,=#0x816D9DC
	ldr	r1,=#0x8499590
	ldr	r0,[r1]
	
CustomMeteorTargeting6:
	ldrh	r0,[r0]
	cmp	r6,r0
	bge	CustomMeteorTargeting9;#0x805C6D0
	b	CustomMeteorTargeting10;#0x805C5C8

CustomMeteorTargeting9:	
	ldr	r2,[sp,#0x20]
	str	r2,[sp,#0x8]
	ldr	r3,=#0x8499590
	ldr	r0,[r3]
	ldrh	r0,[r0,#0x2]
	cmp	r2,r0
	bge	CustomMeteorTargeting11;#0x805C6E0
	b	CustomMeteorTargeting5

CustomMeteorTargeting11:	
	ldr	r4,[sp,#0x10]
	ldr	r0,[sp,#0xC]
	cmp	r4,r0
	ble	CustomMeteorTargeting14;#0x805C6F0

	lsl	r0,r7,#0x18
	lsr	r0,r0,#0x18
	str	r0,[sp,#0x14]
	str	r4,[sp,#0xC]
CustomMeteorTargeting14:		;#0x0805C6F0 
	ldr	r7,[sp,#0x18]
	ldr	r0,[sp,#0x24]
	add	r0,#0x40
	cmp	r7,r0
	bge	CustomMeteorTargeting2
	b	CustomMeteorTargeting3

CustomMeteorTargeting2:	;#0x805C6FC
	ldr	r2,[sp,#0x1C]
	cmp	r2,#0x3
	bgt	CustomMeteorTargeting12;#0x805C704
	b	CustomMeteorTargeting13;#0x805C536

CustomMeteorTargeting12:	
	ldr	r0,[sp,#0x14]
	add	sp,#0x28
	pop	{r3-r5}
	mov	r8,r3
	mov	r9,r4
	mov	r10,r5
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool
	
LongBLCustomMeteorTargeting:
	push	{r4-r7,r14}
	LongBL r7,0x8020DBC+3
	.pool
	
LongBLCustomMeteorTargeting2:
	push	{r4-r7,r14}
	LongBL r7,0x801F9C0+3
	.pool	
	
LongBLCustomMeteorTargeting3:
	LongBL r2,0x801F838+1
	.pool	
	
LongBLCustomMeteorTargeting4:
	LongBL r2,0x80257C0+1
	.pool	

LongBLCustomMeteorTargetingTeamCompare:
	LongBL r2,0x8026F28+1
	.pool	

CustomMeteorTargetingCalculation:
	bx	r0
;Blank Line
