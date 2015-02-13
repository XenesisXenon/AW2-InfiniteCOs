;COPowerCoveringFire.asm
;Launches three missiles

CoveringFireDamage 		equ	30
CoveringFireIgnoreThreshold 	equ	10

COPowerCoveringFire:
	push	{r14}
	mov	r1,r0
	ldr	r0,=CoveringFireScript
	bl	LongBLCOPowerCoveringFire;0x0801C95C
	add	r0,0x64
	mov	r1,CoveringFireDamage	;This is the Power's Damage per missile
	strh	r1,[r0]
	pop	{r0}
	bx	r0
	.pool

LongBLCOPowerCoveringFire:
	LongBL r2,0x0801C95D
	
	.align

CoveringFireTargetingFirst:
	push	{r4,r14}
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r4,=MeteorTargetInfantryCapture
	str	r4,[r0]
	mov	r4, CoveringFireDamage
	strb	r4,[r0,0x4]
	mov	r4, CoveringFireIgnoreThreshold
	strb	r4,[r0,0x5]	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

CoveringFireTargetingSecond:
	push	{r4,r14}
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r4,=MeteorTargetHighestCost
	str	r4,[r0]	
	mov	r4, CoveringFireDamage
	strb	r4,[r0,0x4]
	mov	r4, CoveringFireIgnoreThreshold
	strb	r4,[r0,0x5]	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
	
CoveringFireTargetingThird:
	push	{r4,r14}
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r4,=MeteorTargetHighestHP
	str	r4,[r0]	
	mov	r4, CoveringFireDamage
	strb	r4,[r0,0x4]
	mov	r4, CoveringFireIgnoreThreshold
	strb	r4,[r0,0x5]	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool
;Blank Line	
