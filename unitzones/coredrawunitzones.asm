;coredrawunitzones.asm

ZoneIconTopLeft	equ	0x0348

.macro SaveZoneTiles
	ldr	r3,=ZoneIconTopLeft
	mov	r4,r10
	add	r3,r3,r4
	strh	r3,[r2]
	add	r3,0x1
	mov	r4,0x2
	strh	r3,[r2,r4]
	add	r3,0x1
	mov	r4,0x40
	strh	r3,[r2,r4]
	add	r3,0x1
	mov	r4,0x42
	strh	r3,[r2,r4]
.endmacro	

BG2BlankTest:
	push	{r0-r3}
	ldr	r0,=TileBG2Buffer
	mov	r1,0x0
	ldr	r2,=0x360
	ldr	r3,=0x800
BG2BlankTestLoop:	
	strh	r2,[r0,r1]
	add	r1,0x2
	cmp	r1,r3
	blt	BG2BlankTestLoop
	pop	{r0-r3}

	mov	r5,0x0
	ldr	r7,=0x080909b0
	bx	r14	
	
	.pool


	
UnitZoneCalculation:
	push	{r14}
;Options Check	
	ldr	r1,=CurrentGameOptions
	ldrb	r1,[r1,0x9]
	cmp	r1,0x0
	beq	UnitZoneCalculationNoZone
	cmp	r1,0x2
	bgt	UnitZoneCalculationNoZone
	
	ldrb	r1,[r0]
	ldr	r2,=TabltUnitZoneDraw
	add	r1,r1,r2
	ldrb	r1,[r1]
	cmp	r1,0x0
	beq	UnitZoneCalculationNoZone
;Calculates the RAM Pointer
	ldr	r2,=BaseMapPointer
	ldr	r2,[r2]
	ldrh	r3,[r2,0xC]
	ldrb	r4,[r0,0x2]
	sub	r4,r4,r3
	mov	r3,0xF
	and	r4,r3
	mov	r8,r4

	ldrh	r3,[r2,0xE]
	ldrb	r4,[r0,0x3]
	sub	r4,r4,r3
	mov	r3,0xF
	and	r4,r3
	mov	r9,r4
	
;Calculates the Team ID for colouring
	ldrh	r3,[r2]
	ldrb	r4,[r0,0x3]
	mul	r3,r4
	ldrb	r4,[r0,0x2]
	add	r3,r3,r4
	add	r2,0x12
	add	r2,r2,r3
	ldrb	r4,[r2]
	
	cmp	r4,0xC0
	blt	UnitZoneCalculationNotPlayer4
	mov	r4,0x4
	add	r4,0xB
	lsl	r4,r4,0xC	
	mov	r10,r4
	b	UnitZoneCalculationSizeOne_ZeroZero
	
UnitZoneCalculationNotPlayer4:	
	cmp	r4,0x80
	blt	UnitZoneCalculationNotPlayer3
	mov	r4,0x3
	add	r4,0xB
	lsl	r4,r4,0xC
	mov	r10,r4
	b	UnitZoneCalculationSizeOne_ZeroZero		
	
UnitZoneCalculationNotPlayer3:	
	cmp	r4,0x40
	blt	UnitZoneCalculationNotPlayer2
	mov	r4,0x2
	add	r4,0xB
	lsl	r4,r4,0xC	
	mov	r10,r4
	b	UnitZoneCalculationSizeOne_ZeroZero
	
UnitZoneCalculationNotPlayer2:	
	mov	r4,0x1
	add	r4,0xB
	lsl	r4,r4,0xC	
	mov	r10,r4
	b	UnitZoneCalculationSizeOne_ZeroZero
	
UnitZoneCalculationNoZone:
	pop	r0
	bx	r0
;Base BG2 Ram in R2
;Unit Pointer in R0
;Zone Size in R1
;X and Y in r8 and r9, respectively
	
UnitZoneCalculationSizeOne_ZeroZero:
;0,0
;Don't Draw Directly on top of Unit
;1,0
UnitZoneCalculationSizeOne_OneZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x1
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeOne_MinusOneZero
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-1,0	
UnitZoneCalculationSizeOne_MinusOneZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeOne_ZeroOne
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles	

;0,1	
UnitZoneCalculationSizeOne_ZeroOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x1
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeOne_ZeroMinusOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;0,-1	
UnitZoneCalculationSizeOne_ZeroMinusOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationsSizeTwoCheck	
	lsl	r3,r3,0x7
	add	r2,r2,r3	
	
	SaveZoneTiles

;Check if we've finished drawing the Zone
UnitZoneCalculationsSizeTwoCheck:
	cmp	r1,0x1
	bne	UnitZoneCalculationSizeTwo_TwoZero
	pop	r0
	bx	r0
	.pool
	
