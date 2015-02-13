;coreunitzones.asm

.align
;DropShip Defence Zone
;Generates the Defensive Zone Effect for Dropships
;Improves defence for units adjacent to dropships
DropshipDefenceZoneSize equ 1

UnitZoneDefenceDropship:
	push	{r4-r6,r14}
	mov	r5,r1
	mov	r6,r3
	
	mov	r0,0x14
	mov	r1,r5
	mov	r2,DropshipDefenceZoneSize
	mov	r3,r6
	bl	UnitCountingDistanceFunction
	cmp	r0,0x0
	beq	UnitZoneDefenceDropshipFalse
	mov	r4,r0
	mov	r0,20
	mul	r0,r4
	b	UnitZoneDefenceDropshipEnd
UnitZoneDefenceDropshipFalse:
	mov	r0,0x0
UnitZoneDefenceDropshipEnd:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool		

;Missile Unit Zone
;Generates the Defensive Zone Effect for Missiles.
;Improved defence against Air attacks by number of air opponents
MissileDefenceZoneSize equ 2

UnitZoneDefenceMissile:
	push	{r4-r6,r14}
	mov	r5,r1
	mov	r6,r3
	;Missiles
	;First Check if Opposing unit is Air Unit
	ldr	r0,[sp,0x4]
	ldr	r1,=0x030013D0
	cmp	r0,r1
	bne	UnitZoneDefenceMissileSwap
	sub	r0,0x20
	b	UnitZoneDefenceMissileSwapDone
UnitZoneDefenceMissileSwap:
	mov	r0,r1
UnitZoneDefenceMissileSwapDone:	
	ldr	r0,[r0]
	ldrb	r0,[r0]
	cmp	r0,0x10
	blt	UnitZoneDefenceMissileFalse
	cmp	r0,0x13
	bgt	UnitZoneDefenceMissileFalse
	
	mov	r0,0xF
	mov	r1,r5
	mov	r2,MissileDefenceZoneSize
	mov	r3,r6
	bl	UnitCountingDistanceFunction
	cmp	r0,0x0
	beq	UnitZoneDefenceMissileEnd
	mov	r4,r0
	push	{r4}
	mov	r4,0x0
	
	;Player Alive Check
	ldr	r0,=BasePlayerMemory
	ldrb	r1,[r0,0x1B]
	cmp	r1,0x0
	beq	UnitZoneDefenceMissileArmy2
	ldrb	r1,[r0,0x14]
	cmp	r1,0x1
	beq	UnitZoneDefenceMissileArmy2
	
	mov	r0,0x10
	mov	r1,0x14
	mov	r2,0x1
	cmp	r2,r6
	beq	UnitZoneDefenceMissileArmy2
	bl	UnitRangeCountingTotalFunction
	add	r4,r0,r4
UnitZoneDefenceMissileArmy2:
	;Player Alive Check
	ldr	r0,=BasePlayerMemory+(0x3C)
	ldrb	r1,[r0,0x1B]
	cmp	r1,0x0
	beq	UnitZoneDefenceMissileArmy3
	ldrb	r1,[r0,0x14]
	cmp	r1,0x1
	beq	UnitZoneDefenceMissileArmy3
	mov	r0,0x10
	mov	r1,0x14
	mov	r2,0x2
	cmp	r2,r6
	beq	UnitZoneDefenceMissileArmy3
	bl	UnitRangeCountingTotalFunction
	add	r4,r0,r4
UnitZoneDefenceMissileArmy3:
	;Player Alive Check
	ldr	r0,=BasePlayerMemory+(0x3C*2)
	ldrb	r1,[r0,0x1B]
	cmp	r1,0x0
	beq	UnitZoneDefenceMissileArmy4
	ldrb	r1,[r0,0x14]
	cmp	r1,0x1
	beq	UnitZoneDefenceMissileArmy4
	
	mov	r0,0x10
	mov	r1,0x14
	mov	r2,0x3
	cmp	r2,r6
	beq	UnitZoneDefenceMissileArmy4
	bl	UnitRangeCountingTotalFunction
	add	r4,r0,r4
UnitZoneDefenceMissileArmy4:
	;Player Alive Check
	ldr	r0,=BasePlayerMemory+(0x3C*3)
	ldrb	r1,[r0,0x1B]
	cmp	r1,0x0
	beq	UnitZoneDefenceMissileArmy5
	ldrb	r1,[r0,0x14]
	cmp	r1,0x1
	beq	UnitZoneDefenceMissileArmy5
	
	mov	r0,0x10
	mov	r1,0x14
	mov	r2,0x4
	cmp	r2,r6
	beq	UnitZoneDefenceMissileArmy5
	bl	UnitRangeCountingTotalFunction
	add	r4,r0,r4
