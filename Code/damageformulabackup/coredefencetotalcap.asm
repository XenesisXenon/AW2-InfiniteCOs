;coredefencetotalcap.asm
;Caps Defence so it maxes out at 200.

;Caps Defence
DefenceTotalCap:
	mov	r2,0xE
	ldsh	r0,[r6,r2]
	sub	r0,r7,r0
	cmp	r0,0x0
	bge	DefenceTotalCapCalculation
	mov	r0,0x0				;Nulls defence value if it is negative
DefenceTotalCapCalculation:	
	mov	r2,0xC
	ldsh	r1,[r4,r2]
	mul	r0,r1
	ldr	r1,=0x08024E3C+1
	bx	r1
	.pool
	
;Caps Display Defence	
DispDefenceTotalCap:
;Add Code here to support Maximum Defence Display
	mov	r1,0xE
	ldsh	r0,[r6,r1]
	mov	r7,200
	sub	r0,r7,r0
	cmp	r0,0x0
	bge	DispDefenceTotalCapCalculation2
	mov	r0,0x0
DispDefenceTotalCapCalculation2:	;+Luck Calculation
	mov	r2,0x16
	ldsh	r1,[r4,r2]
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	strh	r0,[r4,0x16]
	mov	r1,0x16
	ldsh	r0,[r4,r1]
	mul	r0,r5
	mov	r1,10
	bl	DivisionFunction
	strh	r0,[r4,0x16]

	mov	r1,0xE
	ldsh	r0,[r6,r1]
	mov	r7,200
	sub	r0,r7,r0
	cmp	r0,0x0
	bge	DispDefenceTotalCapCalculation3
	mov	r0,0x0
DispDefenceTotalCapCalculation3:	;-Luck Calculation
	mov	r2,0x10
	ldsh	r1,[r4,r2]
	mul	r0,r1
	mov	r1,100
	bl	DivisionFunction
	strh	r0,[r4,0x10]
	mov	r1,0x10
	ldsh	r0,[r4,r1]
	mul	r0,r5
	mov	r1,10
	bl	DivisionFunction
	strh	r0,[r4,0x10]
	
;Original Defence Capping Code	
	mov	r1,0xE
	ldsh	r0,[r6,r1]
	mov	r7,200
	sub	r0,r7,r0
	cmp	r0,0x0
	bge	DispDefenceTotalCapCalculation
	mov	r0,0x0
DispDefenceTotalCapCalculation:	
	mov	r2,0x14
	ldsh	r1,[r4,r2]
	mul	r0,r1
	ldr	r1,=0x08024E0E+1
	bx	r1
	.pool


	
