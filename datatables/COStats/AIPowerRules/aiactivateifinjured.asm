;aiactivateifinjured.asm
;Activates the CO Power if the AI has injured units

.org 0x0805C208
AIActivateIfInjured:
	push	{r4,r14}
	mov	r4,0x0
	ldr	r0,=CurrentAIUnitPhase
	ldr	r0,[r0]
	cmp	r0,0x1
	bhi	AIActivateIfInjuredIsFalse ;IfFalse
	
	ldr	r0,=0x03003F2C
	ldrh	r0,[r0]
	add	r2,r0,1
	mov	r3,r0
	add	r3,0x40
	cmp	r2,r3
	bge	AIActivateIfInjuredIsTrue;0x0805C24A
	
	ldr	r1,[r0]
	lsl	r0,r2,0x1
	add	r0,r0,r2
	lsl	r0,r0,0x2
	add	r1,r0,r1
	sub	r2,r3,r2
	ldrb	r0,[r1]
	cmp	r0,0x0
	beq	AIActivateIfInjuredUnitFull
	
AIActivateIfInjuredLoop:	
	ldrb	r0,[r1,0x4]
	lsl	r0,r0,0x19
	lsr	r0,r0,0x19
	cmp	r0,0x5A
	bhi	AIActivateIfInjuredUnitFull
	
	add	r4,0x1
AIActivateIfInjuredUnitFull:	
	add	r1,0xC
	sub	r2,0x1
	cmp	r2,0x0
	bne	AIActivateIfInjuredLoop
	
AIActivateIfInjuredIsTrue:	
	cmp	r4,0x0
	beq	AIActivateIfInjuredIsFalse
	
	mov	r0,0x1
	b	AIActivateIfInjuredEnd
	.pool

AIActivateIfInjuredIsFalse:	
	mov	r0,0x0
AIActivateIfInjuredEnd:	
	pop	{r4}
	pop	{r1}
	bx	r1
	
	
;Blank Line	