UnitZoneDefenceMissileArmy5:
	mov	r0,r4
	pop	{r4}
	mul	r0,r4
	mov	r4,0x5
	mul	r0,r4
	b	UnitZoneDefenceMissileEnd
UnitZoneDefenceMissileFalse:
	mov	r0,0x0
UnitZoneDefenceMissileEnd:	
	pop	{r4-r6}
	pop	{r1}
	bx	r1
	.pool

;Counts how many units are at x distance from the unit
;Input:
;r0 = Unit ID
;r1 = Unit Pointer
;r2 = Distance
;r3 = Player ID
UnitCountingDistanceFunction:
	push	{r4-r7,r14}
	add	sp,-0x4
	str	r2,[sp]
	;Setup - Unit tally in r4, Total Count in r5
	;Unit offset in r3, x and y in r6/7
	;UID in r0
	;Distance in sp
	mov	r4,0x0
	mov	r5,0x0
	ldrb	r6,[r1,0x2]
	ldrb	r7,[r1,0x3]
	mov	r1,0xC0
	lsl	r1,r1,0x2
	mul	r1,r3
	ldr	r3,=BaseUnitOffset
	add	r3,r1,r3
UnitCountingDistanceFunctionLoop:
	ldrb	r1,[r3]
	cmp	r1,0x0
	beq	UnitCountingDistanceFunctionEndLoopIteration
	ldrb	r1,[r3,0x1]
	lsl	r1,r1,28
	lsr	r1,r1,31
	cmp	r1,0x0
	bne	UnitCountingDistanceFunctionEndLoopIteration
	cmp	r0,0xFF
	beq	UnitCountingDistanceFunctionAnyUnit
	ldrb	r1,[r3]
	cmp	r0,r1
	bne	UnitCountingDistanceFunctionEndLoopIteration
UnitCountingDistanceFunctionAnyUnit:	
	ldrb	r1,[r3,0x2]
	sub	r1,r1,r6
	ldrb	r2,[r3,0x3]
	sub	r2,r2,r7
	cmp	r1,0x0
	bgt	UnitCountingDistanceFunctionPositiveX
	neg	r1,r1
UnitCountingDistanceFunctionPositiveX:
	cmp	r2,0x0
	bgt	UnitCountingDistanceFunctionPositiveY
	neg	r2,r2
UnitCountingDistanceFunctionPositiveY:
	add	r1,r1,r2
	ldr	r2,[sp]
	cmp	r1,r2
	bgt	UnitCountingDistanceFunctionEndLoopIteration
	cmp	r1,0x0
	beq	UnitCountingDistanceFunctionEndLoopIteration
	add	r4,0x1	
UnitCountingDistanceFunctionEndLoopIteration:	
	add	r5,0x1
	add	r3,0xC
	cmp	r5,0x33
	blt	UnitCountingDistanceFunctionLoop
	mov	r0,r4
	add	sp,0x4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool	
	

;Counts how many units in a range
;Input of Unit ID low in r0
;Unit ID High in r1
;Player ID in r2
UnitRangeCountingTotalFunction:
	push	{r4-r7,r14}	
	mov	r4,0x0
	mov	r5,0x0
	mov	r3,0xC0
	lsl	r3,r3,0x2
	mul	r2,r3
	ldr	r3,=BaseUnitOffset
	add	r3,r2,r3
UnitRangeCountingTotalFunctionLoop:
	ldrb	r2,[r3]
	cmp	r2,0x0
	beq	UnitRangeCountingTotalFunctionEndLoopIteration
	cmp	r2,r0
	blt	UnitRangeCountingTotalFunctionEndLoopIteration
	cmp	r2,r1
	bgt	UnitRangeCountingTotalFunctionEndLoopIteration
	add	r4,0x1	
UnitRangeCountingTotalFunctionEndLoopIteration:	
	add	r5,0x1
	add	r3,0xC
	cmp	r5,0x33
	blt	UnitRangeCountingTotalFunctionLoop
	mov	r0,r4
	pop	{r4-r7}
	pop	{r1}
	bx	r1
	.pool		

;Blank Line
