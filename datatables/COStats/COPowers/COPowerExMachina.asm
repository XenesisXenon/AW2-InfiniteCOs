;COPowerCoveringFire.asm
;Launches three missiles

ExmachinaDamage 		equ	31
ExmachinaIgnoreThreshold 	equ	10

COPowerExMachina:
	push	{r14}
	mov	r1,r0
	ldr	r0,=ExMachinaScript
	bl	LongBLCOPowerExMachina;0x0801C95C
	add	r0,0x64
	mov	r1,ExmachinaDamage	;This is the Power's Damage per missile
	strh	r1,[r0]
	pop	{r0}
	bx	r0
	.pool

LongBLCOPowerExMachina:
	LongBL r2,0x0801C95D
	
	.align

ExMachinaTargeting:
	push	{r4,r14}
	bl	LongBLRNGFunction
	lsr	r0,r0,0x10
	mov	r4,0x1
	and	r0,r4
	cmp	r0,0x0
	beq	ExMachinaTargetingCost
	
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r4,=MeteorTargetHighestHP
	b	ExMachinaTargetingFinish
	
ExMachinaTargetingCost:	
	ldr	r0,=CustomMeteorBuffer;0x0201FD84
	ldr	r4,=MeteorTargetHighestCost
	
ExMachinaTargetingFinish:	
	str	r4,[r0]
	mov	r4, ExmachinaDamage
	strb	r4,[r0,0x4]
	mov	r4, ExmachinaIgnoreThreshold
	strb	r4,[r0,0x5]	
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool


;Blank Line	
