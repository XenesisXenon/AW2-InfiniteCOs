;COPower_Script_UnitCreate.asm
;Called to create a new 9HP unit
;.org 0x08045564

COPower_Scriptfunction_UnitCreate:
	push	{r4-r6,r14}
	mov	r4,r0
	mov	r1,0x2C
	ldsh	r0,[r4,r1]
	mov	r2,0x30
	ldsh	r1,[r4,r2]
	ldr	r2,[r4,0x54]
	lsl	r2,r2,0x10
	asr	r2,r2,0x10
	bl	@Long_One;0x08025CC8
	
	;ldrb	r2,[r0,0x4]	;Modification for Sensei's powers to spawn at 9HP
	;mov	r1,0x80
	;neg	r1,r1
	;and	r1,r2
	;mov	r2,0x5A
	;orr	r1,r2
	;strb	r1,[r0,0x4]
	
	;Calculates the current player
	;Determines whether to use COP or SCOP anim
	ldr	r0,[r4,0x2C]
	lsl	r0,r0,0x18
	lsr	r5,r0,0x18
	ldr	r0,[r4,0x30]
	lsl	r0,r0,0x18
	lsr	r3,r0,0x18
	mov	r6,0x0
	ldr	r0,=CurrentPlayerTurn;0x030033EC
	ldrh	r1,[r0]
	ldr	r0,=BaseUnitPointer;0x08499598
	ldr	r2,[r0]
	lsl	r0,r1,0x4
	sub	r0,r0,r1
	lsl	r0,r0,0x2
	add	r0,r0,r2
	ldrb	r0,[r0,0x1F]
	cmp	r0,0x2
	bne	@Branch_One;0x080455AE
	
	mov	r6,0x1
@Branch_One:
	mov	r0,r5
	mov	r1,r3
	mov	r2,r6
	bl	@Long_Two;0x08044B08
	
	ldr	r0,[r4,0x2C]
	add	r0,0x1
	str	r0,[r4,0x2C]
	pop	{r4-r6}
	pop	{r0}
	bx	r0
	.pool

@Long_One:
	push	{r4,r14}
	LongBL	r4,0x08025CCA+1
@Long_Two:
	LongBL	r3,0x08044B08+1	
