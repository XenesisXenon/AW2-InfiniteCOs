;aiactivatecopstartscopend.asm
;Activates COP at start, SCOP at end of turn

.org 0x0805C1D8
AIActivateCOPStartSCOPEnd:
	mov	r2,r0
	ldr	r0,=CurrentAIUnitPhase
	ldr	r1,[r0]
	cmp	r1,0x10
	bls	AIActivateCOPStartSCOPEndNotEndOfTurn
	cmp	r2,0x2
	bne	AIActivateCOPStartSCOPEndNotEndOfTurn
	mov	r0,0x1
	str	r0,[r1]
	b	AIActivateCOPStartSCOPEndEnd

AIActivateCOPStartSCOPEndNotEndOfTurn:	
	cmp	r1,0x1
	bhi	AIActivateCOPStartSCOPEndFalse
	cmp	r2,0x1
	bne	AIActivateCOPStartSCOPEndFalse
	mov	r0,0x1
	b	AIActivateCOPStartSCOPEndEnd
	
AIActivateCOPStartSCOPEndFalse:	
	mov	r0,0x0
AIActivateCOPStartSCOPEndEnd:	
	bx	r14
	.pool
;Blank Line	