;Zone Size 2 Tiles
;2,0
UnitZoneCalculationSizeTwo_TwoZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x2
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeTwo_MinusTwoZero
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-2,0	
UnitZoneCalculationSizeTwo_MinusTwoZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeTwo_ZeroTwo
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles	

;0,2	
UnitZoneCalculationSizeTwo_ZeroTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x2
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeTwo_ZeroMinusTwo	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;0,-2	
UnitZoneCalculationSizeTwo_ZeroMinusTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeTwo_OneOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3	
	
	SaveZoneTiles

;1,1
UnitZoneCalculationSizeTwo_OneOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x1
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeTwo_MinusOneMinusOne
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x1
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeTwo_MinusOneMinusOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-1,-1
UnitZoneCalculationSizeTwo_MinusOneMinusOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeTwo_OneMinusOne
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeTwo_OneMinusOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;1,-1
UnitZoneCalculationSizeTwo_OneMinusOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x1
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeTwo_MinusOneOne
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeTwo_MinusOneOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;-1,1
UnitZoneCalculationSizeTwo_MinusOneOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationsSizeThreeCheck
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	add	r3,0x1
	cmp	r3,0xA
	bgt	UnitZoneCalculationsSizeThreeCheck	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles
	
;Check if we've finished drawing the Zone
UnitZoneCalculationsSizeThreeCheck:
	cmp	r1,0x3
	beq	UnitZoneCalculationSizeThree_ThreeZero
	pop	r0
	bx	r0
	.pool	

;Zone Size 3 Tiles
;3,0
UnitZoneCalculationSizeThree_ThreeZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x3
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeThree_MinusThreeZero
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-3,0	
UnitZoneCalculationSizeThree_MinusThreeZero:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x3
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_ZeroThree
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles	

;0,3	
UnitZoneCalculationSizeThree_ZeroThree:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x3
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeThree_ZeroMinusThree	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;0,-3	
UnitZoneCalculationSizeThree_ZeroMinusThree:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	sub	r3,0x3
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_TwoOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3	
	
	SaveZoneTiles

;2,1
UnitZoneCalculationSizeThree_TwoOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x2
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeThree_OneTwo
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x1
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeThree_OneTwo	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;1,2
UnitZoneCalculationSizeThree_OneTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x1
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeThree_MinusTwoMinusOne
	lsl	r3,r3,0x2
	add	r2,r2,r3
	
	mov	r3,r9
	add	r3,0x2
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeThree_MinusTwoMinusOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-2,-1
UnitZoneCalculationSizeThree_MinusTwoMinusOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_MinusOneMinusTwo
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_MinusOneMinusTwo	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;-1,-2
UnitZoneCalculationSizeThree_MinusOneMinusTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_TwoMinusOne
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_TwoMinusOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;2,-1
UnitZoneCalculationSizeThree_TwoMinusOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x2
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeThree_OneMinusTwo
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_OneMinusTwo	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;1,-2
UnitZoneCalculationSizeThree_OneMinusTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	add	r3,0x1
	cmp	r3,0xF
	bgt	UnitZoneCalculationSizeThree_MinusTwoOne
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_MinusTwoOne	
	lsl	r3,r3,0x7
	add	r2,r2,r3

	SaveZoneTiles

;-2,1
UnitZoneCalculationSizeThree_MinusTwoOne:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x2
	cmp	r3,0x0
	blt	UnitZoneCalculationSizeThree_MinusOneTwo
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	add	r3,0x1
	cmp	r3,0xA
	bgt	UnitZoneCalculationSizeThree_MinusOneTwo	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles

;-1,2
UnitZoneCalculationSizeThree_MinusOneTwo:
	ldr	r2,=TileBG2Buffer
	mov	r3,r8
	sub	r3,0x1
	cmp	r3,0x0
	blt	UnitZoneCalculationEnd
	lsl	r3,r3,0x2
	add	r2,r2,r3

	mov	r3,r9
	add	r3,0x2
	cmp	r3,0xA
	bgt	UnitZoneCalculationEnd	
	lsl	r3,r3,0x7
	add	r2,r2,r3
	
	SaveZoneTiles
	
UnitZoneCalculationEnd:
	pop	r0
	bx	r0
	.pool

LongBLDrawUnitSprites:
	push	{r4-r7,r14}
	mov	r7,r10
	mov	r6,r9
	mov	r5,r8
	push	{r5-r7}
	add	sp,-0x14
;	mov	r7,r0
	ldr	r7,=0x08022178+1
	bx	r7
	.pool
	
TabltUnitZoneDraw:
	.db	0
;Inf	
	.db	0,0,0,0,0,0,0,0,0,0
	.db	0,0,0,0,MissileDefenceZoneSize,0,0,0,0,DropshipDefenceZoneSize
	.db	0,0,0,0	
