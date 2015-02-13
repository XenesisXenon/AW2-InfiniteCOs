;aiactivatestartofturn.asm
;AI will activate their power at the start of their turn

.org 0x0805C1C4
AIActivateStartOfTurn:
	ldr	r0,=CurrentAIUnitPhase;0x03004770
	ldr	r0,[r0]
	cmp	r0,0x1
	bls	AIActivateStartOfTurnIsStartOfTurn
	mov	r0,0x0
	b	AIActivateStartOfTurnEnd
AIActivateStartOfTurnIsStartOfTurn:	
	mov	r0,0x1
AIActivateStartOfTurnEnd:	
	bx	r14
	.pool
;Blank Line
