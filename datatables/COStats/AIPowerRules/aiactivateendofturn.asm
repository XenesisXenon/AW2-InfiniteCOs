;aiactivateendofturn.asm
;Activates COP at start, SCOP at end of turn

AIActivateEndOfTurn:
	mov	r2,r0
	ldr	r0,=CurrentAIUnitPhase
	ldr	r1,[r0]
	cmp	r1,0x10
	bls	AIActivateEndOfTurnNotEndOfTurn
	mov	r0,0x1
	str	r0,[r1]
	b	AIActivateEndOfTurnEnd
	
AIActivateEndOfTurnNotEndOfTurn:	
	mov	r0,0x0
AIActivateEndOfTurnEnd:	
	bx	r14
	.pool
;Blank Line	
