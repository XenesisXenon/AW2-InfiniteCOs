;aiactivatecopifnotsnowscopalways.asm
;Activates COP if weather isn't snow and SCOP all the time

.org 0x0805C268
AIActivateNotSnow:
	ldr	r1,=CurrentGameOptions
	mov	r0,r1
	add	r0,0x2C
	ldrb	r0,[r0]
	cmp	r0,0x1
	bne	AIActivateNotSnowTrue
	mov	r0,r1
	add	r0,0x2D
	ldrb	r0,[r0]
	sub	r0,0x2
	lsl	r0,r0,0x18
	lsr	r0,r0,0x18
	cmp	r0,0x1
	bls	AIActivateNotSnowTrue
	mov	r0,0x0
	b	AIActivateNotSnowEnd

AIActivateNotSnowTrue:	
	mov	r0,0x1
AIActivateNotSnowEnd:	
	bx	r14
	.pool
;Blank Line	
